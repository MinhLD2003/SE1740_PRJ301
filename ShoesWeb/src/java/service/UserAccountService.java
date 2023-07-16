/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.DBConnection;
import model.UserAccount;
import dal.ImplementDAO.UserAccountDAO;
import java.util.List;
import service.InterfaceService.IUserAccountService;

/**
 *
 * @author Admin
 */
public class UserAccountService implements IUserAccountService {
     protected DBConnection db = new DBConnection();
    UserAccountDAO uADAO = new UserAccountDAO();
    
    @Override
    public int getUserAccountId(UserAccount user) {
        String sql = "select user_account_id from user_account where email_address = ? ";
        return uADAO.getUserAccountId(sql, user.getEmailAddress());
    }
    
    @Override
    public void updateActiveAccount(UserAccount userAccount) {
        String sql = "update [user_account] set [is_active] = ? where email_address = ?";
        uADAO.update(db.getConnection(),sql, 1, userAccount.getEmailAddress());
    }
    
    @Override
    public void insertUserAccount(UserAccount useraccount) {
        String sql
                = "INSERT INTO [dbo].[user_account] "
                + "([user_name], "
                + "[password_hash], "
                + "[password_salt], "
                + "[full_name],\n"
                + "[address],\n"
                + "[phone],"
                + "[email_address], "
                + "[is_active], "
                + "[email_confirmation_code], "
                + "[confirmation_created_timestamp]) "
                + "VALUES (?, ?, ?, ?, ?, ?, ? , ? , ? , ?)";
        uADAO.insert(db.getConnection(),
                sql,
                useraccount.getUsername(),
                useraccount.getPasswordHash(),
                useraccount.getPasswordSalt(),
                useraccount.getFullName(),
                useraccount.getAddress(),
                useraccount.getPhoneNumber(),
                useraccount.getEmailAddress(),
                useraccount.getIsActive(),
                useraccount.getEmailConfirmationCode(),
                useraccount.getEmailCreatedTime()
        );
    }
    
    @Override
    public String getEmailConfirmationCode(UserAccount user) {
        String sql = "select email_confirmation_code from user_account where email_address = ?";
        return uADAO.getEmailConfirmationToken(sql, user.getEmailAddress());
    }
    
    @Override
    public UserAccount getUserByUserName(String username) {
        String sql = "SELECT user_account.* , role.role_name FROM user_account\n"
                + "inner join user_role on user_role.user_account_id = user_account.user_account_id \n"
                + "inner join role on role.role_id = user_role.role_id\n"
                + "WHERE user_name = ? and is_active = 1";
        return uADAO.getUserByAccountInfo(sql, username);
    }
    
    @Override
    public UserAccount getUserByEmailAddress(String email) {
        String sql = "SELECT user_account.* , role.role_name FROM user_account\n"
                + "inner join user_role on user_role.user_account_id = user_account.user_account_id \n"
                + "inner join role on role.role_id = user_role.role_id\n"
                + "WHERE email_address = ? and is_active = 1";
        return uADAO.getUserByAccountInfo(sql, email);
    }
    
    @Override
    public void setUserAccountRole(UserAccount account, String role) {
        uADAO.setUserAccountRole(account, role);
    }
    
    @Override
    public List<UserAccount> getAllUserAccount() {
        return uADAO.getAllUserAccount();
    }
    
    @Override
    public void setActivatedAccount(UserAccount user) {
        uADAO.setActivatedAccount(user);
    }
    
    @Override
    public void editAccount(UserAccount user) {
        uADAO.editAccount(user);
    }
    
    @Override
    public void deleteAccount(int userId) {
        uADAO.deleteAccount(userId);
    }
    
}
