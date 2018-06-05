package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class DingDanGuanLi implements Serializable{
    private static final long serialVersionUID = -702456074546799298L;

    private Integer ddid; //订单表的id、
    private Integer userid; //用户id
    private Integer ddtype; //订单类型
    private Double money; //金额(元)
    private Integer ddstatus; //订单状态
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date creationtime; //创建时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date submissiontime; //提交时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date finishtime; //完成时间
    private Integer ordersource;  //订单来源
    private String loginname; //登录名
    private String dingdanleixing; //订单类型   汉字

    public DingDanGuanLi(Integer ddid, Integer userid, Integer ddtype, Double money, Integer ddstatus, Date creationtime, Date submissiontime, Date finishtime, Integer ordersource, String loginname, String dingdanleixing) {
        this.ddid = ddid;
        this.userid = userid;
        this.ddtype = ddtype;
        this.money = money;
        this.ddstatus = ddstatus;
        this.creationtime = creationtime;
        this.submissiontime = submissiontime;
        this.finishtime = finishtime;
        this.ordersource = ordersource;
        this.loginname = loginname;
        this.dingdanleixing = dingdanleixing;
    }

    public DingDanGuanLi() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getDdid() {
        return ddid;
    }

    public void setDdid(Integer ddid) {
        this.ddid = ddid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getDdtype() {
        return ddtype;
    }

    public void setDdtype(Integer ddtype) {
        this.ddtype = ddtype;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getDdstatus() {
        return ddstatus;
    }

    public void setDdstatus(Integer ddstatus) {
        this.ddstatus = ddstatus;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(Date creationtime) {
        this.creationtime = creationtime;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getSubmissiontime() {
        return submissiontime;
    }

    public void setSubmissiontime(Date submissiontime) {
        this.submissiontime = submissiontime;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(Date finishtime) {
        this.finishtime = finishtime;
    }

    public Integer getOrdersource() {
        return ordersource;
    }

    public void setOrdersource(Integer ordersource) {
        this.ordersource = ordersource;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getDingdanleixing() {
        return dingdanleixing;
    }

    public void setDingdanleixing(String dingdanleixing) {
        this.dingdanleixing = dingdanleixing;
    }
}
