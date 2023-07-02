/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.MappingDAO;

import java.sql.ResultSet;

/**
 *
 * @author Admin
 * @param <T>
 */
public interface ObjectsMapping<T>{
    T mapAttributes(ResultSet rs);
  
}
