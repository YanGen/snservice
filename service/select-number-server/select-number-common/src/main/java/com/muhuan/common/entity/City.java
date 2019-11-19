package com.muhuan.common.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.muhuan.api.bean.entity.BaseEntityAndDelete;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @ClassName City
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/7
 * @Version 1.0.0
 **/
@Data
@AllArgsConstructor
@ToString
@EqualsAndHashCode
@TableName("select_city")
public class City  extends BaseEntityAndDelete<Integer> {
    private String province;
    private String city;
}
