/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.ImplementDAO;

import dal.MappingDAO.UserMapping;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import model.auth.UserAccount;

/**
 *
 * @author Admin
 */
public class UserAccountDAO extends GenericDAO<UserAccount> {

    private UserMapping userMapping = new UserMapping();

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

    public UserAccount getUserByAccountInfo(String sql, Object... parameters) {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        UserAccount userAccount = null;
        try {

            con = db.getConnection();
            statement = con.prepareStatement(sql);
            setParameters(statement, parameters);
            rs = statement.executeQuery();
            if (rs.next()) {
                userAccount = userMapping.mapAttributes(rs);
            }
            return userAccount;
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
        return userAccount;
    }

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
}
