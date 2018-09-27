package com.sxt.bookstore.entity;

import java.util.Date;


/**
 * 二手图书表(OLD_BOOKS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class OldBooks implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 1879438300077615686L;

    /** 二手书籍id */
    private Integer obId;

    /** 二手书名 */
    private String obName;

    /** 二手书价格 */
    private Double obPrice;

    /** 库存 */
    private Integer obCount;

    /** 标签 */
    private String obTag;

    /** 描述 */
    private String obDescription;

    /** 分类id */
    private Integer obTypeId;

    /** 卖家id */
    private Integer obSellerId;

    /** 上架时间 */
    private Date obTime;
    
    /**
     * 获取二手书籍id
     * 
     * @return 二手书籍id
     */
    public Integer getObId() {
        return this.obId;
    }
    
    /**
     * 设置二手书籍id
     * 
     * @param obId
     *          二手书籍id
     */
    public void setObId(Integer obId) {
        this.obId = obId;
    }
    
    /**
     * 获取二手书名
     * 
     * @return 二手书名
     */
    public String getObName() {
        return this.obName;
    }
    
    /**
     * 设置二手书名
     * 
     * @param obName
     *          二手书名
     */
    public void setObName(String obName) {
        this.obName = obName;
    }
    
    /**
     * 获取二手书价格
     * 
     * @return 二手书价格
     */
    public Double getObPrice() {
        return this.obPrice;
    }
    
    /**
     * 设置二手书价格
     * 
     * @param obPrice
     *          二手书价格
     */
    public void setObPrice(Double obPrice) {
        this.obPrice = obPrice;
    }
    
    /**
     * 获取库存
     * 
     * @return 库存
     */
    public Integer getObCount() {
        return this.obCount;
    }
    
    /**
     * 设置库存
     * 
     * @param obCount
     *          库存
     */
    public void setObCount(Integer obCount) {
        this.obCount = obCount;
    }
    
    /**
     * 获取标签
     * 
     * @return 标签
     */
    public String getObTag() {
        return this.obTag;
    }
    
    /**
     * 设置标签
     * 
     * @param obTag
     *          标签
     */
    public void setObTag(String obTag) {
        this.obTag = obTag;
    }
    
    /**
     * 获取描述
     * 
     * @return 描述
     */
    public String getObDescription() {
        return this.obDescription;
    }
    
    /**
     * 设置描述
     * 
     * @param obDescription
     *          描述
     */
    public void setObDescription(String obDescription) {
        this.obDescription = obDescription;
    }
    
    /**
     * 获取分类id
     * 
     * @return 分类id
     */
    public Integer getObTypeId() {
        return this.obTypeId;
    }
    
    /**
     * 设置分类id
     * 
     * @param obTypeId
     *          分类id
     */
    public void setObTypeId(Integer obTypeId) {
        this.obTypeId = obTypeId;
    }
    
    /**
     * 获取卖家id
     * 
     * @return 卖家id
     */
    public Integer getObSellerId() {
        return this.obSellerId;
    }
    
    /**
     * 设置卖家id
     * 
     * @param obSellerId
     *          卖家id
     */
    public void setObSellerId(Integer obSellerId) {
        this.obSellerId = obSellerId;
    }
    
    /**
     * 获取上架时间
     * 
     * @return 上架时间
     */
    public Date getObTime() {
        return this.obTime;
    }
    
    /**
     * 设置上架时间
     * 
     * @param obTime
     *          上架时间
     */
    public void setObTime(Date obTime) {
        this.obTime = obTime;
    }
}