package com.muhuan.service;

import com.muhuan.api.bean.mail.Email;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import javax.mail.internet.MimeMessage;

/**
 * @ClassName EmailService
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/19
 * @Version 1.0.0
 **/
@Service
public class EmailService {
    private static final Logger Log = LoggerFactory.getLogger(EmailService.class);
    @Autowired
    private JavaMailSender mailSender;

    /**
     * 发送简单文本文件
     */

    @Async
    public void sendSimpleEmail(Email email){
        try {
            SimpleMailMessage message=new SimpleMailMessage();
            message.setFrom(email.getFrom());
            message.setTo(email.getTo());
            message.setSubject(email.getSubject());
            message.setText(email.getText());


            mailSender.send(message);
            Log.info("邮箱发送成功");

        }catch (Exception e){
            Log.info("发送简单文本异常");
        }
    }

    /**
     * 发送html文本
     * @param
     */
    @Async
    public void sendHTMLMail(Email email){
        try {
            MimeMessage message=mailSender.createMimeMessage();
            MimeMessageHelper messageHelper=new MimeMessageHelper(message,true,"utf-8");
            messageHelper.setFrom(email.getFrom());
            messageHelper.setTo(email.getTo());
            messageHelper.setSubject(email.getSubject());
            messageHelper.setText(email.getText(),true);

            mailSender.send(message);
            Log.info("邮箱发送成功");

        }catch (Exception e){
            Log.info("发送HTML文本异常");
        }
    }
}
