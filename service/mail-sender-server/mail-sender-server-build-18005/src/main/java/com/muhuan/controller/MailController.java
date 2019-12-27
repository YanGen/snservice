package com.muhuan.controller;

import com.muhuan.api.bean.ajax.ResponseResult;
import com.muhuan.api.bean.mail.Email;
import com.muhuan.api.util.ResultGeneratorUtil;
import com.muhuan.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @ClassName MailController
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@RestController
@RequestMapping("/mail")
@CrossOrigin(allowCredentials = "true", allowedHeaders = "*")
public class MailController {
    private final EmailService service;

    @Autowired
    public MailController(EmailService service) {
        this.service = service;
    }
    @PostMapping("/html")
    public ResponseResult html(@RequestBody Email email){

        service.sendHTMLMail(email);

        return ResultGeneratorUtil.getResultSuccessWithData("提交成功");

    }
    @PostMapping("/simple")
    public ResponseResult simple(@RequestBody Email email){

        service.sendSimpleEmail(email);

        return ResultGeneratorUtil.getResultSuccessWithData("提交成功");

    }





}
