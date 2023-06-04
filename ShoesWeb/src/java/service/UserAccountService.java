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
   
    public UserAccount getUserByUserName(String username) {
        String sql = "SELECT * FROM user_login WHERE username = ? and isActive = 1";
        return uADAO.getUserByAccountInfo(sql, username);   
    } 
    public UserAccount getUserByEmailAddress(String email) {
        String sql = "SELECT * FROM user_login WHERE email_address = ? and isActive = 1";
        return uADAO.getUserByAccountInfo(sql, email);   
    } 
    public void insertUserLogin(UserAccount user) {
        String sql = "INSERT INTO [user_login]\n"
                + "           ([username]\n"
                + "           ,[passwordhash]\n"
                + "           ,[passwordsalt]\n"
                + "           ,[email_address]\n"
                + "           ,[isActive])\n"
                + "     VALUES ( ?, ? , ? , ? , ?);";
        uADAO.insert(sql, 
                user.getUsername(),
                user.getPasswordHash(),
                user.getPasswordSalt(),
                user.getEmailAddress(),
                user.getIsActive());
    }
}
