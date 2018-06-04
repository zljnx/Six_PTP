package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/25.
 */
public class WhbContract implements Serializable {

    private static final long serialVersionUID = -2387031632414030348L;

    private Integer b_id;
    private Integer id;
    private String b_mark;
    private String b_loantitle;
    private String b_contract;
    private Integer b_contracttype;
    private Integer b_bid;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date b_bdate;
    private Integer b_state;
    private String b_agreement;
    private Integer b_branchid;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date b_date;
    private String loginname;
    private String username;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getB_id() {
        return b_id;
    }

    public void setB_id(Integer b_id) {
        this.b_id = b_id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getB_mark() {
        return b_mark;
    }

    public void setB_mark(String b_mark) {
        this.b_mark = b_mark;
    }

    public String getB_loantitle() {
        return b_loantitle;
    }

    public void setB_loantitle(String b_loantitle) {
        this.b_loantitle = b_loantitle;
    }

    public String getB_contract() {
        return b_contract;
    }

    public void setB_contract(String b_contract) {
        this.b_contract = b_contract;
    }

    public Integer getB_contracttype() {
        return b_contracttype;
    }

    public void setB_contracttype(Integer b_contracttype) {
        this.b_contracttype = b_contracttype;
    }

    public Integer getB_bid() {
        return b_bid;
    }

    public void setB_bid(Integer b_bid) {
        this.b_bid = b_bid;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getB_bdate() {
        return b_bdate;
    }

    public void setB_bdate(Date b_bdate) {
        this.b_bdate = b_bdate;
    }

    public Integer getB_state() {
        return b_state;
    }

    public void setB_state(Integer b_state) {
        this.b_state = b_state;
    }

    public String getB_agreement() {
        return b_agreement;
    }

    public void setB_agreement(String b_agreement) {
        this.b_agreement = b_agreement;
    }

    public Integer getB_branchid() {
        return b_branchid;
    }

    public void setB_branchid(Integer b_branchid) {
        this.b_branchid = b_branchid;
    }

    public Date getB_date() {
        return b_date;
    }

    public void setB_date(Date b_date) {
        this.b_date = b_date;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public WhbContract(Integer b_id, Integer id, String b_mark, String b_loantitle, String b_contract, Integer b_contracttype, Integer b_bid, Date b_bdate, Integer b_state, String b_agreement, Integer b_branchid, Date b_date, String loginname, String username) {
        this.b_id = b_id;
        this.id = id;
        this.b_mark = b_mark;
        this.b_loantitle = b_loantitle;
        this.b_contract = b_contract;
        this.b_contracttype = b_contracttype;
        this.b_bid = b_bid;
        this.b_bdate = b_bdate;
        this.b_state = b_state;
        this.b_agreement = b_agreement;
        this.b_branchid = b_branchid;
        this.b_date = b_date;
        this.loginname = loginname;
        this.username = username;
    }

    public WhbContract() {

    }

    @Override
    public String toString() {
        return "WhbContract{" +
                "b_id=" + b_id +
                ", id=" + id +
                ", b_mark='" + b_mark + '\'' +
                ", b_loantitle='" + b_loantitle + '\'' +
                ", b_contract='" + b_contract + '\'' +
                ", b_contracttype=" + b_contracttype +
                ", b_bid=" + b_bid +
                ", b_bdate=" + b_bdate +
                ", b_state=" + b_state +
                ", b_agreement='" + b_agreement + '\'' +
                ", b_branchid=" + b_branchid +
                ", b_date=" + b_date +
                ", loginname='" + loginname + '\'' +
                ", username='" + username + '\'' +
                '}';
    }
}