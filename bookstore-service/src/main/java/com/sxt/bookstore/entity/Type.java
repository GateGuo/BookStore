package com.sxt.bookstore.entity;




/**
 * 图书类别表(TYPE)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Type implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -3451286876903541500L;

    /** 类别id */
    private Integer tId;

    /** 分类名称 */
    private String tName;

    /** 父类id */
    private Integer tParentId;

    /** 分类级别 */
    private Integer tLevel;
    
    /**
     * 获取类别id
     * 
     * @return 类别id
     */
    public Integer getTId() {
        return this.tId;
    }
    
    /**
     * 设置类别id
     * 
     * @param tId
     *          类别id
     */
    public void setTId(Integer tId) {
        this.tId = tId;
    }
    
    /**
     * 获取分类名称
     * 
     * @return 分类名称
     */
    public String getTName() {
        return this.tName;
    }
    
    /**
     * 设置分类名称
     * 
     * @param tName
     *          分类名称
     */
    public void setTName(String tName) {
        this.tName = tName;
    }
    
    /**
     * 获取父类id
     * 
     * @return 父类id
     */
    public Integer getTParentId() {
        return this.tParentId;
    }
    
    /**
     * 设置父类id
     * 
     * @param tParentId
     *          父类id
     */
    public void setTParentId(Integer tParentId) {
        this.tParentId = tParentId;
    }
    
    /**
     * 获取分类级别
     * 
     * @return 分类级别
     */
    public Integer getTLevel() {
        return this.tLevel;
    }
    
    /**
     * 设置分类级别
     * 
     * @param tLevel
     *          分类级别
     */
    public void setTLevel(Integer tLevel) {
        this.tLevel = tLevel;
    }


    @Override
    public String toString() {
        return "Type{" +
                "tId=" + tId +
                ", tName='" + tName + '\'' +
                ", tParentId=" + tParentId +
                ", tLevel=" + tLevel +
                '}';
    }
}