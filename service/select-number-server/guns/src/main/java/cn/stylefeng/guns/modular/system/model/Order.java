package cn.stylefeng.guns.modular.system.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 订单表
 * </p>
 *
 * @author stylefeng
 * @since 2019-11-08
 */
@TableName("select_order")
public class Order extends Model<Order> {

    private static final long serialVersionUID = 1L;

    /**
     * 引位
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 插入时间
     */
    @TableField("insert_time")
    private Long insertTime;
    /**
     * 最新操作时间
     */
    @TableField("update_time")
    private Long updateTime;
    /**
     * 删除标记
     */
    @TableField("delete_flag")
    private Integer deleteFlag;
    /**
     * 选号号码
     */
    @TableField("number_id")
    private Integer numberId;
    /**
     * 过程
     */
    private String processed;
    /**
     * 状态
     */
    private String status;
    /**
     * 付款渠道
     */
    @TableField("pay_chanel")
    private String payChanel;
    /**
     * 顾客姓名
     */
    private String customer;
    /**
     * 联系方式
     */
    private String contact;
    /**
     * QQ号
     */
    private String qq;
    /**
     * 微信号
     */
    private String wx;
    /**
     * 地址
     */
    private String location;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Long insertTime) {
        this.insertTime = insertTime;
    }

    public Long getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Long updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public Integer getNumberId() {
        return numberId;
    }

    public void setNumberId(Integer numberId) {
        this.numberId = numberId;
    }

    public String getProcessed() {
        return processed;
    }

    public void setProcessed(String processed) {
        this.processed = processed;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPayChanel() {
        return payChanel;
    }

    public void setPayChanel(String payChanel) {
        this.payChanel = payChanel;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getWx() {
        return wx;
    }

    public void setWx(String wx) {
        this.wx = wx;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Order{" +
        ", id=" + id +
        ", insertTime=" + insertTime +
        ", updateTime=" + updateTime +
        ", deleteFlag=" + deleteFlag +
        ", numberId=" + numberId +
        ", processed=" + processed +
        ", status=" + status +
        ", payChanel=" + payChanel +
        ", customer=" + customer +
        ", contact=" + contact +
        ", qq=" + qq +
        ", wx=" + wx +
        ", location=" + location +
        "}";
    }
}
