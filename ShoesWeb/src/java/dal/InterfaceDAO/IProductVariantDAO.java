/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import java.util.List;
import model.ProductVariant;

/**
 *
 * @author Admin
 */
public interface IProductVariantDAO extends ICrudDAO<ProductVariant> {
    List<ProductVariant> queryProductVariants(int productId);
}
