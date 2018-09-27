package com.sxt.bookstore.entity;




/**
 * 区县行政编码字典表(AREA)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Area implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -313270080997826156L;

    /** arId */
    private Integer arId;

    /** 名称 */
    private String arName;

    /** 层级标识： 1  省份， 2  市， 3  区县 */
    private Integer arLevel;

    /** 父节点 */
    private Integer arParentId;
    
    /**
     * 获取arId
     * 
     * @return arId
     */
    public Integer getArId() {
        return this.arId;
    }
    
    /**
     * 设置arId
     * 
     * @param arId
     */
    public void setArId(Integer arId) {
        this.arId = arId;
    }
    
    /**
     * 获取名称
     * 
     * @return 名称
     */
    public String getArName() {
        return this.arName;
    }
    
    /**
     * 设置名称
     * 
     * @param arName
     *          名称
     */
    public void setArName(String arName) {
        this.arName = arName;
    }
    
    /**
     * 获取层级标识： 1  省份， 2  市， 3  区县
     * 
     * @return 层级标识： 1  省份
     */
    public Integer getArLevel() {
        return this.arLevel;
    }
    
    /**
     * 设置层级标识： 1  省份， 2  市， 3  区县
     * 
     * @param arLevel
     *          层级标识： 1  省份
     */
    public void setArLevel(Integer arLevel) {
        this.arLevel = arLevel;
    }
    
    /**
     * 获取父节点
     * 
     * @return 父节点
     */
    public Integer getArParentId() {
        return this.arParentId;
    }
    
    /**
     * 设置父节点
     * 
     * @param arParentId
     *          父节点
     */
    public void setArParentId(Integer arParentId) {
        this.arParentId = arParentId;
    }
}