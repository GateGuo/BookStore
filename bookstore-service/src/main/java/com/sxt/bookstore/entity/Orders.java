package com.sxt.bookstore.entity;

import java.util.Date;


/**
 * 订单表(ORDERS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Orders implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -2483327670330105562L;

    /** 订单id */
    private Integer orId;

    /** 订单编号 */
    private String orNumber;

    /** 用户id */
    private Integer orUId;

    /** 总金额 */
    private Double orTotalPrice;

    /** 支付金额 */
    private Double orPayPrice;

    /** 订单生成时间 */
    private Date orCreateTime;

    /** 订单完成时间 */
    private Date orFinishTime;

    /** 订单状态 */
    private Integer orStatus;
    
    /**
     * 获取订单id
     * 
     * @return 订单id
     */
    public Integer getOrId() {
        return this.orId;
    }
    
    /**
     * 设置订单id
     * 
     * @param orId
     *          订单id
     */
    public void setOrId(Integer orId) {
        this.orId = orId;
    }
    
    /**
     * 获取订单编号
     * 
     * @return 订单编号
     */
    public String getOrNumber() {
        return this.orNumber;
    }
    
    /**
     * 设置订单编号
     * 
     * @param orNumber
     *          订单编号
     */
    public void setOrNumber(String orNumber) {
        this.orNumber = orNumber;
    }
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getOrUId() {
        return this.orUId;
    }
    
    /**
     * 设置用户id
     * 
     * @param orUId
     *          用户id
     */
    public void setOrUId(Integer orUId) {
        this.orUId = orUId;
    }
    
    /**
     * 获取总金额
     * 
     * @return 总金额
     */
    public Double getOrTotalPrice() {
        return this.orTotalPrice;
    }
    
    /**
     * 设置总金额
     * 
     * @param orTotalPrice
     *          总金额
     */
    public void setOrTotalPrice(Double orTotalPrice) {
        this.orTotalPrice = orTotalPrice;
    }
    
    /**
     * 获取支付金额
     * 
     * @return 支付金额
     */
    public Double getOrPayPrice() {
        return this.orPayPrice;
    }
    
    /**
     * 设置支付金额
     * 
     * @param orPayPrice
     *          支付金额
     */
    public void setOrPayPrice(Double orPayPrice) {
        this.orPayPrice = orPayPrice;
    }
    
    /**
     * 获取订单生成时间
     * 
     * @return 订单生成时间
     */
    public Date getOrCreateTime() {
        return this.orCreateTime;
    }
    
    /**
     * 设置订单生成时间
     * 
     * @param orCreateTime
     *          订单生成时间
     */
    public void setOrCreateTime(Date orCreateTime) {
        this.orCreateTime = orCreateTime;
    }
    
    /**
     * 获取订单完成时间
     * 
     * @return 订单完成时间
     */
    public Date getOrFinishTime() {
        return this.orFinishTime;
    }
    
    /**
     * 设置订单完成时间
     * 
     * @param orFinishTime
     *          订单完成时间
     */
    public void setOrFinishTime(Date orFinishTime) {
        this.orFinishTime = orFinishTime;
    }
    
    /**
     * 获取订单状态
     * 
     * @return 订单状态
     */
    public Integer getOrStatus() {
        return this.orStatus;
    }
    
    /**
     * 设置订单状态
     * 
     * @param orStatus
     *          订单状态
     */
    public void setOrStatus(Integer orStatus) {
        this.orStatus = orStatus;
    }
}