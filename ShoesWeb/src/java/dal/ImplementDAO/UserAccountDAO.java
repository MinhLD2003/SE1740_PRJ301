/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.InterfaceDAO.IUserAccountDAO;
import dal.MappingDAO.UserMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import model.UserAccount;

/**
 *
 * @author Admin
 */
public class UserAccountDAO extends GenericDAO<UserAccount> implements IUserAccountDAO {

    private UserMapping userMapping = new UserMapping();

    @Override
    public String getEmailConfirmationToken(String sql, Object... parameters) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        String token = "";
        try {

            con = db.getConnection();
            statement = con.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            if (rs.next()) {
                token = rs.getString("email_confirmation_code");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return token;
    }

    @Override
    public int getUserAccountId(String sql, Object... parameters) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        int id = -1;
        try {
            con = db.getConnection();
            statement = con.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            if (rs.next()) {
                id = rs.getInt("user_account_id");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return id;
    }

    @Override
    public UserAccount getUserByAccountInfo(String sql, Object... parameters) {
        List<UserAccount> list = query(sql, userMapping, parameters);
        System.out.println(list);
        return list.get(0);
    }

    @Override
    public Timestamp getCreatedTime(String sql, Object... parameters) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        Timestamp time = null;
        try {
            con = db.getConnection();
            statement = con.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            if (rs.next()) {
                time = rs.getTimestamp("confirmation_created_timestamp");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return time;
    }

    public int queryRoleId(String roleName) {
        String sql = "select * from user_role where role_name = ?";
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        int role_id = -1;
        try {
            con = db.getConnection();
            statement = con.prepareStatement(sql);
            setParameters(statement, roleName);
            rs = statement.executeQuery();
            if (rs.next()) {
                role_id = rs.getInt("role_name");
            }
            return role_id;

        } catch (SQLException ex) {
            System.out.println(ex);
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
                if (statement != null) {
                    statement.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return -1;
    }

    public void setUserAccountRole(UserAccount user, String role) {
        String sql = "update user_account \n"
                + "set role_id = ? \n"
                + "where user_account_id = ?";
        int role_id = queryRoleId(role);
        update(sql, role_id, user.getId());
    }
}
