/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;


/**
 *
 * @author Admin
 */
public class CodeProcessing {
    public String getOtpCode() {
        int otp = new Random().nextInt(900000) + 100000;
        return Integer.toString(otp);
    }
    public byte[] generateSalt() {
        byte[] bytes = new byte[20];
        SecureRandom scRnd = new SecureRandom();
        scRnd.nextBytes(bytes);
        return bytes;
    }

    public String generateHash(String password, byte[] salt, String algorithm) {
        try {
            MessageDigest digest = MessageDigest.getInstance(algorithm);
            digest.reset();
            digest.update(salt);
            byte[] hash = digest.digest(password.getBytes());
            return byteToStringHex(hash);
        } catch (NoSuchAlgorithmException ex) {
            System.out.println(ex);
        }
        return null;
    }

    private String byteToStringHex(byte[] hash) {
        StringBuilder hexString = new StringBuilder(2 * hash.length);
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if (hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
