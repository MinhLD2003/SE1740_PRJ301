

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.MappingDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import model.auth.UserAccount;

/**
 *
 * @author Admin
 */
public class UserMapping implements AttributesMapping<UserAccount> {

    @Override
    public UserAccount mapAttributes(ResultSet rs) {
       UserAccount user = new UserAccount();
       try {
           user.setId(rs.getInt("user_account_id"));
           user.setUsername(rs.getString("user_name"));
           user.setPasswordHash(rs.getString("password_hash"));
           user.setPasswordSalt(rs.getString("password_salt"));
           user.setEmailAddress(rs.getString("email_address"));
           return user;    
       } catch(SQLException ex) {
            System.out.println(ex);
       }
       return null;
    }
    
}
