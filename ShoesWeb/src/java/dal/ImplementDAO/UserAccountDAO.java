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
        List<String> queryResult = queryData(sql, "email_confirmation_code", parameters);
        return queryResult.get(0);
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
        if (list == null || list.isEmpty()) {
            return null;
        } else {
            return list.get(0);
        }
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
        String sql = "select role_id from role where role_name = ?";
        return queryId(sql, "role_id", roleName);
    }

    public void setUserAccountRole(UserAccount user, String role) {
        String sql = "INSERT INTO user_role values( ? , ? , 1 )";
        int role_id = queryRoleId(role);
        update(sql, getUserId(user), role_id);
    }

    @Override
    public String getUserRole(String sql, UserAccount user, Object... parameters) {
        List<String> result = queryData(sql, "role_name", parameters);
        return result.get(0);
    }

    public int getUserId(UserAccount user) {
        String sql = "Select user_account_id from user_account where email_address = ?";
        return queryId(sql, "user_account_id", user.getEmailAddress());
    }

    @Override
    public List<UserAccount> getAllUserAccount() {
        String sql = "select user_account.* , role.role_name"
                + " from user_account inner join user_role"
                + " on user_role.user_account_id = user_account.user_account_id\n"
                + "inner join role on role.role_id = user_role.role_id";
        return query(sql, userMapping);
    }

    public void setActivatedAccount(UserAccount user) {
        String sql = "update user_account set is_active = 1 where email_address = ?";
        update(sql, user.getEmailAddress());
    }
}
