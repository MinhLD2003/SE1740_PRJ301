/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import java.util.List;
import dal.MappingDAO.ObjectsMapping;

/**
 *
 * @author Admin
 */
public interface ICrudDAO<T> {
    void update(String sql , Object... parameters);
    void insert(String sql , Object... parameters);
    <T> List<T> query(String sql , ObjectsMapping <T> mapping ,  Object... parameters);
}
