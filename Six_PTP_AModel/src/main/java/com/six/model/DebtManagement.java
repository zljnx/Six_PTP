package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;


public class DebtManagement implements Serializable{

    private static final long serialVersionUID = -1560063855610949638L;
    private Integer zqid; //债权管理主键
    private String signid; //标的ID
    private String Borrowingtitle; //借款标题
    private String investor; //投资人
    private Integer investortype; //投资人类型
    private Double zqapr; //年利率
    private String zqdeadline; //期限
    private Double Amountbond; //持有债权金额
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date investtime; //投资时间
    private Integer zqstatus; //状态：1.投资中2.回款中3.已结清4.已转出
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date settletime; //结清时间
    private String sellers; //卖出者
    private Integer sellerstype; //卖出者类型
    private String buyers; //买入者
    private Integer buyerstype; //买入者类型
    private Double transferprice; //转让价格

    public Integer getZqid() {
        return zqid;
    }

    public void setZqid(Integer zqid) {
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

    public String getInvestor() {
        return investor;
    }

    public void setInvestor(String investor) {
        this.investor = investor;
    }

    public Integer getInvestortype() {
        return investortype;
    }

    public void setInvestortype(Integer investortype) {
        this.investortype = investortype;
    }

    public Double getZqapr() {
        return zqapr;
    }

    public void setZqapr(Double zqapr) {
        this.zqapr = zqapr;
    }

    public String getZqdeadline() {
        return zqdeadline;
    }

    public void setZqdeadline(String zqdeadline) {
        this.zqdeadline = zqdeadline;
    }

    public Double getAmountbond() {
        return Amountbond;
    }

    public void setAmountbond(Double amountbond) {
        Amountbond = amountbond;
    }

    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getInvesttime() {
        return investtime;
    }

    public void setInvesttime(Date investtime) {
        this.investtime = investtime;
    }

    public Integer getZqstatus() {
        return zqstatus;
    }

    public void setZqstatus(Integer zqstatus) {
        this.zqstatus = zqstatus;
    }

    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getSettletime() {
        return settletime;
    }

    public void setSettletime(Date settletime) {
        this.settletime = settletime;
    }

    public String getSellers() {
        return sellers;
    }

    public void setSellers(String sellers) {
        this.sellers = sellers;
    }

    public Integer getSellerstype() {
        return sellerstype;
    }

    public void setSellerstype(Integer sellerstype) {
        this.sellerstype = sellerstype;
    }

    public String getBuyers() {
        return buyers;
    }

    public void setBuyers(String buyers) {
        this.buyers = buyers;
    }

    public Integer getBuyerstype() {
        return buyerstype;
    }

    public void setBuyerstype(Integer buyerstype) {
        this.buyerstype = buyerstype;
    }

    public Double getTransferprice() {
        return transferprice;
    }

    public void setTransferprice(Double transferprice) {
        this.transferprice = transferprice;
    }

    public DebtManagement(Integer zqid, String signid, String borrowingtitle, String investor, Integer investortype, Double zqapr, String zqdeadline, Double amountbond, Date investtime, Integer zqstatus, Date settletime, String sellers, Integer sellerstype, String buyers, Integer buyerstype, Double transferprice) {
        this.zqid = zqid;
        this.signid = signid;
        Borrowingtitle = borrowingtitle;
        this.investor = investor;
        this.investortype = investortype;
        this.zqapr = zqapr;
        this.zqdeadline = zqdeadline;
        Amountbond = amountbond;
        this.investtime = investtime;
        this.zqstatus = zqstatus;
        this.settletime = settletime;
        this.sellers = sellers;
        this.sellerstype = sellerstype;
        this.buyers = buyers;
        this.buyerstype = buyerstype;
        this.transferprice = transferprice;
    }

    public DebtManagement() {
    }
}
