/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.InterfaceDAO.IProductVariantDAO;
import java.util.List;
import model.ProductVariant;
import service.InterfaceService.IProductVariantService;

/**
 *
 * @author Admin
 */
public class ProductVariantService implements IProductVariantService{

    private IProductVariantDAO pDAO;
    @Override
    public List<ProductVariant> queryProductVariants(int productId) {
       return pDAO.queryProductVariants(productId);
    }

   


   
}
