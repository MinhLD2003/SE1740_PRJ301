/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ImplementDAO.ProductDAO;
import java.util.HashMap;
import java.util.List;
import model.Product;
import service.InterfaceService.IProductService;

/**
 *
 * @author Admin
 */
public class ProductService implements IProductService {

    private ProductDAO pDAO = new ProductDAO();

    @Override
    public List<Product> queryAllProduct() {
        return pDAO.queryAllProduct();
    }

    @Override
    public List<Product> queryProductsByCategories(HashMap<String, List<String>> categories) {
        return pDAO.queryProductsByCategories(categories);
    }

    @Override
    public Product queryProductByCode(String code) {
        return pDAO.queryProductByCode(code);
    }

    @Override
    public List<Product> queryProductBySearching(String search_value) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<String> queryAllBrandName() {
        return pDAO.queryAllBrandName();
    }

    @Override
    public List<String> queryAllColor() {
        return pDAO.queryAllColor();
    }

    @Override
    public List<String> querySizeByGender(String gender) {
        return pDAO.querySizeByGender(gender);
    }

    @Override
    public List<String> queryAllProductCategories(String categoryName) {
        return pDAO.queryAllProductCategories(categoryName);
    }

    @Override
    public List<String> queryAllSizes() {
        return pDAO.queryAllSizes();
    }
}
