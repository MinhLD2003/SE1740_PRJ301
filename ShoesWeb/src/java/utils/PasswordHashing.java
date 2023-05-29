/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class PasswordHashing {
   
    public byte[] generateSalt() {
        byte[] bytes = new byte[20];
        SecureRandom scRnd = new SecureRandom();
        scRnd.nextBytes(bytes);
        return bytes;
    }
    public String generateHash(String password , byte[] salt , String algorithm){
        try {
            MessageDigest digest = MessageDigest.getInstance(password);
            digest.reset();
            digest.update(salt);
            byte[] hash = digest.digest(password.getBytes());
            return byteToStringHex(hash);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(PasswordHashing.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    private String byteToStringHex(byte[] hash) {
        StringBuilder hexString = new StringBuilder(2 * hash.length);
    for (int i = 0; i < hash.length; i++) {
        String hex = Integer.toHexString(0xff & hash[i]);
        if(hex.length() == 1) {
            hexString.append('0');
        }
        hexString.append(hex);
    }
    return hexString.toString();
    }
}
