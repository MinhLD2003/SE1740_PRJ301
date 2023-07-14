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
import java.util.Map;
import model.Product;
import utils.TimestampHandler;

/**
 *
 * @author Admin
 */
public class ProductDAO extends GenericDAO<Product> implements IProductDAO {

    @Override
    public List<Product> queryAllProduct() {
        String sql = "select * from product inner join brand on brand.brand_id = product.brand_id\n"
                + "					    inner join color on color.color_id = product.color_id";
        List<Product> productList = query(sql, new ProductMapping());
        for (Product p : productList) {
            List<String> categoryList = queryProductCategories(p.getProductCode());
            p.setCategories(categoryList);
            p.setImageUrls(queryImageUrls(p.getProductCode()));
            p.setSizeQuantityMap(querySizeAndQuantity(p.getProductCode()));
            p.updateStock();
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
                = new StringBuilder("SELECT DISTINCT p.*,b.brand_name, c.color");
        sql.append(" FROM product p");
        sql.append(" JOIN brand b ON p.brand_id = b.brand_id");
        sql.append(" JOIN product_category pc ON p.product_code = pc.product_code");
        sql.append(" JOIN category cat ON pc.category_id = cat.category_id");
        sql.append(" JOIN color c ON p.color_id = c.color_id");
        sql.append(" JOIN product_size_stock pss ON p.product_code = pss.product_code");
        sql.append(" JOIN sizes s ON pss.size_id = s.size_id WHERE 1 = 1");

        params.add(gender.get(0));
        if (sports != null && !sports.isEmpty()) {
            sql.append(" AND (cat.category_value = ? AND EXISTS (\n"
                    + "        SELECT 1\n"
                    + "        FROM product_category pc2\n"
                    + "        JOIN category cat2 ON pc2.category_id = cat2.category_id\n"
                    + "        WHERE pc2.product_code = p.product_code\n"
                    + "        AND cat2.category_value IN (");

            for (int i = 0; i < sports.size(); i++) {
                if (i < sports.size() - 1) {
                    sql.append("?,");
                } else {
                    sql.append("? )))");
                }
                params.add(sports.get(i));
            }
        } else {
            sql.append(" AND cat.category_value = ?");
        }
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
                    sql.append("? )");
                }
                params.add(colors.get(i));
            }
        }
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
        if (min_price != null && !min_price.isEmpty() && max_price != null && !max_price.isEmpty()) {
            params.add(min_price.get(0));
            params.add(max_price.get(0));
            sql.append(" AND p.price BETWEEN ? AND ?");
        }
        List<Product> productList = query(sql.toString(), new ProductMapping(), params.toArray((String[]) new String[params.size()]));
        for (Product p : productList) {
            List<String> categoryList = queryProductCategories(p.getProductCode());
            p.setCategories(categoryList);
            p.setImageUrls(queryImageUrls(p.getProductCode()));
            p.setSizeQuantityMap(querySizeAndQuantity(p.getProductCode()));
            p.updateStock();
        }
        return productList;
    }

    public List<String> queryImageUrls(String product_code) {
        String sql = " select * from [image]\n"
                + "where product_code = ? ";
        return queryData(sql, "image_url", product_code);
    }

    public Product queryProductByCode(String code) {
        String sql = "select * from product inner join brand on brand.brand_id = product.brand_id\n"
                + "  inner join color on color.color_id = product.color_id  where product_code = ?";
        List<Product> productList = query(sql, new ProductMapping(), code);
        Product foundProduct = productList.get(0);
        List<String> categoryList = queryProductCategories(foundProduct.getProductCode());
        foundProduct.setCategories(categoryList);
        foundProduct.setImageUrls(queryImageUrls(foundProduct.getProductCode()));
        foundProduct.setSizeQuantityMap(querySizeAndQuantity(foundProduct.getProductCode()));
        return foundProduct;
    }

    @Override
    public List<String> queryProductCategories(String product_code) {
        String sql = "select c.category_value  from category c\n"
                + "                    inner join product_category p_c on c.category_id = p_c.category_id\n"
                + "                    inner join product p on p_c.product_code = p.product_code\n"
                + "                    where p_c.product_code = ?";
        return queryData(sql, "category_value", product_code);
    }

    public HashMap<String, Integer> querySizeAndQuantity(String product_code) {
        HashMap<String, Integer> hashmap = new HashMap<>();
        String sql = " select * from product_size_stock stock\n"
                + "               inner join sizes s on s.size_id = stock.size_id\n"
                + "                where stock.product_code= ? order by size asc";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, product_code);
            rs = statement.executeQuery();
            while (rs.next()) {
                hashmap.put(rs.getString("size"), rs.getInt("quantity"));
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

    @Override
    public List<Product> queryProductBySearching(String search_value) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<String> queryAllProductCategories(String categoryName) {
        String sql = "select * from category where category_name = ? ";
        return queryData(sql, "category_value", categoryName);
    }

    @Override
    public List<String> queryAllBrandName() {
        String sql = "Select * from brand";
        return queryData(sql, "brand_name");
    }

    @Override
    public List<String> queryAllColor() {
        String sql = "Select * from color";
        return queryData(sql, "color");
    }

    @Override
    public List<String> querySizeByGender(String gender) {
        String sql = "SELECT * FROM sizes where size_gender = ?";
        return queryData(sql, "size", gender);
    }
    public int queryImageId(String productCode , String url) {
        String sql = "Select * from image where image_url = ? and product_code = ?";
        return queryId(sql , "image_id" , url , productCode);
    }
    public int queryBrandId(String brand) {
        String sql = "select brand_id from brand where brand_name = ?";
        return queryId(sql, "brand_id", brand);
    }

    public int queryColorId(String color) {
        String sql = "select color_id from color where color = ?";
        return queryId(sql, "color_id", color);
    }

    public int queryCategoryId(String category_value) {
        String sql = "select category_id from category where category_value = ?";
        return queryId(sql, "category_id", category_value);
    }

    public int querySizeId(String size, String gender) {
        String sql = "select size_id from sizes where size = ? and size_gender = ?";
        return queryId(sql, "size_id", size, gender);
    }

    @Override
    public List<String> queryAllSizes() {
        String sql = "SELECT * FROM sizes ";
        List<String> queryList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);

            rs = statement.executeQuery();
            while (rs.next()) {
                queryList.add(rs.getString("size") + " " + rs.getString("size_gender"));
            }
            return queryList;
        } catch (SQLException ex) {
            ex.printStackTrace();
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
        return null;
    }

    @Override
    public void insertProduct(Product product) {

        TimestampHandler timeH = new TimestampHandler();
        String sql = "insert into [dbo].[product]("
                + "            [product_code]\n"
                + "           ,[name]\n"
                + "           ,[product_cost]\n"
                + "           ,[price]\n"
                + "           ,[description]\n"
                + "           ,[details]\n"
                + "           ,[created_time]\n"
                + "           ,[brand_id]\n"
                + "           ,[color_id])\n"
                + "values( ? , ? , ? , ? , ? , ? , ? ,?, ? )";
        insert(sql,
                product.getProductCode(),
                product.getName(),
                product.getProductCost(),
                product.getProductSellingPrice(),
                product.getDescription(),
                product.getDetail(),
                timeH.getNow(),
                queryBrandId(product.getBrand()),
                queryColorId(product.getColor()));
        //--------------------------------------------------
        String sql1 = "insert into product_category values( ? , ? )";
        for (String category : product.getCategories()) {
            insert(sql1, product.getProductCode(), queryCategoryId(category));
        }
        String sql2 = "insert into product_size_stock values(? , ? , ?)";
        for (Map.Entry<String, Integer> entry : product.getSizeQuantityMap().entrySet()) {
            insert(sql2, product.getProductCode(), querySizeId(entry.getKey(),
                    product.getGender()), entry.getValue());
        }
        String sql3 = "insert into image values(? , ? )";
        for (String s : product.getImageUrls()) {
            insert(sql3, s, product.getProductCode());
        }

    }

    public void deleteProduct(String productCode) {
        String sql = "DELETE FROM image where product_code = ?";
        delete(sql, productCode);

        String sql1 = "DELETE FROM product_category where product_code = ?";
        delete(sql1, productCode);

        String sql2 = "DELETE FROM product_size_stock where product_code = ?";
        delete(sql2, productCode);

        String sql3 = "DELETE FROM product where product_code = ?";
        delete(sql3, productCode);

    }
    
    public void editProduct(Product product) {
        Product oldProduct = queryProductByCode(product.getProductCode());
        
        String sql3 = "Update image set image_url = ? where image_id = ?";
        for(int i = 0 ;i < product.getImageUrls().size() ;i++) {
            update(sql3 , product.getImageUrls().get(i) , 
                    queryImageId(product.getProductCode(), oldProduct.getImageUrls().get(i)));
        }
        String sql2 = "update product_size_stock set quantity = ? where size_id = ? and product_code = ?";
        for (Map.Entry<String, Integer> entry : product.getSizeQuantityMap().entrySet()) {
            update(sql2, entry.getValue(),querySizeId(entry.getKey(), product.getGender()),  product.getProductCode());
        }
        String sql1 = "update product_category set category_id = ? where product_code = ?";
        for (String category : product.getCategories()) {
            update(sql1, queryCategoryId(category), product.getProductCode());
        }

        TimestampHandler timeH = new TimestampHandler();
        String sql = "UPDATE [dbo].[product]\n"
                + "   SET "
                + "       [name] = ?\n"
                + "      ,[product_cost] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[details] = ?\n"
                + "      ,[last_update_time] = ?\n"
                + "      ,[brand_id] = ?\n"
                + "      ,[color_id] = ?\n"
                + " WHERE product_code = ?\n";

        update(sql,
                product.getName(),
                product.getProductCost(),
                product.getProductSellingPrice(),
                product.getDescription(),
                product.getDetail(),
                timeH.getNow(),
                queryBrandId(product.getBrand()),
                queryColorId(product.getColor()),
                product.getProductCode()
                
        );
    }
}
