/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package dal.InterfaceDAO;

import java.sql.Timestamp;
import java.util.List;
import model.UserAccount;

/**
 *
 * @author Admin
 */
public interface IUserAccountDAO extends ICrudDAO<UserAccount> {

    public String getEmailConfirmationToken(String sql, Object... parameters);

    public int getUserAccountId(String sql, Object... parameters);

    public UserAccount getUserByAccountInfo(String sql, Object... parameters);

    public Timestamp getCreatedTime(String sql, Object... parameters);

    public String getUserRole(String sql, UserAccount user, Object... parameters);
    
    public List<UserAccount> getAllUserAccount();
    
    public void editAccount(UserAccount user) ;
}
