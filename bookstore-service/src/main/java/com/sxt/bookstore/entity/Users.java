package com.sxt.bookstore.entity;




/**
 * 用户表(USERS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-27
 */
public class Users implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = -8358071221866406431L;

    /** 用户id */
    private Integer uId;

    /** 用户名 */
    private String uUsername;

    /** 密码 */
    private String uPassword;

    /** 会员等级 */
    private Integer uVipLevel;

    /** 身份证 */
    private String uIdCard;

    /** 姓名 */
    private String uName;

    /** 地址 */
    private String uAddress;

    /** 手机号码 */
    private String uPhonenumber;
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getUId() {
        return this.uId;
    }
    
    /**
     * 设置用户id
     * 
     * @param uId
     *          用户id
     */
    public void setUId(Integer uId) {
        this.uId = uId;
    }
    
    /**
     * 获取用户名
     * 
     * @return 用户名
     */
    public String getUUsername() {
        return this.uUsername;
    }
    
    /**
     * 设置用户名
     * 
     * @param uUsername
     *          用户名
     */
    public void setUUsername(String uUsername) {
        this.uUsername = uUsername;
    }
    
    /**
     * 获取密码
     * 
     * @return 密码
     */
    public String getUPassword() {
        return this.uPassword;
    }
    
    /**
     * 设置密码
     * 
     * @param uPassword
     *          密码
     */
    public void setUPassword(String uPassword) {
        this.uPassword = uPassword;
    }
    
    /**
     * 获取会员等级
     * 
     * @return 会员等级
     */
    public Integer getUVipLevel() {
        return this.uVipLevel;
    }
    
    /**
     * 设置会员等级
     * 
     * @param uVipLevel
     *          会员等级
     */
    public void setUVipLevel(Integer uVipLevel) {
        this.uVipLevel = uVipLevel;
    }
    
    /**
     * 获取身份证
     * 
     * @return 身份证
     */
    public String getUIdCard() {
        return this.uIdCard;
    }
    
    /**
     * 设置身份证
     * 
     * @param uIdCard
     *          身份证
     */
    public void setUIdCard(String uIdCard) {
        this.uIdCard = uIdCard;
    }
    
    /**
     * 获取姓名
     * 
     * @return 姓名
     */
    public String getUName() {
        return this.uName;
    }
    
    /**
     * 设置姓名
     * 
     * @param uName
     *          姓名
     */
    public void setUName(String uName) {
        this.uName = uName;
    }
    
    /**
     * 获取地址
     * 
     * @return 地址
     */
    public String getUAddress() {
        return this.uAddress;
    }
    
    /**
     * 设置地址
     * 
     * @param uAddress
     *          地址
     */
    public void setUAddress(String uAddress) {
        this.uAddress = uAddress;
    }
    
    /**
     * 获取手机号码
     * 
     * @return 手机号码
     */
    public String getUPhonenumber() {
        return this.uPhonenumber;
    }
    
    /**
     * 设置手机号码
     * 
     * @param uPhonenumber
     *          手机号码
     */
    public void setUPhonenumber(String uPhonenumber) {
        this.uPhonenumber = uPhonenumber;
    }
}