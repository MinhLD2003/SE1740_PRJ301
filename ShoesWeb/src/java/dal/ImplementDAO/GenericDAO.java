/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.DBConnection;
import dal.InterfaceDAO.ICrudDAO;
import dal.MappingDAO.ObjectsMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 * @param <T>
 */
public class GenericDAO<T> implements ICrudDAO<T> {

    protected DBConnection db = new DBConnection();

    @Override
    public void update(Connection connection, String sql, Object... parameters) {
        PreparedStatement statement = null;

        try {
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException ex) {
            ex.printStackTrace();
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
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
    public void insert(Connection connection, String sql, Object... parameters) {

        PreparedStatement statement = null;

        try {

            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException ex) {
            ex.printStackTrace();
            if (connection != null) {
                try {

                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
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
                } else if (param instanceof Double) {
                    statement.setDouble(index, (Double) param);
                }

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public <T> List<T> query(String sql, ObjectsMapping<T> mapping, Object... parameters) {
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
            ex.printStackTrace();
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
        return null;
    }

    public List<String> queryData(String sql, String queryCol, Object... param) {
        List<String> queryList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, param);
            rs = statement.executeQuery();
            while (rs.next()) {
                queryList.add(rs.getString(queryCol));
            }
            return queryList;
        } catch (SQLException ex) {
            ex.printStackTrace();
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
        return null;
    }

    public int queryId(String sql, String queryCol, Object... param) {
        int result = -1;
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
            connection = db.getConnection();
            statement = connection.prepareStatement(sql);
            setParameters(statement, param);
            rs = statement.executeQuery();
            while (rs.next()) {
                result = rs.getInt(queryCol);
            }
            return result;
        } catch (SQLException ex) {
            ex.printStackTrace();
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
        return result;
    }

    @Override
    public void delete(Connection connection, String sql, Object... parameters) {
        PreparedStatement statement = null;

        try {
            connection = db.getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql);
            setParameters(statement, parameters);
            statement.executeUpdate();
            connection.commit();
        } catch (SQLException ex) {
            ex.printStackTrace();
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
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
    public Long insert1(Connection connection, String sql, Object... parameters) {

        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            Long id = null;

            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            setParameters(statement, parameters);
            statement.executeUpdate();
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getLong(1);
            }
            connection.commit();
            return id;
        } catch (SQLException e) {
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
            }
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }
}
