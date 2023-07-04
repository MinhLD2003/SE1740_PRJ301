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
            p.setProductVariantCode(rs.getString("product_variant_code"));
            p.setProductSellingPrice(rs.getFloat("price"));
            p.setProductCost(rs.getFloat("product_cost"));
            p.setColor(rs.getString("color"));
            p.setCreatedTime(rs.getTimestamp("create_time"));
          
            return p;
        } catch (SQLException ex) {
            return null;
        }
    }

}
