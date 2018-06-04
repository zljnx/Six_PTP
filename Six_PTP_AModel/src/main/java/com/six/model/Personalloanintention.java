package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Personalloanintention implements Serializable{

    private static final long serialVersionUID = 3831969430315122566L;
    private Integer grjkid;//个人企业借款意向管理主键
    private String username;//联系人
    private String userphone;//联系人手机号
    private Double grAmount;//借款金额
    private String grdeadline;//借款期限
    private Integer grjktype;//借款类型
    private String grcity;//所在省市县
    private String grFundraisingdeadline;//筹款期限
    private String grjkdescribe;//借款描述
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date grsubmittime;//提交时间
    private Integer grjkstatus;//借款状态：1.未处理2.已处理
    private String firmname;//企业名称
    private String registrationnumber;//注册号
    private Integer enterpriseid;//企业的id
    private Integer qiyeorgeren;//企业或个人
    private String dispose;//处理内容
    private String loginname;//会员账号
    private String handler;//处理人
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date handlingtime; //处理时间
    private String province;//省
    private String city;//市
    private String area;//县

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getGrjkid() {
        return grjkid;
    }

    public void setGrjkid(Integer grjkid) {
        this.grjkid = grjkid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public Double getGrAmount() {
        return grAmount;
    }

    public void setGrAmount(Double grAmount) {
        this.grAmount = grAmount;
    }

    public String getGrdeadline() {
        return grdeadline;
    }

    public void setGrdeadline(String grdeadline) {
        this.grdeadline = grdeadline;
    }

    public Integer getGrjktype() {
        return grjktype;
    }

    public void setGrjktype(Integer grjktype) {
        this.grjktype = grjktype;
    }

    public String getGrcity() {
        return grcity;
    }

    public void setGrcity(String grcity) {
        this.grcity = grcity;
    }

    public String getGrFundraisingdeadline() {
        return grFundraisingdeadline;
    }

    public void setGrFundraisingdeadline(String grFundraisingdeadline) {
        this.grFundraisingdeadline = grFundraisingdeadline;
    }

    public String getGrjkdescribe() {
        return grjkdescribe;
    }

    public void setGrjkdescribe(String grjkdescribe) {
        this.grjkdescribe = grjkdescribe;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getGrsubmittime() {
        return grsubmittime;
    }

    public void setGrsubmittime(Date grsubmittime) {
        this.grsubmittime = grsubmittime;
    }

    public Integer getGrjkstatus() {
        return grjkstatus;
    }

    public void setGrjkstatus(Integer grjkstatus) {
        this.grjkstatus = grjkstatus;
    }

    public String getFirmname() {
        return firmname;
    }

    public void setFirmname(String firmname) {
        this.firmname = firmname;
    }

    public String getRegistrationnumber() {
        return registrationnumber;
    }

    public void setRegistrationnumber(String registrationnumber) {
        this.registrationnumber = registrationnumber;
    }

    public Integer getEnterpriseid() {
        return enterpriseid;
    }

    public void setEnterpriseid(Integer enterpriseid) {
        this.enterpriseid = enterpriseid;
    }

    public Integer getQiyeorgeren() {
        return qiyeorgeren;
    }

    public void setQiyeorgeren(Integer qiyeorgeren) {
        this.qiyeorgeren = qiyeorgeren;
    }

    public String getDispose() {
        return dispose;
    }

    public void setDispose(String dispose) {
        this.dispose = dispose;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getHandler() {
        return handler;
    }

    public void setHandler(String handler) {
        this.handler = handler;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getHandlingtime() {
        return handlingtime;
    }

    public void setHandlingtime(Date handlingtime) {
        this.handlingtime = handlingtime;
    }

    public Personalloanintention(Integer grjkid, String username, String userphone, Double grAmount, String grdeadline, Integer grjktype, String grcity, String grFundraisingdeadline, String grjkdescribe, Date grsubmittime, Integer grjkstatus, String firmname, String registrationnumber, Integer enterpriseid, Integer qiyeorgeren, String dispose, String loginname, String handler, Date handlingtime, String province, String city, String area) {
        this.grjkid = grjkid;
        this.username = username;
        this.userphone = userphone;
        this.grAmount = grAmount;
        this.grdeadline = grdeadline;
        this.grjktype = grjktype;
        this.grcity = grcity;
        this.grFundraisingdeadline = grFundraisingdeadline;
        this.grjkdescribe = grjkdescribe;
        this.grsubmittime = grsubmittime;
        this.grjkstatus = grjkstatus;
        this.firmname = firmname;
        this.registrationnumber = registrationnumber;
        this.enterpriseid = enterpriseid;
        this.qiyeorgeren = qiyeorgeren;
        this.dispose = dispose;
        this.loginname = loginname;
        this.handler = handler;
        this.handlingtime = handlingtime;
        this.province = province;
        this.city = city;
        this.area = area;
    }

    public Personalloanintention() {
    }

    @Override
    public String toString() {
        return "Personalloanintention{" +
                "grjkid=" + grjkid +
                ", username='" + username + '\'' +
                ", userphone='" + userphone + '\'' +
                ", grAmount=" + grAmount +
                ", grdeadline='" + grdeadline + '\'' +
                ", grjktype=" + grjktype +
                ", grcity='" + grcity + '\'' +
                ", grFundraisingdeadline='" + grFundraisingdeadline + '\'' +
                ", grjkdescribe='" + grjkdescribe + '\'' +
                ", grsubmittime=" + grsubmittime +
                ", grjkstatus=" + grjkstatus +
                ", firmname='" + firmname + '\'' +
                ", registrationnumber='" + registrationnumber + '\'' +
                ", enterpriseid=" + enterpriseid +
                ", qiyeorgeren=" + qiyeorgeren +
                ", dispose='" + dispose + '\'' +
                ", loginname='" + loginname + '\'' +
                ", handler='" + handler + '\'' +
                ", handlingtime=" + handlingtime +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", area='" + area + '\'' +
                '}';
    }
}
