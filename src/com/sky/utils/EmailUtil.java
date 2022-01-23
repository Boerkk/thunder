package com.sky.utils;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailUtil {
    //code验证码，email目标邮箱
    public static void sendEmail(String code, String email){
        Properties props= new Properties();
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.host","smtp.qq.com");
        props.put("mail.smtp.port","587");
        props.put("mail.user","523058438@qq.com");
        props.put("mail.password","misfxrrewfrkcaac");

        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName,password);
            }
        };
        Session mailSession = Session.getInstance(props,authenticator);
        MimeMessage message = new MimeMessage(mailSession);
        try {
            InternetAddress from = new InternetAddress(props.getProperty("mail.user"));
            message.setFrom(from);
            InternetAddress to = new InternetAddress(email);
            message.setRecipient(MimeMessage.RecipientType.TO,to);
            message.setSubject("闪电物流验证码");
            message.setContent("欢迎登录闪电物流，本次登录的验证码为："+code+"。\n本次验证码有效期为5分钟","text/html;charset=UTF-8");
            Transport.send(message);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static String getCode(){
        //定义一个空字符串
        String code = "";
        //进行6次循环
        for(int i = 0; i<6 ;i++) {
            //生成一个97~122之间的int类型整数
            int intVal = (int)(Math.random()*26+97);
            //将intValue强制转换为char 类型后连接到re后面
            code = code + (char)intVal;

        }
        return code;
    }
}
