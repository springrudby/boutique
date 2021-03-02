package com.rudby.boutique.utils;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.springframework.stereotype.Component;

@Component
public class SendEmail {

	public void sendmail(String correo) throws AddressException, MessagingException, IOException {
		Properties props = new Properties();
		   props.put("mail.smtp.auth", "true");
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		   props.put("mail.smtp.host", "smtp.gmail.com");
		   props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("cesarsdev@gmail.com", "pinedo2020");
			}
		});
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress("cesarsdev@gmail.com", false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(correo));//"xhesmastercesar@hotmail.com"));
		msg.setSubject("Tutorials point email");
		msg.setContent("Tutorials point email", "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Tutorials point email", "text/html");

		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
		MimeBodyPart attachPart = new MimeBodyPart();

//		attachPart.attachFile("/var/tmp/image19.png");
		attachPart.attachFile("D:\\Clientes\\Rugby\\GIT\\boutique\\src\\main\\resources\\static\\img\\cat-img-2.jpg");
		
		multipart.addBodyPart(attachPart);		
		msg.setContent(multipart);
		
		Transport.send(msg);
	}

}
