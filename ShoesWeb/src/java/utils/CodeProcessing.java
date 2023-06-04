/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Arrays;
import java.util.Random;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

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
        byte[] bytes = new byte[8];
        SecureRandom scRnd = new SecureRandom();
        scRnd.nextBytes(bytes);
        return bytes;
    }

    public boolean authenticate(String attemptedPassword, String encryptedPassword, String salt) {
        // Encrypt the clear-text password using the same salt that was used to
        // encrypt the original password
        byte[] encryptedPasswordBytes = stringToBytes(encryptedPassword);
        byte[] saltBytes = stringToBytes(salt);
        byte[] encryptedAttemptedPassword = getEncryptedPassword(attemptedPassword, saltBytes);
        // Authentication succeeds if encrypted password that the user entered
        // is equal to the stored hash
        return Arrays.equals(encryptedPasswordBytes, encryptedAttemptedPassword);
    }

    public byte[] getEncryptedPassword(String password, byte[] salt) {
        try {
           
            String algorithm = "PBKDF2WithHmacSHA1";    
            int derivedKeyLength = 512;
            int iterations = 4096;
            KeySpec spec = new PBEKeySpec(password.toCharArray(), salt, iterations, derivedKeyLength);
            SecretKeyFactory f = SecretKeyFactory.getInstance(algorithm);
            try {
                return f.generateSecret(spec).getEncoded();
            } catch (InvalidKeySpecException ex) {
                System.out.println(ex);
            }
        } catch (NoSuchAlgorithmException ex) {
            System.out.println(ex);
        }
        return null;
    }
    public String bytesToString(byte[] bytes) {
        StringBuilder str = new StringBuilder();
        for(int i = 0 ; i < bytes.length ;i++) {
            str.append(bytes[i]).append(",");
        }
        return str.toString();
    }
    public byte[] stringToBytes(String str) {
        String[] splitArray = str.split(",");
        byte[] bytes = new byte[splitArray.length];
        for(int i = 0 ;i < splitArray.length ;i++) {
            bytes[i] = Byte.parseByte(splitArray[i]);
        }
        return bytes;
    }
    
}
