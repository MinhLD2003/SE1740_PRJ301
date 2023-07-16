/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import model.Order;
import model.UserAccount;

/**
 *
 * @author Admin
 */
public interface IOrderDAO extends ICrudDAO<Order>{
    void insertOrder(Order order ,UserAccount user);
}
