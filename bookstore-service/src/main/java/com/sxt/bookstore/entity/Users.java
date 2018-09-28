package com.sxt.bookstore.entity;




/**
 * 用户表(USERS)
 * 
 * @author Q2665_yubiums
 * @version 1.0.0 2018-09-28
 */
public class Users implements java.io.Serializable {
    /** 版本号 */
    private static final long serialVersionUID = 1564036633035143421L;

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

    /** 省市区id */
    private Integer uArId;

    /** 地址 */
    private String uAddress;

    /** 手机号码 */
    private String uPhonenumber;

    /** 账户余额 */
    private Double uAccountBalance;

    /** 销售余额 */
    private Double uSalesBalance;

    /** 总共充值金额 */
    private Double uTotalRecharge;

    /** 是否卖家 */
    private Integer uIsSeller;
    
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
     * 获取省市区id
     * 
     * @return 省市区id
     */
    public Integer getUArId() {
        return this.uArId;
    }
    
    /**
     * 设置省市区id
     * 
     * @param uArId
     *          省市区id
     */
    public void setUArId(Integer uArId) {
        this.uArId = uArId;
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
    
    /**
     * 获取账户余额
     * 
     * @return 账户余额
     */
    public Double getUAccountBalance() {
        return this.uAccountBalance;
    }
    
    /**
     * 设置账户余额
     * 
     * @param uAccountBalance
     *          账户余额
     */
    public void setUAccountBalance(Double uAccountBalance) {
        this.uAccountBalance = uAccountBalance;
    }
    
    /**
     * 获取销售余额
     * 
     * @return 销售余额
     */
    public Double getUSalesBalance() {
        return this.uSalesBalance;
    }
    
    /**
     * 设置销售余额
     * 
     * @param uSalesBalance
     *          销售余额
     */
    public void setUSalesBalance(Double uSalesBalance) {
        this.uSalesBalance = uSalesBalance;
    }
    
    /**
     * 获取总共充值金额
     * 
     * @return 总共充值金额
     */
    public Double getUTotalRecharge() {
        return this.uTotalRecharge;
    }
    
    /**
     * 设置总共充值金额
     * 
     * @param uTotalRecharge
     *          总共充值金额
     */
    public void setUTotalRecharge(Double uTotalRecharge) {
        this.uTotalRecharge = uTotalRecharge;
    }
    
    /**
     * 获取是否卖家
     * 
     * @return 是否卖家
     */
    public Integer getUIsSeller() {
        return this.uIsSeller;
    }
    
    /**
     * 设置是否卖家
     * 
     * @param uIsSeller
     *          是否卖家
     */
    public void setUIsSeller(Integer uIsSeller) {
        this.uIsSeller = uIsSeller;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uId=" + uId +
                ", uUsername='" + uUsername + '\'' +
                ", uPassword='" + uPassword + '\'' +
                ", uVipLevel=" + uVipLevel +
                ", uIdCard='" + uIdCard + '\'' +
                ", uName='" + uName + '\'' +
                ", uArId=" + uArId +
                ", uAddress='" + uAddress + '\'' +
                ", uPhonenumber='" + uPhonenumber + '\'' +
                ", uAccountBalance=" + uAccountBalance +
                ", uSalesBalance=" + uSalesBalance +
                ", uTotalRecharge=" + uTotalRecharge +
                ", uIsSeller=" + uIsSeller +
                '}';
    }
}