/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.InterfaceDAO.IProductDAO;
import dal.MappingDAO.ObjectsMapping;
import dal.MappingDAO.ProductMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO extends GenericDAO<Product> implements IProductDAO {

    private ProductDAO pDAO = new ProductDAO();
    private ObjectsMapping obMapping = new ProductMapping();

    @Override
    public List<Product> queryAllProduct() {
        String sql = "select * from product";
        List<Product> productList = pDAO.query(sql, obMapping);
        for (Product p : productList) {
            List<String> categoryList = queryProductCategories(p.getProductId());
            p.setCategories(categoryList);
        }
        return productList;
    }

    @Override
    public List<String> queryProductCategories(int productId) {
        String sql = "select c.category_value  from category c\n"
                + "          inner join product_category p_c on c.category_id = p_c.category_id\n"
                + "		  inner join product p on p_c.product_id = p.product_id\n"
                + "              where p_c.product_id = ?";
        List<String> queryList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, productId);
            rs = statement.executeQuery();
            while (rs.next()) {
               queryList.add(rs.getString("category_value"));
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

}
