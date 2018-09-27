package com.sxt.bookstore.entity;




/**
 * 管理员表(ADMINS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Admins implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -6691446239747194616L;

    /** 管理员id */
    private Integer aId;

    /** 用户名 */
    private String aUsername;

    /** 密码 */
    private String aPassword;

    /** 管理员级别 */
    private Integer aLevel;
    
    /**
     * 获取管理员id
     * 
     * @return 管理员id
     */
    public Integer getAId() {
        return this.aId;
    }
    
    /**
     * 设置管理员id
     * 
     * @param aId
     *          管理员id
     */
    public void setAId(Integer aId) {
        this.aId = aId;
    }
    
    /**
     * 获取用户名
     * 
     * @return 用户名
     */
    public String getAUsername() {
        return this.aUsername;
    }
    
    /**
     * 设置用户名
     * 
     * @param aUsername
     *          用户名
     */
    public void setAUsername(String aUsername) {
        this.aUsername = aUsername;
    }
    
    /**
     * 获取密码
     * 
     * @return 密码
     */
    public String getAPassword() {
        return this.aPassword;
    }
    
    /**
     * 设置密码
     * 
     * @param aPassword
     *          密码
     */
    public void setAPassword(String aPassword) {
        this.aPassword = aPassword;
    }
    
    /**
     * 获取管理员级别
     * 
     * @return 管理员级别
     */
    public Integer getALevel() {
        return this.aLevel;
    }
    
    /**
     * 设置管理员级别
     * 
     * @param aLevel
     *          管理员级别
     */
    public void setALevel(Integer aLevel) {
        this.aLevel = aLevel;
    }
}