/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.auth;

import java.nio.charset.StandardCharsets;
import utils.PasswordHashing;

/**
 *
 * @author Admin
 */
public class UserLogin {

    private String username;
    private String emailAddress;
    private String passwordSalt;
    private String passwordHash;
    private String isActive;
    private String emailConfirmationCode;

    public UserLogin() {
    }

    public UserLogin(String username, String emailAddress, String password) {
        PasswordHashing pswHash = new PasswordHashing();
        byte salt[] = pswHash.generateSalt();
        String passwordSalt1 = new String(salt, StandardCharsets.UTF_8);
        String passwordHash1 = pswHash.generateHash(password, salt, "SHA-256");
        
        this.emailConfirmationCode = "123456";
        this.username =  username;
        this.passwordHash = passwordHash1;
        this.passwordSalt = passwordSalt1;
        this.emailAddress = emailAddress;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPasswordSalt() {
        return passwordSalt;
    }

    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }

    public String getEmailConfirmationCode() {
        return emailConfirmationCode;
    }

    public void setEmailConfirmationCode(String emailConfirmationCode) {
        this.emailConfirmationCode = emailConfirmationCode;
    }
}
