/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import java.util.List;
import dal.MappingDAO.ObjectsMapping;
import java.sql.Connection;

/**
 *
 * @author Admin
 */
public interface ICrudDAO<T> {
    void update(Connection con , String sql , Object... parameters);
    void insert(Connection con ,String sql , Object... parameters);
    void delete(Connection con ,String sql , Object... parameters);
    Long insert1(Connection con,String sql, Object... parameters);
    <T> List<T> query(String sql , ObjectsMapping <T> mapping ,  Object... parameters);
}
