/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.ProductVariant;

/**
 *
 * @author Admin
 */
public class ProductDAO extends GenericDAO<Product> {
 public List<String> queryData(String sql , String[] queryCols , Object... params) {
        List<String> queryList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, params);
            rs = statement.executeQuery();
            while (rs.next()) {
                
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
