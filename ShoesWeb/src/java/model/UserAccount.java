/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

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
    private String roleName;
    private String fullName;
    private String phoneNumber;
    private String address;
    private Timestamp emailCreatedTime;
    private String passwordRecoveryCode;
    private Timestamp recoveryTime;
    private int isActive;

    public UserAccount() {
    }
    private CodeProcessing codeProcessing = new CodeProcessing();

    public UserAccount(String username, String emailAddress, String password , String fullname , String phone , String address) {
        byte[] salt = codeProcessing.generateSalt();
        byte[] passwordhash = codeProcessing.getEncryptedPassword(password, salt);
        this.username = username;
        this.passwordHash = codeProcessing.bytesToString(passwordhash);
        this.passwordSalt = codeProcessing.bytesToString(salt);
        this.emailAddress = emailAddress;
        this.fullName = fullname;
        this.phoneNumber = phone;
        this.address = address;
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

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "UserAccount{" + "id=" + id + ", username=" + username + ", emailAddress=" + emailAddress + ", passwordSalt=" + passwordSalt + ", passwordHash=" + passwordHash + ", emailConfirmationCode=" + emailConfirmationCode + ", roleName=" + roleName + ", fullName=" + fullName + ", phoneNumber=" + phoneNumber + ", address=" + address + ", emailCreatedTime=" + emailCreatedTime + ", passwordRecoveryCode=" + passwordRecoveryCode + ", recoveryTime=" + recoveryTime + ", isActive=" + isActive + ", codeProcessing=" + codeProcessing + '}';
    }

  

}
