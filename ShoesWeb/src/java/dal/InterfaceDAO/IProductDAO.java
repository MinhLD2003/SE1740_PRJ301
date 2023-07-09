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
    List<String>  queryProductCategories(int productId);
    List<Product> queryProductsByCategories(HashMap<String, List<String>> filterMap);
   
}
