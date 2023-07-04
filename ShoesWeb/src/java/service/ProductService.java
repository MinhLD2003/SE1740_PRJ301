/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.InterfaceDAO.IProductDAO;
import java.util.List;
import model.Product;
import service.InterfaceService.IProductService;

/**
 *
 * @author Admin
 */
public class ProductService implements IProductService {
    private IProductDAO pDAO;
    @Override
    public List<Product> queryAllProduct() {
        return pDAO.queryAllProduct();
    }
}
