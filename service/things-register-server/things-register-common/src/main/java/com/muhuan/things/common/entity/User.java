package com.muhuan.things.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.*;

/**
 * @ClassName User
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@AllArgsConstructor
@NoArgsConstructor
@Data
@EqualsAndHashCode
@ToString
@TableName("things_user")
public class User {
    private String username;
    private String password;
}
