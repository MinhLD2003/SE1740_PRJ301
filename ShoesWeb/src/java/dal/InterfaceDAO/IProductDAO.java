/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import java.util.HashMap;
import java.util.List;
import model.Product;

/**
 *
 * @author Admin
 */
public interface IProductDAO extends ICrudDAO<Product> {

    List<Product> queryAllProduct();

    List<String> queryProductCategories(String productCode);

    List<Product> queryProductsByCategories(HashMap<String, List<String>> filterMap);

    List<Product> queryProductBySearching(String search_value);

    List<String> queryAllProductCategories(String categoryName);

    List<String> queryAllBrandName();

    List<String> queryAllColor();

    List<String> querySizeByGender(String gender);

    List<String> queryAllSizes();

    void insertProduct(Product product);
}
