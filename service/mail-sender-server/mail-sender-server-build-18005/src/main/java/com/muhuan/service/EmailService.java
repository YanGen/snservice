package com.muhuan.service;

import cn.hutool.Hutool;
import cn.hutool.extra.mail.MailUtil;
import com.muhuan.api.bean.mail.Email;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

    /**
     * 发送简单文本文件
     */

    @Async
    public void sendSimpleEmail(Email email){
        try {

            MailUtil.send(email.getTo(), email.getSubject(), email.getText(), false);

            Log.info("邮箱发送成功");

        }catch (Exception e){
            e.printStackTrace();
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
            MailUtil.send(email.getTo(), email.getSubject(), email.getText(), true);

            Log.info("邮箱发送成功");

        }catch (Exception e){
            e.printStackTrace();
            Log.info("发送HTML文本异常");
        }
    }
}
