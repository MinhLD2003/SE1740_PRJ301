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
            p.setProductId(rs.getInt("product_id"));
            p.setName(rs.getString("name"));
            p.setBrand(rs.getString("brand_name"));
            p.setCreatedTime(rs.getTimestamp("created_time"));
            p.setLastUpdateTime(rs.getTimestamp("last_update_time"));
            p.setDescription(rs.getString("description"));
            p.setProductVariantCode(rs.getString("product_variant_code"));
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
