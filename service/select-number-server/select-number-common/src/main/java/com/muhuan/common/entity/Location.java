package com.muhuan.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.muhuan.api.bean.entity.BaseEntityAndDelete;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @ClassName Location
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/4
 * @Version 1.0.0
 **/
@Data
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@TableName("location")
public class Location extends BaseEntityAndDelete<Integer> {
    private String provice;
    private String city;
}
