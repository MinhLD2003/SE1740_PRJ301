/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service.InterfaceService;

import java.util.HashMap;
import java.util.List;
import model.Product;

/**
 *
 * @author Admin
 */
public interface IProductService {

    List<Product> queryAllProduct();

    List<Product> queryProductsByCategories(HashMap<String, List<String>> categories);

    Product queryProductByCode(String code);

    List<Product> queryProductBySearching(String search_value);

    List<String> queryAllBrandName();

    List<String> queryAllColor();

    List<String> querySizeByGender(String gender);

    List<String> queryAllProductCategories(String categoryName);
    
    List<String> queryAllSizes();
}
