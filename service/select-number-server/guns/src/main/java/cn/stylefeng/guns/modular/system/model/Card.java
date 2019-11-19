package cn.stylefeng.guns.modular.system.model;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import org.springframework.web.multipart.MultipartFile;

import java.beans.Transient;
import java.io.Serializable;

/**
 * <p>
 * 号码表
 * </p>
 *
 * @author you
 * @since 2019-11-05
 */
@TableName("select_card")
public class Card extends Model<Card> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("insert_time")
    private Long insertTime;
    @TableField("update_time")
    private Long updateTime;
    @TableField("delete_flag")
    private Integer deleteFlag;
    @TableField("i_number")
    private String iNumber;
    private Float price;
    /**
     * 运营商
     */
    @TableField("operator_id")
    private Integer operatorId;
    /**
     * 省份
     */
    @TableField("province_id")
    private Integer provinceId;
    /**
     * 城市
     */
    @TableField("city_id")
    private Integer cityId;
    /**
     * 内含话费
     */
    @TableField("included_fee")
    private String includedFee;
    /**
     * 描述
     */
    private String detail;
    /**
     * 是否推荐
     */
    private Integer start;
    private String processed;
    /**
     * 状态
     */
    private String status;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(Integer provinceId) {
        this.provinceId = provinceId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
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

    public String getiNumber() {
        return iNumber;
    }

    public void setiNumber(String iNumber) {
        this.iNumber = iNumber;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Integer getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Integer operatorId) {
        this.operatorId = operatorId;
    }

    public String getIncludedFee() {
        return includedFee;
    }

    public void setIncludedFee(String includedFee) {
        this.includedFee = includedFee;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
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


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Card{" +
        ", id=" + id +
        ", insertTime=" + insertTime +
        ", updateTime=" + updateTime +
        ", deleteFlag=" + deleteFlag +
        ", number=" + iNumber +
        ", price=" + price +
        ", operatorId=" + operatorId +
        ", provinceId=" + provinceId +
        ", cityId=" + cityId +
        ", includedFee=" + includedFee +
        ", detail=" + detail +
        ", start=" + start +
        ", processed=" + processed +
        ", status=" + status +
        "}";
    }
}
