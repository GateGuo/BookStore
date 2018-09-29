package com.sxt.bookstore.entity;

import java.util.Date;


/**
 * 图书表(BOOKS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-28
 */
public class Books implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -4266961626900454248L;

    /** 书籍id */
    private Integer bId;

    /** 书籍作者 */
    private String bAuthor;

    /** 书名 */
    private String bName;

    /** 价格 */
    private Double bPrice;

    /** 库存 */
    private Integer bCount;

    /** 标签 */
    private String bTag;

    /** 描述 */
    private String bDescription;

    /** 分类id */
    private Integer bTId;

    /** 上架时间 */
    private Date bUpTime;

    /** 销量 */
    private Integer bSalesVolume;

    /** 图片名 */
    private String bImgName;
    
    /**
     * 获取书籍id
     * 
     * @return 书籍id
     */
    public Integer getBId() {
        return this.bId;
    }
    
    /**
     * 设置书籍id
     * 
     * @param bId
     *          书籍id
     */
    public void setBId(Integer bId) {
        this.bId = bId;
    }
    
    /**
     * 获取书名
     * 
     * @return 书名
     */
    public String getBName() {
        return this.bName;
    }
    
    /**
     * 设置书名
     * 
     * @param bName
     *          书名
     */
    public void setBName(String bName) {
        this.bName = bName;
    }
    
    /**
     * 获取价格
     * 
     * @return 价格
     */
    public Double getBPrice() {
        return this.bPrice;
    }
    
    /**
     * 设置价格
     * 
     * @param bPrice
     *          价格
     */
    public void setBPrice(Double bPrice) {
        this.bPrice = bPrice;
    }
    
    /**
     * 获取库存
     * 
     * @return 库存
     */
    public Integer getBCount() {
        return this.bCount;
    }
    
    /**
     * 设置库存
     * 
     * @param bCount
     *          库存
     */
    public void setBCount(Integer bCount) {
        this.bCount = bCount;
    }
    
    /**
     * 获取标签
     * 
     * @return 标签
     */
    public String getBTag() {
        return this.bTag;
    }
    
    /**
     * 设置标签
     * 
     * @param bTag
     *          标签
     */
    public void setBTag(String bTag) {
        this.bTag = bTag;
    }
    
    /**
     * 获取描述
     * 
     * @return 描述
     */
    public String getBDescription() {
        return this.bDescription;
    }
    
    /**
     * 设置描述
     * 
     * @param bDescription
     *          描述
     */
    public void setBDescription(String bDescription) {
        this.bDescription = bDescription;
    }
    
    /**
     * 获取分类id
     * 
     * @return 分类id
     */
    public Integer getBTId() {
        return this.bTId;
    }
    
    /**
     * 设置分类id
     * 
     * @param bTId
     *          分类id
     */
    public void setBTId(Integer bTId) {
        this.bTId = bTId;
    }
    
    /**
     * 获取上架时间
     * 
     * @return 上架时间
     */
    public Date getBUpTime() {
        return this.bUpTime;
    }
    
    /**
     * 设置上架时间
     * 
     * @param bUpTime
     *          上架时间
     */
    public void setBUpTime(Date bUpTime) {
        this.bUpTime = bUpTime;
    }
    
    /**
     * 获取销量
     * 
     * @return 销量
     */
    public Integer getBSalesVolume() {
        return this.bSalesVolume;
    }
    
    /**
     * 设置销量
     * 
     * @param bSalesVolume
     *          销量
     */
    public void setBSalesVolume(Integer bSalesVolume) {
        this.bSalesVolume = bSalesVolume;
    }
    
    /**
     * 获取图片名
     * 
     * @return 图片名
     */
    public String getBImgName() {
        return this.bImgName;
    }
    
    /**
     * 设置图片名
     * 
     * @param bImgName
     *          图片名
     */
    public void setBImgName(String bImgName) {
        this.bImgName = bImgName;
    }

    public String getBAuthor() {
        return bAuthor;
    }

    public void setBAuthor(String bAuthor) {
        this.bAuthor = bAuthor;
    }

    @Override
    public String toString() {
        return "Books{" +
                "bId=" + bId +
                ", bAuthor='" + bAuthor + '\'' +
                ", bName='" + bName + '\'' +
                ", bPrice=" + bPrice +
                ", bCount=" + bCount +
                ", bTag='" + bTag + '\'' +
                ", bDescription='" + bDescription + '\'' +
                ", bTId=" + bTId +
                ", bUpTime=" + bUpTime +
                ", bSalesVolume=" + bSalesVolume +
                ", bImgName='" + bImgName + '\'' +
                '}';
    }
}