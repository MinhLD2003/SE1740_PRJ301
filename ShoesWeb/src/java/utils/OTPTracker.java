/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.HashMap;
import java.util.Map;
import model.auth.UserLogin;

/**
 *
 * @author Admin
 */
public class OTPTracker {

    private static final int MAX_OTP_ATTEMPTS = 5;
    private Map<UserLogin, Map<String, Integer>> otpAttempts = new HashMap<>();

    private void inputNewOtp(UserLogin user) {
        String code = user.getEmailConfirmationCode();
        if (otpAttempts.containsKey(user)) {
            Map<String, Integer> attempts = otpAttempts.get(user);
            if (attempts.containsKey(code)) {
                attempts.put(code, attempts.get(code) + 1);
            } else {
                attempts.put(code, 1);
            }
        } else {
            Map<String, Integer> attempts = new HashMap<>();
            attempts.put(code, 1);
            otpAttempts.put(user, attempts);
        }
    }

    public boolean isMaxAttempts(UserLogin user) {
        String code = user.getEmailConfirmationCode();
        inputNewOtp(user);
        Map<String, Integer> personalAttempts = otpAttempts.get(user);
        if (personalAttempts.get(code) > MAX_OTP_ATTEMPTS) {
            personalAttempts.clear();
            return true;
        }

        return false;
    }

    public int getNumsOfAttempts(UserLogin user) {
        Map<String, Integer> personalAttempts = otpAttempts.get(user);
        return personalAttempts.get(user.getEmailConfirmationCode());
    }
}
