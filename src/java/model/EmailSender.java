package model;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EmailSender {

    private static final String SENDER_EMAIL = "dabre.nivea@gmail.com";
    private static final String PASSWORD = "ihatelovestory";

    public static void sendEmail(String email, int otp) {

        
        String to = email;
        // Sender's email ID needs to be mentioned
        //String from = SENDING_EMAIL;
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER_EMAIL, PASSWORD);
            }
        });

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);
            // Set From: header field of the header.
            message.setFrom(new InternetAddress(SENDER_EMAIL));
            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
                message.setSubject("Confirmation Email");
                // Now set the actual message
                message.setText("Your one time password is"
                        + otp);
            

            System.out.println("HERE");
            Transport.send(message);
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            System.out.println("EXCeptioN");
            mex.printStackTrace();
        }

    }

    public static void main(String args[]) {
        //UserBean user = new UserBean();
        //user.setUsername("jason");
        //user.setVcode(1234);
        //user.setEmail("jpstarmad@gmail.com");
        sendEmail("janicejabraham@gmail.com", 1234);
     
        //response.sendRedirect("verify.jsp");
    }

}
