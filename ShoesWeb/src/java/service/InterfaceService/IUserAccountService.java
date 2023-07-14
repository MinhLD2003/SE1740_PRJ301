/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service.InterfaceService;

import java.sql.Timestamp;
import java.util.List;
import model.UserAccount;

/**
 *
 * @author Admin
 */
public interface IUserAccountService {

    public int getUserAccountId(UserAccount user);

    public void updateActiveAccount(UserAccount userAccount);

    public void insertUserAccount(UserAccount useraccount);

    public String getEmailConfirmationCode(UserAccount user);

    public UserAccount getUserByUserName(String username);

    public UserAccount getUserByEmailAddress(String email);

    public void setUserAccountRole(UserAccount user , String role_name);
     public void setActivatedAccount(UserAccount user);
    public List<UserAccount> getAllUserAccount() ;
}
