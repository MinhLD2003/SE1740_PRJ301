/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ImplementDAO.ProductDAO;
import dal.MappingDAO.ObjectsMapping;
import dal.MappingDAO.ProductMapping;
import java.util.List;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductService {

    private ProductDAO pDAO = new ProductDAO();
    private ObjectsMapping obMapping = new ProductMapping();

    public List<Product> getAllProduct() {
        String sql = "select * from product";
        List<Product> productList = pDAO.query(sql, obMapping);
        for (Product p : productList) {
            List<String> categoryList = getProductCategories(p.getProductId());
            p.setCategories(categoryList);
        }
        return productList;
    }

    public List<String> getProductCategories(int product_id) {
        String sql = "select c.category_name\n"
                + "from category c\n"
                + "inner join product_category p_c on c.category_id = p_c.category_id\n"
                + "where p_c.product_id = ?";
        return pDAO.queryProductCategories(sql, product_id);
    }
}
