/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Timestamp;
import model.auth.UserAccount;

/**
 *
 * @author Admin
 */
public class TimestampHandler {

    private final double OTP_EXPIRY_TIME = 1;

    public void setRecoveryCreatedTime(UserAccount user) {
        long createdTimeMillis = System.currentTimeMillis();
        Timestamp createdTimeTimeStamp = new Timestamp(createdTimeMillis);
        user.setRecoveryTime(createdTimeTimeStamp);
    }

    public void setEmailCreatedTime(UserAccount user) {
        long createdTimeMillis = System.currentTimeMillis();
        Timestamp createdTimeTimeStamp = new Timestamp(createdTimeMillis);
        user.setEmailCreatedTime(createdTimeTimeStamp);
    }

    public boolean isExpired(Timestamp createdTime) {
        Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
        long diffTime = currentTimestamp.getTime() - createdTime.getTime();
        return (diffTime > OTP_EXPIRY_TIME * 60 * 1000);
    }
}
