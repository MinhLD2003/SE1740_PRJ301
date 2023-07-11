/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import model.UserAccount;
import dal.ImplementDAO.UserAccountDAO;
import java.sql.Timestamp;
import service.InterfaceService.IUserAccountService;

/**
 *
 * @author Admin
 */
public class UserAccountService implements IUserAccountService {

    UserAccountDAO uADAO = new UserAccountDAO();

    @Override
    public Timestamp getEmailConfCreatedTime(UserAccount user) {
        String sql = "select confirmation_created_timestamp from user_account where email_address = ?";
        return uADAO.getCreatedTime(sql, user.getEmailAddress());
    }

    @Override
    public int getUserAccountId(UserAccount user) {
        String sql = "select user_account_id from user_account where email_address = ? ";
        return uADAO.getUserAccountId(sql, user.getEmailAddress());
    }

    @Override
    public void updateActiveAccount(UserAccount userAccount) {
        String sql = "update [user_account] set [is_active] = ? where email_address = ?";
        uADAO.update(sql, 1, userAccount.getEmailAddress());
    }

    @Override
    public void insertUserAccount(UserAccount useraccount) {
        String sql
                = "INSERT INTO [dbo].[user_account] "
                + "([user_name], "
                + "[password_hash], "
                + "[password_salt], "
                + "[email_address], "
                + "[is_active], "
                + "[email_confirmation_code], "
                + "[confirmation_created_timestamp]) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        uADAO.insert(
                sql,
                useraccount.getUsername(),
                useraccount.getPasswordHash(),
                useraccount.getPasswordSalt(),
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
        String sql = "SELECT * FROM user_account WHERE user_name = ? and is_active = 1";
        return uADAO.getUserByAccountInfo(sql, username);
    }

    @Override
    public UserAccount getUserByEmailAddress(String email) {
        String sql = "SELECT * FROM user_account WHERE email_address = ? ";
        return uADAO.getUserByAccountInfo(sql, email);
    }

}
