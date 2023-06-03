/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.DBConnection;
import dal.InterfaceDAO.ICrudDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class GenericDAO<T> implements ICrudDAO {

    private DBConnection db = new DBConnection();

    @Override
    public void update(String sql, Object... parameters) {
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            statement.executeUpdate();

        } catch (SQLException ex) {

        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex1) {
                ex1.printStackTrace();
            }
        }
    }

    @Override
    public void insert(String sql, Object... parameters) {
        PreparedStatement statement = null;
        Connection connection = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            statement.executeUpdate();
        } catch (SQLException ex) {

        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex1) {
                ex1.printStackTrace();
            }
        }
    }

    private void setParameters(PreparedStatement statement, Object... parameters) {
        try {
            for (int i = 0; i < parameters.length; i++) {
                Object param = parameters[i];
                int index = i + 1;
                if (param instanceof String) {
                    statement.setString(index, (String) param);
                } else if (param instanceof Integer) {
                    statement.setInt(index, (Integer) param);
                }else if (param instanceof Timestamp) {
                    statement.setTimestamp(index, (Timestamp) param);
                }
                

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}