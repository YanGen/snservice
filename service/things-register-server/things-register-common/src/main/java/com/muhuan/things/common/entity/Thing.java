package com.muhuan.things.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.muhuan.api.bean.entity.BaseEntityAndDelete;
import lombok.*;
import org.springframework.data.mongodb.core.mapping.Field;

import java.util.Date;

/**
 * @ClassName Thing
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
@TableName("things_thing")
public class Thing extends BaseEntityAndDelete<Integer> {
    private String thing;
    private Date executeTime;
    private Integer userId;
    private Integer status;
}
