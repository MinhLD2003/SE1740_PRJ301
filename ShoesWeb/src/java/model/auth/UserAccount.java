/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.auth;

import java.sql.Timestamp;
import utils.CodeProcessing;

/**
 *
 * @author Admin
 */
public class UserAccount {

    private String username;
    private String emailAddress;
    private String passwordSalt;
    private String passwordHash;
    private String emailConfirmationCode;
    Timestamp expirationTimeEmail ;
    Timestamp createdTimeEmail ;

    public Timestamp getExpirationTimeEmail() {
        return expirationTimeEmail;
    }

    public void setExpirationTimeEmail(Timestamp expirationTimeEmail) {
        this.expirationTimeEmail = expirationTimeEmail;
    }

    public Timestamp getCreatedTimeEmail() {
        return createdTimeEmail;
    }

    public void setCreatedTimeEmail(Timestamp createdTimeEmail) {
        this.createdTimeEmail = createdTimeEmail;
    }
   
    private int isActive;

    public UserAccount() {
    }

    public UserAccount(String username, String emailAddress, String password) {
        CodeProcessing codeProcessing = new CodeProcessing();
        byte[] salt = codeProcessing.generateSalt();
        byte[] passwordhash = codeProcessing.getEncryptedPassword(password, salt);
        this.username = username;
        this.passwordHash = codeProcessing.bytesToString(passwordhash);
        this.passwordSalt = codeProcessing.bytesToString(salt);
        this.emailAddress = emailAddress;
        this.isActive = 0;
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

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public String getEmailConfirmationCode() {
        return emailConfirmationCode;
    }

    public void setEmailConfirmationCode(String emailConfirmationCode) {
        this.emailConfirmationCode = emailConfirmationCode;
    }

    
}
