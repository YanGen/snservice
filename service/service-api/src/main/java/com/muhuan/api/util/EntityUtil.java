package com.muhuan.api.util;

import java.lang.reflect.Field;
import java.util.Map;

/**
 * @ClassName EntityUtil
 * @Description TODO 实体工具类
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/23
 * @Version 1.0.2
 **/
public class EntityUtil {

    /**
     * 实现将VO转成Entity,根据属性名自动映射，没有对应属性则为null
     * @param beTransfer
     * @param needTransfer
     * @param <T>
     * @return
     * @throws Exception
     */
    public static <T> T toEntity(Object beTransfer,Class<T> needTransfer) throws Exception{
        Field[] beTransferFields = beTransfer.getClass().getDeclaredFields();
        T t = needTransfer.newInstance();
        Field[] needTransferFields = t.getClass().getSuperclass().equals(Object.class)?t.getClass().getDeclaredFields():t.getClass().getSuperclass().getDeclaredFields();
        for (Field btf : beTransferFields) {
            btf.setAccessible(true);
            Object o = btf.get(beTransfer);
            for (Field ntf : needTransferFields) {
                ntf.setAccessible(true);
                if (btf.getName().equals(ntf.getName())) {
                    ntf.set(t, o);
                    break;
                }
            }
        }
        return t;
    }

    /**
     * 根据Map生成查询实体类（map中key字段采用sql下划线方式命名，与数据库的column对应）
     * @param entityClass
     * @param query
     * @param <T>
     * @return
     * @throws Exception
     */
    public static <T> T generatorQueryEntityByMap(Class<T> entityClass,Map<String,Object> query) throws Exception{
        T entity = entityClass.newInstance();
        Field[] fields = entity.getClass().getSuperclass().equals(Object.class)?entity.getClass().getDeclaredFields():entity.getClass().getSuperclass().getDeclaredFields();
        for (Map.Entry<String,Object> q:query.entrySet()){
            String lowerCaseCamel = StringUtil.transferLowerCaseCamel(q.getKey());
            for (Field field : fields) {
                field.setAccessible(true);
                if (field.getName().equals(lowerCaseCamel)){
                    field.set(entity,q.getValue());
                }
            }
        }
        return entity;
    }

    /**
     * 判断对象是否存在非空属性（v1.0.0属性若有类嵌套不做处理）
     * @param object
     * @return
     * @throws IllegalAccessException
     */
    public static boolean fieldHasNull(Object object) throws IllegalAccessException {
        Field[] fields = object.getClass().getDeclaredFields();
        for (Field field : fields) {
            field.setAccessible(true);
            if (field.get(object) == null) return false;
        }
        return true;
    }
}

