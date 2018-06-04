package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
 
public class Borrowingmanagement implements Serializable{

    private static final long serialVersionUID = -8871306055823068172L;
    private Integer jkid; //借款管理主键
    private String jksignid;//借款标的ID
    private String productname;//产品名称
    private String jkBorrowingtitle;//借款标题
    private String loginname;//借款账户
    private Double jkAmount;//借款金额
    private Double Investmentamount;//投资金额
    private String jkapr;//借款年利率
    private String jkdeadline;//借款期限
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date disposetime;//处理时间
    private String refundtype;//还款方式
    private String jkstatus;//借款状态
    private String biaoproperty;//标的属性
    private String borrowingtype;//借款类型
    private String accounttype;//账户类型
    private String identifytype;//标识类型
    private String source;//来源
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endtime;//业务字段
    private String scheme;//担保方案
    private Double awardlilv; //奖励利率
    private String paymenttype; //付息方式
    private String valuedate; //起息日
    private Double makeabargain; //成交服务费率
    private Double investguanli; //投资管理费率
    private Double overdue; //逾期罚息费率
    private Integer raisefunds; //筹款期限
    private Integer maxamount; //最大投资金额
    private String province; //省
    private String city; //市
    private String area; //县
    private String modeactivity; //活动使用方式
    private String csorbs; //投资端
    private String photo; //上传
    private String describea; //借款描述
    private Date yufabutime; // 预发布时间
    private Double haixuzijin; // 还需资金
    private Integer tuijian; //  0.不推荐 1.推荐

    public Borrowingmanagement(Integer jkid, String jksignid, String productname, String jkBorrowingtitle, String loginname, Double jkAmount, Double investmentamount, String jkapr, String jkdeadline, Date disposetime, String refundtype, String jkstatus, String biaoproperty, String borrowingtype, String accounttype, String identifytype, String source, Date endtime, String scheme, Double awardlilv, String paymenttype, String valuedate, Double makeabargain, Double investguanli, Double overdue, Integer raisefunds, Integer maxamount, String province, String city, String area, String modeactivity, String csorbs, String photo, String describea, Date yufabutime, Double haixuzijin, Integer tuijian) {
        this.jkid = jkid;
        this.jksignid = jksignid;
        this.productname = productname;
        this.jkBorrowingtitle = jkBorrowingtitle;
        this.loginname = loginname;
        this.jkAmount = jkAmount;
        Investmentamount = investmentamount;
        this.jkapr = jkapr;
        this.jkdeadline = jkdeadline;
        this.disposetime = disposetime;
        this.refundtype = refundtype;
        this.jkstatus = jkstatus;
        this.biaoproperty = biaoproperty;
        this.borrowingtype = borrowingtype;
        this.accounttype = accounttype;
        this.identifytype = identifytype;
        this.source = source;
        this.endtime = endtime;
        this.scheme = scheme;
        this.awardlilv = awardlilv;
        this.paymenttype = paymenttype;
        this.valuedate = valuedate;
        this.makeabargain = makeabargain;
        this.investguanli = investguanli;
        this.overdue = overdue;
        this.raisefunds = raisefunds;
        this.maxamount = maxamount;
        this.province = province;
        this.city = city;
        this.area = area;
        this.modeactivity = modeactivity;
        this.csorbs = csorbs;
        this.photo = photo;
        this.describea = describea;
        this.yufabutime = yufabutime;
        this.haixuzijin = haixuzijin;
        this.tuijian = tuijian;
    }

    public Borrowingmanagement() {
    }

    public String getScheme() {
        return scheme;
    }

    public void setScheme(String scheme) {
        this.scheme = scheme;
    }

    public Double getAwardlilv() {
        return awardlilv;
    }

    public void setAwardlilv(Double awardlilv) {
        this.awardlilv = awardlilv;
    }

    public String getPaymenttype() {
        return paymenttype;
    }

    public void setPaymenttype(String paymenttype) {
        this.paymenttype = paymenttype;
    }

    public String getValuedate() {
        return valuedate;
    }

    public void setValuedate(String valuedate) {
        this.valuedate = valuedate;
    }

    public Double getMakeabargain() {
        return makeabargain;
    }

    public void setMakeabargain(Double makeabargain) {
        this.makeabargain = makeabargain;
    }

    public Double getInvestguanli() {
        return investguanli;
    }

    public void setInvestguanli(Double investguanli) {
        this.investguanli = investguanli;
    }

    public Double getOverdue() {
        return overdue;
    }

    public void setOverdue(Double overdue) {
        this.overdue = overdue;
    }

    public Integer getRaisefunds() {
        return raisefunds;
    }

    public void setRaisefunds(Integer raisefunds) {
        this.raisefunds = raisefunds;
    }

    public Integer getMaxamount() {
        return maxamount;
    }

    public void setMaxamount(Integer maxamount) {
        this.maxamount = maxamount;
    }

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

    public String getModeactivity() {
        return modeactivity;
    }

    public void setModeactivity(String modeactivity) {
        this.modeactivity = modeactivity;
    }

    public String getCsorbs() {
        return csorbs;
    }

    public void setCsorbs(String csorbs) {
        this.csorbs = csorbs;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDescribea() {
        return describea;
    }

    public void setDescribea(String describea) {
        this.describea = describea;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getJkid() {
        return jkid;
    }

    public void setJkid(Integer jkid) {
        this.jkid = jkid;
    }

    public String getJksignid() {
        return jksignid;
    }

    public void setJksignid(String jksignid) {
        this.jksignid = jksignid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getJkBorrowingtitle() {
        return jkBorrowingtitle;
    }

    public void setJkBorrowingtitle(String jkBorrowingtitle) {
        this.jkBorrowingtitle = jkBorrowingtitle;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public Double getJkAmount() {
        return jkAmount;
    }

    public void setJkAmount(Double jkAmount) {
        this.jkAmount = jkAmount;
    }

    public Double getInvestmentamount() {
        return Investmentamount;
    }

    public void setInvestmentamount(Double investmentamount) {
        Investmentamount = investmentamount;
    }

    public String getJkapr() {
        return jkapr;
    }

    public void setJkapr(String jkapr) {
        this.jkapr = jkapr;
    }

    public String getJkdeadline() {
        return jkdeadline;
    }

    public void setJkdeadline(String jkdeadline) {
        this.jkdeadline = jkdeadline;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getDisposetime() {
        return disposetime;
    }

    public void setDisposetime(Date disposetime) {
        this.disposetime = disposetime;
    }

    public String getRefundtype() {
        return refundtype;
    }

    public void setRefundtype(String refundtype) {
        this.refundtype = refundtype;
    }

    public String getJkstatus() {
        return jkstatus;
    }

    public void setJkstatus(String jkstatus) {
        this.jkstatus = jkstatus;
    }

    public String getBiaoproperty() {
        return biaoproperty;
    }

    public void setBiaoproperty(String biaoproperty) {
        this.biaoproperty = biaoproperty;
    }

    public String getBorrowingtype() {
        return borrowingtype;
    }

    public void setBorrowingtype(String borrowingtype) {
        this.borrowingtype = borrowingtype;
    }

    public String getAccounttype() {
        return accounttype;
    }

    public void setAccounttype(String accounttype) {
        this.accounttype = accounttype;
    }

    public String getIdentifytype() {
        return identifytype;
    }

    public void setIdentifytype(String identifytype) {
        this.identifytype = identifytype;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getYufabutime() {
        return yufabutime;
    }

    public void setYufabutime(Date yufabutime) {
        this.yufabutime = yufabutime;
    }

    public Double getHaixuzijin() {
        return haixuzijin;
    }

    public void setHaixuzijin(Double haixuzijin) {
        this.haixuzijin = haixuzijin;
    }

    public Integer getTuijian() {
        return tuijian;
    }

    public void setTuijian(Integer tuijian) {
        this.tuijian = tuijian;
    }

    @Override
    public String toString() {
        return "Borrowingmanagement{" +
                "jkid=" + jkid +
                ", jksignid='" + jksignid + '\'' +
                ", productname='" + productname + '\'' +
                ", jkBorrowingtitle='" + jkBorrowingtitle + '\'' +
                ", loginname='" + loginname + '\'' +
                ", jkAmount=" + jkAmount +
                ", Investmentamount=" + Investmentamount +
                ", jkapr='" + jkapr + '\'' +
                ", jkdeadline='" + jkdeadline + '\'' +
                ", disposetime=" + disposetime +
                ", refundtype='" + refundtype + '\'' +
                ", jkstatus='" + jkstatus + '\'' +
                ", biaoproperty='" + biaoproperty + '\'' +
                ", borrowingtype='" + borrowingtype + '\'' +
                ", accounttype='" + accounttype + '\'' +
                ", identifytype='" + identifytype + '\'' +
                ", source='" + source + '\'' +
                ", endtime=" + endtime +
                ", scheme='" + scheme + '\'' +
                ", awardlilv=" + awardlilv +
                ", paymenttype='" + paymenttype + '\'' +
                ", valuedate='" + valuedate + '\'' +
                ", makeabargain=" + makeabargain +
                ", investguanli=" + investguanli +
                ", overdue=" + overdue +
                ", raisefunds=" + raisefunds +
                ", maxamount=" + maxamount +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", area='" + area + '\'' +
                ", modeactivity='" + modeactivity + '\'' +
                ", csorbs='" + csorbs + '\'' +
                ", photo='" + photo + '\'' +
                ", describea='" + describea + '\'' +
                ", yufabutime=" + yufabutime +
                ", haixuzijin=" + haixuzijin +
                ", tuijian=" + tuijian +
                '}';
    }
}
