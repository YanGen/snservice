package com.muhuan.api.bean.mail;

import lombok.*;

/**
 * @ClassName Email
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/24
 * @Version 1.0.0
 **/
@AllArgsConstructor
@NoArgsConstructor
@Data
@EqualsAndHashCode
@ToString
public class Email {
    private String from;
    private String to;
    private String subject;
    private String text;
}
