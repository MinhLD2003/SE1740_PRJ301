/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.DBConnection;
import dal.InterfaceDAO.ICrudDAO;
import dal.MappingDAO.AttributesMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class GenericDAO<T> implements ICrudDAO<T> {

    protected DBConnection db = new DBConnection();

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
            ex.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
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
            Logger.getLogger(GenericDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex1) {
                ex1.printStackTrace();
            }
        }
    }

    protected void setParameters(PreparedStatement statement, Object... parameters) {

        try {
            for (int i = 0; i < parameters.length; i++) {
                Object param = parameters[i];
                int index = i + 1;
                if (param instanceof String) {
                    statement.setString(index, (String) param);
                } else if (param instanceof Integer) {
                    statement.setInt(index, (Integer) param);
                } else if (param instanceof Timestamp) {
                    statement.setTimestamp(index, (Timestamp) param);
                }

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public <T> List<T> query(String sql, AttributesMapping<T> mapping, Object... parameters) {
        List<T> queryList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            while (rs.next()) {
                T newObject = mapping.mapAttributes(rs);
                queryList.add(newObject);
            }
            return queryList;
        } catch (SQLException ex) {
            return null;
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

}
