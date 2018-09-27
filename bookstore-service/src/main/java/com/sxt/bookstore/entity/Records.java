package com.sxt.bookstore.entity;




/**
 * 咨询记录表(RECORDS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Records implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 8197901505133261153L;

    /** 记录id */
    private Integer rId;

    /** 用户id */
    private Integer rUId;

    /** 管理员id */
    private Integer rAId;

    /** 消息 */
    private String rMessage;

    /** 数据流向标记 */
    private Integer rMark;
    
    /**
     * 获取记录id
     * 
     * @return 记录id
     */
    public Integer getRId() {
        return this.rId;
    }
    
    /**
     * 设置记录id
     * 
     * @param rId
     *          记录id
     */
    public void setRId(Integer rId) {
        this.rId = rId;
    }
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getRUId() {
        return this.rUId;
    }
    
    /**
     * 设置用户id
     * 
     * @param rUId
     *          用户id
     */
    public void setRUId(Integer rUId) {
        this.rUId = rUId;
    }
    
    /**
     * 获取管理员id
     * 
     * @return 管理员id
     */
    public Integer getRAId() {
        return this.rAId;
    }
    
    /**
     * 设置管理员id
     * 
     * @param rAId
     *          管理员id
     */
    public void setRAId(Integer rAId) {
        this.rAId = rAId;
    }
    
    /**
     * 获取消息
     * 
     * @return 消息
     */
    public String getRMessage() {
        return this.rMessage;
    }
    
    /**
     * 设置消息
     * 
     * @param rMessage
     *          消息
     */
    public void setRMessage(String rMessage) {
        this.rMessage = rMessage;
    }
    
    /**
     * 获取数据流向标记
     * 
     * @return 数据流向标记
     */
    public Integer getRMark() {
        return this.rMark;
    }
    
    /**
     * 设置数据流向标记
     * 
     * @param rMark
     *          数据流向标记
     */
    public void setRMark(Integer rMark) {
        this.rMark = rMark;
    }
}