/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import dal.ImplementDAO.UserLoginDAO;
import model.auth.UserLogin;
import utils.TimeConversion;

/**
 *
 * @author Admin
 */
public class UserLoginService {

    private UserLoginDAO ulDAO = new UserLoginDAO();
    TimeConversion timeconversion = new TimeConversion();

    public void insertUserLogin(UserLogin user) {
        String sql = "INSERT INTO [user_login]\n"
                + "           ([username]\n"
                + "           ,[passwordhash]\n"
                + "           ,[passwordsalt]\n"
                + "           ,[email_address]\n"
                + "           ,[email_confirmation_token]\n"
                + "           ,[isActive])\n"
                + "     VALUES ( ?, ? , ? , ? , ?, ? );";
        ulDAO.insert(sql, user.getUsername(),
                user.getPasswordHash(),
                user.getPasswordSalt(),
                user.getEmailAddress(),
                user.getEmailConfirmationCode(),
                user.getIsActive());
    }
}
