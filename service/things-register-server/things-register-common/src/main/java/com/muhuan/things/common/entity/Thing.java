package com.muhuan.things.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.muhuan.api.bean.entity.BaseEntityAndDelete;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.Date;

/**
 * @ClassName Thing
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@Data
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@TableName("things_thing")
public class Thing extends BaseEntityAndDelete<Integer> {
    private String thing;
    private Date executeTime;
    private Integer userId;
    private Integer status;
}
