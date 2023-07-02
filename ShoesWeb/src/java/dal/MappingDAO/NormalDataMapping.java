/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.MappingDAO;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class NormalDataMapping {

    public String mapAttributes(String queryCol, ResultSet rs) {
        String returnString = "";
        try {
            returnString = rs.getString(queryCol);
            return returnString;
        } catch (SQLException ex) {
            return null;
        }
    }

}
