/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import model.auth.UserLogin;

/**
 *
 * @author Admin
 */
public class EmailSending {

    public boolean sendEmail(UserLogin user) {
        boolean isSended = false;
        String usernameSender = "minhld8403@gmail.com";
        String passwordSender = "#anhlamk2003";
        try {
            Properties pr = new Properties();
            pr.setProperty("mail.smtp.host", "smtp.mail.com");
            pr.setProperty("mail.smtp.host", "587");
            pr.setProperty("mail.smtp.auth", "true");
            pr.setProperty("mail.smtp.starttls.enable", "true");

            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(usernameSender, passwordSender);
                }
            });

            Message mess = new MimeMessage(session);
            mess.setFrom(new InternetAddress(usernameSender));
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(user.getEmailAddress()));
            mess.setSubject("User Email Verification.");
            mess.setText("Registerd successfully. Please verify your account with this code:" + user.getEmailConfirmationCode());
            Transport.send(mess);
            isSended = true;
        } catch (Exception ex) {
        }
        return isSended;
    }

}
