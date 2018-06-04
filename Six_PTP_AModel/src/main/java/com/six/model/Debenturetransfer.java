package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class Debenturetransfer implements Serializable{


    private static final long serialVersionUID = -2475929054426498792L;
    private Integer zrid; //线上债券转让管理主键
    private String zqid; //债券ID
    private String signid; //标的ID
    private String Borrowingtitle; //借款标题
    private String sellers; //债权转让者
    private String Restperiods; //剩余期数
    private Double zrapr; //年利率
    private Double Amountbond; //债券价值
    private Double transferprice; //转让价格
    private Double transferrate; //转让费率
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date applyfortime; //申请时间
    private Integer zrstatus;//状态:0:待转让1:转让中2:已转让3:转让失败
    private Integer shangjiaorxiajia;//上架或下架:1：上架 2：下架
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endtime; //申请时间

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getZrid() {
        return zrid;
    }

    public void setZrid(Integer zrid) {
        this.zrid = zrid;
    }

    public String getZqid() {
        return zqid;
    }

    public void setZqid(String zqid) {
        this.zqid = zqid;
    }

    public String getSignid() {
        return signid;
    }

    public void setSignid(String signid) {
        this.signid = signid;
    }

    public String getBorrowingtitle() {
        return Borrowingtitle;
    }

    public void setBorrowingtitle(String borrowingtitle) {
        Borrowingtitle = borrowingtitle;
    }

    public String getSellers() {
        return sellers;
    }

    public void setSellers(String sellers) {
        this.sellers = sellers;
    }

    public String getRestperiods() {
        return Restperiods;
    }

    public void setRestperiods(String restperiods) {
        Restperiods = restperiods;
    }

    public Double getZrapr() {
        return zrapr;
    }

    public void setZrapr(Double zrapr) {
        this.zrapr = zrapr;
    }

    public Double getAmountbond() {
        return Amountbond;
    }

    public void setAmountbond(Double amountbond) {
        Amountbond = amountbond;
    }

    public Double getTransferprice() {
        return transferprice;
    }

    public void setTransferprice(Double transferprice) {
        this.transferprice = transferprice;
    }

    public Double getTransferrate() {
        return transferrate;
    }

    public void setTransferrate(Double transferrate) {
        this.transferrate = transferrate;
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getApplyfortime() {
        return applyfortime;
    }

    public void setApplyfortime(Date applyfortime) {
        this.applyfortime = applyfortime;
    }

    public Integer getZrstatus() {
        return zrstatus;
    }

    public void setZrstatus(Integer zrstatus) {
        this.zrstatus = zrstatus;
    }

    public Integer getShangjiaorxiajia() {
        return shangjiaorxiajia;
    }

    public void setShangjiaorxiajia(Integer shangjiaorxiajia) {
        this.shangjiaorxiajia = shangjiaorxiajia;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Debenturetransfer(Integer zrid, String zqid, String signid, String borrowingtitle, String sellers, String restperiods, Double zrapr, Double amountbond, Double transferprice, Double transferrate, Date applyfortime, Integer zrstatus, Integer shangjiaorxiajia, Date endtime) {
        this.zrid = zrid;
        this.zqid = zqid;
        this.signid = signid;
        Borrowingtitle = borrowingtitle;
        this.sellers = sellers;
        Restperiods = restperiods;
        this.zrapr = zrapr;
        Amountbond = amountbond;
        this.transferprice = transferprice;
        this.transferrate = transferrate;
        this.applyfortime = applyfortime;
        this.zrstatus = zrstatus;
        this.shangjiaorxiajia = shangjiaorxiajia;
        this.endtime = endtime;
    }

    public Debenturetransfer() {
    }

    @Override
    public String toString() {
        return "Debenturetransfer{" +
                "zrid=" + zrid +
                ", zqid=" + zqid +
                ", signid='" + signid + '\'' +
                ", Borrowingtitle='" + Borrowingtitle + '\'' +
                ", sellers='" + sellers + '\'' +
                ", Restperiods='" + Restperiods + '\'' +
                ", zrapr=" + zrapr +
                ", Amountbond=" + Amountbond +
                ", transferprice=" + transferprice +
                ", transferrate=" + transferrate +
                ", applyfortime=" + applyfortime +
                ", zrstatus=" + zrstatus +
                ", shangjiaorxiajia=" + shangjiaorxiajia +
                ", endtime=" + endtime +
                '}';
    }
}
