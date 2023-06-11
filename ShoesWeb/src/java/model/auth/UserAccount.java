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

    private int id;
    private String username;
    private String emailAddress;
    private String passwordSalt;
    private String passwordHash;
    private String emailConfirmationCode;
    private Timestamp emailCreatedTime;
    private String passwordRecoveryCode;
    private Timestamp recoveryTime;
    private int isActive;

    public UserAccount() {
    }
    private CodeProcessing codeProcessing = new CodeProcessing();

    public UserAccount(String username, String emailAddress, String password) {
        byte[] salt = codeProcessing.generateSalt();
        byte[] passwordhash = codeProcessing.getEncryptedPassword(password, salt);
        this.username = username;
        this.passwordHash = codeProcessing.bytesToString(passwordhash);
        this.passwordSalt = codeProcessing.bytesToString(salt);
        this.emailAddress = emailAddress;
        this.isActive = 0;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Timestamp getEmailCreatedTime() {
        return emailCreatedTime;
    }

    public void setEmailCreatedTime(Timestamp emailCreatedTime) {
        this.emailCreatedTime = emailCreatedTime;
    }

    public String getPasswordRecoveryCode() {
        return passwordRecoveryCode;
    }

    public void setPasswordRecoveryCode(String passwordRecoveryCode) {
        this.passwordRecoveryCode = passwordRecoveryCode;
    }

    public Timestamp getRecoveryTime() {
        return recoveryTime;
    }

    public void setRecoveryTime(Timestamp recoveryTime) {
        this.recoveryTime = recoveryTime;
    }

    public CodeProcessing getCodeProcessing() {
        return codeProcessing;
    }

    public void setCodeProcessing(CodeProcessing codeProcessing) {
        this.codeProcessing = codeProcessing;
    }

}
