/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
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
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
            props.put("mail.smtp.socketFactory.port", "465"); //SSL Port
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory"); //SSL Factory Class
            props.put("mail.smtp.auth", "true"); //Enabling SMTP Authentication
            props.put("mail.smtp.port", "465"); //SMTP Port

            Session session = Session.getInstance(props, new Authenticator() {
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
        } catch (MessagingException ex) {
            System.out.println("Fail");
        }
        return isSended;
    }

}
