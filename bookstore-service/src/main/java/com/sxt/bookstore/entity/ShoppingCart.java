package com.sxt.bookstore.entity;

import java.util.Date;


/**
 * 购物车表(SHOPPING_CART)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class ShoppingCart implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 2589280739102054453L;

    /** id */
    private Integer scId;

    /** 用户id */
    private Integer scUId;

    /** 商品id */
    private Integer scBId;

    /** 商品数量 */
    private Integer scNumber;

    /** 生成日期 */
    private Date scCreateTime;

    /** 更新日期 */
    private Date scUpdatetimeTime;
    
    /**
     * 获取id
     * 
     * @return id
     */
    public Integer getScId() {
        return this.scId;
    }
    
    /**
     * 设置id
     * 
     * @param scId
     *          id
     */
    public void setScId(Integer scId) {
        this.scId = scId;
    }
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getScUId() {
        return this.scUId;
    }
    
    /**
     * 设置用户id
     * 
     * @param scUId
     *          用户id
     */
    public void setScUId(Integer scUId) {
        this.scUId = scUId;
    }
    
    /**
     * 获取商品id
     * 
     * @return 商品id
     */
    public Integer getScBId() {
        return this.scBId;
    }
    
    /**
     * 设置商品id
     * 
     * @param scBId
     *          商品id
     */
    public void setScBId(Integer scBId) {
        this.scBId = scBId;
    }
    
    /**
     * 获取商品数量
     * 
     * @return 商品数量
     */
    public Integer getScNumber() {
        return this.scNumber;
    }
    
    /**
     * 设置商品数量
     * 
     * @param scNumber
     *          商品数量
     */
    public void setScNumber(Integer scNumber) {
        this.scNumber = scNumber;
    }
    
    /**
     * 获取生成日期
     * 
     * @return 生成日期
     */
    public Date getScCreateTime() {
        return this.scCreateTime;
    }
    
    /**
     * 设置生成日期
     * 
     * @param scCreateTime
     *          生成日期
     */
    public void setScCreateTime(Date scCreateTime) {
        this.scCreateTime = scCreateTime;
    }
    
    /**
     * 获取更新日期
     * 
     * @return 更新日期
     */
    public Date getScUpdatetimeTime() {
        return this.scUpdatetimeTime;
    }
    
    /**
     * 设置更新日期
     * 
     * @param scUpdatetimeTime
     *          更新日期
     */
    public void setScUpdatetimeTime(Date scUpdatetimeTime) {
        this.scUpdatetimeTime = scUpdatetimeTime;
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "scId=" + scId +
                ", scUId=" + scUId +
                ", scBId=" + scBId +
                ", scNumber=" + scNumber +
                ", scCreateTime=" + scCreateTime +
                ", scUpdatetimeTime=" + scUpdatetimeTime +
                '}';
    }
}