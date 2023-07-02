/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.MappingDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductMapping implements ObjectsMapping<Product> {

    @Override
    public Product mapAttributes(ResultSet rs) {
        Product p = new Product();
        try {
            p.setProductId(rs.getInt("product_id"));
            p.setName(rs.getString("name"));
            p.setBrand(rs.getString("brand_name"));
            p.setLast_update_time(rs.getTimestamp("last_update_time"));
            p.setDescription(rs.getString("description"));
            return p;
        } catch (SQLException ex) {
            return null;
        }
    }
}
