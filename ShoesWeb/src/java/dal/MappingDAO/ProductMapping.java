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

        try {
            Product p = new Product();
            p.setProductCode(rs.getString("product_code"));
            p.setName(rs.getString("name"));
            p.setBrand(rs.getString("brand_name"));
            p.setDetail(rs.getString("details"));
            if (rs.getTimestamp("last_update_time") != null) {
                p.setCreatedTime(rs.getTimestamp("created_time"));
            }
            if (rs.getTimestamp("last_update_time") != null) {
                p.setLastUpdateTime(rs.getTimestamp("last_update_time"));
            }
            p.setDescription(rs.getString("description"));
            p.setProductSellingPrice(rs.getFloat("price"));
            p.setProductCost(rs.getFloat("product_cost"));
            p.setColor(rs.getString("color"));
            return p;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

}
