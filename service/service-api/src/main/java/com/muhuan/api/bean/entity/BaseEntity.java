package com.muhuan.api.bean.entity;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import lombok.*;
import org.springframework.data.mongodb.core.mapping.Field;

import java.io.Serializable;
import java.sql.Timestamp;
import java.time.LocalDateTime;

/**
 * @ClassName BaseEntity
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/9
 * @Version 1.0.0
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public abstract class BaseEntity implements Serializable {
    @Field("insert_time")
    @JsonSerialize(using = ToStringSerializer.class)
    protected long insertTime = Timestamp.valueOf(LocalDateTime.now()).getTime();
    @Field("update_time")
    @JsonSerialize(using = ToStringSerializer.class)
    protected long updateTime = Timestamp.valueOf(LocalDateTime.now()).getTime();
}
