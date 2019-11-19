package com.muhuan.api.bean.page;

import lombok.Data;
import lombok.ToString;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName PageQuery
 * @Description TODO 分页查询类规范
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/8/8
 * @Version 1.0.0
 **/
@Data
@ToString
public abstract class PageQuery {
    private Map params = new HashMap(); // 查询参数
    private String orderColumn = "id"; // 排序列名
    private String order = "ASC"; // 排序方式:默认ASC升序，DESC逆序
    private int offset; // 分页查询初始记录偏移量
    private int limit; // 分页查询数据数量
}
