/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

/**
 *
 * @author Admin
 */
public interface ICrudDAO {
    void update(String sql , Object... parameters);
    void insert(String sql , Object... parameters);
    
}
