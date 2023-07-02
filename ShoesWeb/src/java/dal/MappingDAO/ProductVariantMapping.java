/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.MappingDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.ProductVariant;

/**
 *
 * @author Admin
 */
public class ProductVariantMapping implements ObjectsMapping<ProductVariant> {

    @Override
    public ProductVariant mapAttributes(ResultSet rs) {
        ProductVariant p = new ProductVariant();
        try {
            p.setId(rs.getInt("product_variant_id"));
            p.setColor(rs.getString("color"));
            p.setLastUpdate(rs.getTimestamp("last_update_time"));
            p.setProductSellingPrice(rs.getFloat("price"));
            p.setProductCost(rs.getFloat("product_cost"));
            return p;
        } catch (SQLException ex) {
            return null;
        }
    }

}
