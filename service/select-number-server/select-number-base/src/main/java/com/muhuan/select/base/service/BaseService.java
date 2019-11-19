package com.muhuan.select.base.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.muhuan.api.bean.entity.BaseEntityAndDelete;
import com.muhuan.api.bean.entity.EntityStatus;
import com.muhuan.api.util.StringUtil;
import com.muhuan.select.base.config.BeanUtil;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName BaseService
 * @Description TODO 通用的业务查询
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/18
 * @Version 1.0.0
 **/
public class BaseService<T extends BaseEntityAndDelete> {

    protected final BaseMapper<T> mapper;

    public BaseService(BaseMapper<T> mapper){
        this.mapper = mapper;
    }

    public T add(T e){
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime();
        e.setInsertTime(time);
        e.setUpdateTime(time);
        e.setDeleteFlag(EntityStatus.EXIST.getFlag());
        int insert = mapper.insert(e);
        return insert>0?e:null;
    }

    /**
     * （模拟删除，可恢复，包含级联删除）
     * @param id
     * @return
     */
    @Transactional
    public boolean deleteById(int id){
        //1.如果虚表不存在，创建虚表实例
        //2.获取当前id实例
        T entityAndDelete = getById(id);
        if (entityAndDelete == null) return false;
        //3.查看该实例的是否存在子表数据
        List<Class<T>> foreignKeys = entityAndDelete.getForeignKeys();
        if (foreignKeys != null && foreignKeys.size() > 0) {
            //4.1存在子表，则动态调用子表删除子表中数据
            for (Class<T> foreignKey : foreignKeys) {
                //4.1.1动态获取业务类（利用spring的IOC）
                String beanLowerCase = StringUtil.toFirstLowerCase(foreignKey.getSimpleName());
                String serviceBeanName = beanLowerCase + "Service";
                BaseService service = (BaseService) BeanUtil.getBean(serviceBeanName);
                if (service == null) {
                    System.out.println("不存在该业务 " + serviceBeanName + "实例！");
                    continue;
                }
                HashMap<String, Object> query = new HashMap<>(8);
                String underLine = StringUtil.toUnderLine(entityAndDelete.getClass().getSimpleName());
                System.out.println("->underline:" + underLine);
                query.put(underLine + "_id",id);
                //4.1.2通过外键查询记录是否存在
                List<T> list = service.getByMap(query);
                if (list != null && list.size()>0){
                    System.out.println("size:" + list.size());
                    for (T t : list) {
                        int pkid = (int) t.getId();
                        //4.1.3删除子表中存在该父表的主键的外键记录
                        service.deleteById(pkid);
                    }
                }
            }
        }
        //删除本身
        entityAndDelete.setDeleteFlag(EntityStatus.DELETE.getFlag());
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime();
        entityAndDelete.setUpdateTime(time);
        int i = mapper.updateById(entityAndDelete);
        return i > 0;
    }

    public boolean deleteByForeignKeyId(long id,String foreignKeyName){
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime();
        HashMap<String, Object> query = new HashMap<>(8);
        query.put(foreignKeyName, id);
        List<T> list = getByMap(query);
        boolean flag = true;
        for (T t : list) {
            t.setUpdateTime(time);
            t.setDeleteFlag(EntityStatus.DELETE.getFlag());
            flag = flag && mapper.updateById(t) > 0;
        }
        return flag;
    }

    /**
     * 删除数据库中delete_flag为1的数据(真实删除)
     * @return
     */
    @Transactional
    public boolean deleteAll(){
        QueryWrapper<T> queryWrapper = new QueryWrapper<T>();
        queryWrapper.eq("delete_flag", EntityStatus.DELETE.getFlag());
        int delete = mapper.delete(queryWrapper);
        return delete>0;
    }

    @Transactional
    public boolean update(T t){
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime();
        t.setUpdateTime(time);
        UpdateWrapper<T> updateWrapper = new UpdateWrapper<T>();
        HashMap<String, Object> map = new HashMap<>(8);
        map.put("id", t.getId());
        map.put("delete_flag", EntityStatus.EXIST.getFlag());
        updateWrapper.allEq(map);
        int update = mapper.update(t, updateWrapper);
        return update>0;
    }

    public boolean update(List<T> ts){
        return false;
    }

    public <T> T getById(int id){
        return mapper.selectById(id)!=null?(T) mapper.selectById(id):null;
    }

    public List<T> getAll(){
        QueryWrapper<T> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("delete_flag", EntityStatus.EXIST.getFlag());
        return mapper.selectList(queryWrapper);
    }

    public List<T> getByMap(Map<String,Object> query){
        if (!query.containsKey("delete_flag")){
            query.put("delete_flag", EntityStatus.EXIST.getFlag());
        }
        return mapper.selectByMap(query);
    }
}
