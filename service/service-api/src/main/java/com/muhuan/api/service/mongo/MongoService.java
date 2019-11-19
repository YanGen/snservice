package com.muhuan.api.service.mongo;

import com.muhuan.api.bean.entity.BaseEntity;
import org.springframework.cloud.openfeign.FeignClient;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @ClassName MongoService
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
@FeignClient(value = "UD-MONGODB-PROVIDER",fallbackFactory = MongoServiceFallbackFactory.class)
public interface MongoService <T extends BaseEntity, ID extends Serializable>{

    /** 新增 **/
    T add(T obj);
    List<T> add(T... objs);

    /** 删除 **/
    void deleteById(ID id);
    void deleteByIds(ID... ids);
    void delete(T obj);
    void deleteAll(T... objs);

    /** 修改 **/
    T update(T obj);
    List<T> update(T... objs);

    /** 查询 **/
    List<T> findAll();
    List<T> findAll(int pageSize, int pageNum);
    /** 带模糊查询 **/
    List<T> findAllByCondition(Map condition);
    List<T> findAllByCondition(Map condition, int pageSize, int pageNum);
    T findOneByCondition(Map condition);

    /** 带条件获取数量，null为全查 **/
    long count(Map condition);
}
