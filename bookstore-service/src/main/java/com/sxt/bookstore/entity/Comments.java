package com.sxt.bookstore.entity;

import java.util.Date;


/**
 * 评论表(COMMENTS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Comments implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -2537417247203060105L;

    /** 评论id */
    private Integer cId;

    /** 商品id */
    private Integer cBId;

    /** 用户id */
    private Integer cUId;

    /** 父评论id */
    private Integer cParentId;

    /** 回复目标id */
    private Integer cUTargetId;

    /** 评论内容 */
    private String cContent;

    /** 评论时间 */
    private Date cTime;
    
    /**
     * 获取评论id
     * 
     * @return 评论id
     */
    public Integer getCId() {
        return this.cId;
    }
    
    /**
     * 设置评论id
     * 
     * @param cId
     *          评论id
     */
    public void setCId(Integer cId) {
        this.cId = cId;
    }
    
    /**
     * 获取商品id
     * 
     * @return 商品id
     */
    public Integer getCBId() {
        return this.cBId;
    }
    
    /**
     * 设置商品id
     * 
     * @param cBId
     *          商品id
     */
    public void setCBId(Integer cBId) {
        this.cBId = cBId;
    }
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getCUId() {
        return this.cUId;
    }
    
    /**
     * 设置用户id
     * 
     * @param cUId
     *          用户id
     */
    public void setCUId(Integer cUId) {
        this.cUId = cUId;
    }
    
    /**
     * 获取父评论id
     * 
     * @return 父评论id
     */
    public Integer getCParentId() {
        return this.cParentId;
    }
    
    /**
     * 设置父评论id
     * 
     * @param cParentId
     *          父评论id
     */
    public void setCParentId(Integer cParentId) {
        this.cParentId = cParentId;
    }
    
    /**
     * 获取回复目标id
     * 
     * @return 回复目标id
     */
    public Integer getCUTargetId() {
        return this.cUTargetId;
    }
    
    /**
     * 设置回复目标id
     * 
     * @param cUTargetId
     *          回复目标id
     */
    public void setCUTargetId(Integer cUTargetId) {
        this.cUTargetId = cUTargetId;
    }
    
    /**
     * 获取评论内容
     * 
     * @return 评论内容
     */
    public String getCContent() {
        return this.cContent;
    }
    
    /**
     * 设置评论内容
     * 
     * @param cContent
     *          评论内容
     */
    public void setCContent(String cContent) {
        this.cContent = cContent;
    }
    
    /**
     * 获取评论时间
     * 
     * @return 评论时间
     */
    public Date getCTime() {
        return this.cTime;
    }
    
    /**
     * 设置评论时间
     * 
     * @param cTime
     *          评论时间
     */
    public void setCTime(Date cTime) {
        this.cTime = cTime;
    }
}