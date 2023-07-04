/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.InterfaceDAO.IProductVariantDAO;
import dal.MappingDAO.ObjectsMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import model.ProductVariant;

/**
 *
 * @author Admin
 */
public class ProductVariantDAO extends GenericDAO<ProductVariant> implements IProductVariantDAO {

    private ObjectsMapping obMap;

    @Override
    public List<ProductVariant> queryProductVariants(int productId) {
        String sql = "select distinct p.product_variant_code ,\n"
                + "				p.product_cost , \n"
                + "				p.price ,p.quantity , \n"
                + "				p.created_time ,\n"
                + "				c.color from product_variant p \n"
                + "				inner join color c on c.color_id = p.color_id\n"
                + "				where p.product_id = ?";

        List<ProductVariant> queryList = query(sql, obMap, productId);
        for (ProductVariant p : queryList) {
            p.setSizeQuantityMap(querySizeAndQuantity(p.getProductVariantCode()));
            p.setImagesUrls(queryImageUrls(p.getProductVariantCode()));
        }
        return queryList;
    }

    public List<String> queryImageUrls(String product_variant_code) {
        String sql = " select * from [image]\n"
                + "where product_variant_code = ? ";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        List<String> queryList = new ArrayList<>();
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, product_variant_code);
            rs = statement.executeQuery();
            while (rs.next()) {
               queryList.add(rs.getString("image-url"));
            }
            return queryList;
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
