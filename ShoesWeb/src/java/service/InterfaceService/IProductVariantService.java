/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service.InterfaceService;

import java.util.List;
import model.ProductVariant;

/**
 *
 * @author Admin
 */
public interface IProductVariantService {
    List<ProductVariant> queryProductVariants(int productId);
}
