/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ImplementDAO.UserAccountDAO;
import model.auth.UserAccount;

/**
 *
 * @author Admin
 */
public class UserAccountService {

    UserAccountDAO uADAO = new UserAccountDAO();

    public void updateConfirmationCode(UserAccount userAccount, String newToken) {
        String sql = "update [user_account] set email_confirmation_token = ? where email_address = ?";
        uADAO.insert(sql, newToken, userAccount.getEmailAddress());
    }

    public void insertUserAccount(UserAccount useraccount) {
        String sql = "INSERT INTO [dbo].[user_account]\n"
                + "           ([username]\n"
                + "           ,[passwordhash]\n"
                + "           ,[passwordsalt]\n"
                + "           ,[email_address]\n"
                + "           ,[email_confirmation_token]\n"
                + "           ,[isActive])\n"
                + "     VALUES( ? , ? , ? , ? , ? , ?  )";
        uADAO.insert(sql, useraccount.getUsername(),
                useraccount.getPasswordHash(),
                useraccount.getPasswordSalt(),
                useraccount.getEmailAddress(),
                useraccount.getEmailConfirmationCode());
        useraccount.getIsActive();
    }

    public UserAccount getUserByUserName(String username) {
        String sql = "SELECT * FROM user_account WHERE username = ? and isActive = 1";
        return uADAO.getUserByAccountInfo(sql, username);
    }

    public UserAccount getUserByEmailAddress(String email) {
        String sql = "SELECT * FROM user_account WHERE email_address = ? ";
        return uADAO.getUserByAccountInfo(sql, email);
    }

}
