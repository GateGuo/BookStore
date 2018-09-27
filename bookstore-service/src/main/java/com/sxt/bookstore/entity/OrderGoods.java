package com.sxt.bookstore.entity;




/**
 * 订单商品表(ORDER_GOODS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class OrderGoods implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -7681910800839881028L;

    /** 商品id */
    private Integer ogId;

    /** 订单id */
    private Integer ogOrId;

    /** 商品数目 */
    private Integer ogNumber;

    /** 商品价格 */
    private Double ogPrice;
    
    /**
     * 获取商品id
     * 
     * @return 商品id
     */
    public Integer getOgId() {
        return this.ogId;
    }
    
    /**
     * 设置商品id
     * 
     * @param ogId
     *          商品id
     */
    public void setOgId(Integer ogId) {
        this.ogId = ogId;
    }
    
    /**
     * 获取订单id
     * 
     * @return 订单id
     */
    public Integer getOgOrId() {
        return this.ogOrId;
    }
    
    /**
     * 设置订单id
     * 
     * @param ogOrId
     *          订单id
     */
    public void setOgOrId(Integer ogOrId) {
        this.ogOrId = ogOrId;
    }
    
    /**
     * 获取商品数目
     * 
     * @return 商品数目
     */
    public Integer getOgNumber() {
        return this.ogNumber;
    }
    
    /**
     * 设置商品数目
     * 
     * @param ogNumber
     *          商品数目
     */
    public void setOgNumber(Integer ogNumber) {
        this.ogNumber = ogNumber;
    }
    
    /**
     * 获取商品价格
     * 
     * @return 商品价格
     */
    public Double getOgPrice() {
        return this.ogPrice;
    }
    
    /**
     * 设置商品价格
     * 
     * @param ogPrice
     *          商品价格
     */
    public void setOgPrice(Double ogPrice) {
        this.ogPrice = ogPrice;
    }
}