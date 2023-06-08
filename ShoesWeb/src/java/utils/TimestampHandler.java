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
    public void setExpirationTime(UserAccount user) {
        long expirationTimeMillis = System.currentTimeMillis() + (5 * 60 * 1000); // 10 minutes
        Timestamp expirationTimestamp = new Timestamp(expirationTimeMillis);
    }
}
