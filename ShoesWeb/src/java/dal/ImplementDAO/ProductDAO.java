/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.InterfaceDAO.IProductDAO;
import dal.MappingDAO.ProductMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends GenericDAO<Product> implements IProductDAO {

    @Override
    public List<Product> queryAllProduct() {
        String sql = "select * from product_variant inner join product on product.product_id = product_variant.product_id\n"
                + "							  inner join brand on brand.brand_id = product.brand_id\n"
                + "							  inner join color on color.color_id = product_variant.color_id";
        List<Product> productList = query(sql, new ProductMapping());
        for (Product p : productList) {
            List<String> categoryList = queryProductCategories(p.getProductId());
            p.setCategories(categoryList);
            p.setImageUrls(queryImageUrls(p.getProductVariantCode()));
            p.setSizeQuantityMap(querySizeAndQuantity(p.getProductVariantCode()));
        }
        return productList;
    }

    @Override
    public List<Product> queryProductsByCategories(HashMap<String, List<String>> filterMap) {
        List<String> brands = filterMap.get("brand");
        List<String> sports = filterMap.get("sport");
        List<String> colors = filterMap.get("color");
        List<String> sizes = filterMap.get("size");
        List<String> min_price = filterMap.get("min_price");
        List<String> max_price = filterMap.get("max_price");
        List<String> gender = filterMap.get("gender");
        List<String> params = new ArrayList<>();
        StringBuilder sql
                = new StringBuilder("SELECT DISTINCT p.name,p.description, pv.* , b.brand_name , c.color");
        sql.append(" FROM product p");
        sql.append(" JOIN brand b ON p.brand_id = b.brand_id");
        sql.append(" JOIN product_variant pv ON p.product_id = pv.product_id");
        sql.append(" JOIN color c ON pv.color_id = c.color_id");
        sql.append(" JOIN product_variant_size_stock pvss ON pv.product_variant_code = pvss.product_variant_code");
        sql.append(" JOIN sizes s ON pvss.size_id = s.size_id");
        sql.append(" JOIN product_category pc ON p.product_id = pc.product_id");
        sql.append(" JOIN category cat ON pc.category_id = cat.category_id WHERE 1 = 1");
        if (brands != null && !brands.isEmpty()) {
            sql.append(" AND b.brand_name IN (");
            for (int i = 0; i < brands.size(); i++) {
                if (i < brands.size() - 1) {
                    sql.append("?,");
                } else {
                    sql.append("?)");
                }
                params.add(brands.get(i));
            }

        }
        if (colors != null && !colors.isEmpty()) {
            sql.append(" AND c.color IN (");
            for (int i = 0; i < colors.size(); i++) {
                if (i < colors.size() - 1) {
                    sql.append("?,");
                } else {
                    sql.append("?)");
                }
                params.add(colors.get(i));
            }
        }
        if (sports != null && !sports.isEmpty()) {
            sql.append(" AND cat.category_value IN (");
            for (int i = 0; i < sports.size(); i++) {
                sql.append("?,");
                params.add(sports.get(i));
            }
            sql.append("?)");
        } else {
            sql.append(" AND cat.category_value IN ( ? )");
        }
        params.add(gender.get(0));
        if (sizes != null && !sizes.isEmpty()) {
            sql.append(" AND s.size IN (");
            for (int i = 0; i < sizes.size(); i++) {
                if (i < sizes.size() - 1) {
                    sql.append("?,");
                } else {
                    sql.append("?)");
                }
                params.add(sizes.get(i));
            }
        }

        params.add(min_price.get(0));
        params.add(max_price.get(0));

        sql.append(" AND pv.price BETWEEN ? AND ?");
        for (int i = 0; i < params.size(); i++) {
            System.out.print(params.get(i) + "  ");

        }
        System.out.println();
        System.out.println(sql);
        List<Product> productList = query(sql.toString(), new ProductMapping(), params.toArray((String[]) new String[params.size()]));
        for (Product p : productList) {
            List<String> categoryList = queryProductCategories(p.getProductId());
            p.setCategories(categoryList);
            p.setImageUrls(queryImageUrls(p.getProductVariantCode()));
            p.setSizeQuantityMap(querySizeAndQuantity(p.getProductVariantCode()));
        }
        return productList;
    }

    public List<String> queryImageUrls(String product_variant_code) {
        String sql = " select * from [image]\n"
                + "where product_variant_code = ? ";
        return queryData(sql, "image_url", product_variant_code);
    }

    @Override
    public List<String> queryProductCategories(int productId) {
        String sql = "select c.category_value  from category c\n"
                + "          inner join product_category p_c on c.category_id = p_c.category_id\n"
                + "		  inner join product p on p_c.product_id = p.product_id\n"
                + "              where p_c.product_id = ?";
        return queryData(sql, "category_value", productId);
    }

    public HashMap<String, Integer> querySizeAndQuantity(String product_variant_code) {
        HashMap<String, Integer> hashmap = new HashMap<>();
        String sql = " select* from product_variant_size_stock stock\n"
                + "inner join sizes s on s.size_id = stock.size_id\n"
                + "where stock.product_variant_code= ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, product_variant_code);
            rs = statement.executeQuery();
            while (rs.next()) {
                hashmap.put(rs.getString("size_area") + " " + rs.getString("size"), rs.getInt("quantity"));
            }
            return hashmap;
        } catch (SQLException ex) {
            return null;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex1) {
                ex1.printStackTrace();
            }
        }
    }

}
