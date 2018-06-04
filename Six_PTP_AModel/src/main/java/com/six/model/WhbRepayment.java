package com.six.model;


import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/16.
 */
public class WhbRepayment implements Serializable{
    private static final long serialVersionUID = 1038105986153130567L;
    private Integer c_id;
    private String c_title;
    private Integer id;
    private Double c_jiemoney;
    private String c_qishu;
    private Double c_huanmoney;
    private Double c_shengmoney;
    private String c_day;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date c_daytime;
    private String c_yuqiday;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public Date c_cuitime;
    private Integer c_status;
    private String s_id;
    private Integer c_phone;
    private String c_mailbox;
    private Integer c_record;
    private Integer c_repayment;
    private Double c_overduecost;
    private String c_loginname;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public String getC_title() {
        return c_title;
    }

    public void setC_title(String c_title) {
        this.c_title = c_title;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getC_jiemoney() {
        return c_jiemoney;
    }

    public void setC_jiemoney(Double c_jiemoney) {
        this.c_jiemoney = c_jiemoney;
    }

    public String getC_qishu() {
        return c_qishu;
    }

    public void setC_qishu(String c_qishu) {
        this.c_qishu = c_qishu;
    }

    public Double getC_huanmoney() {
        return c_huanmoney;
    }

    public void setC_huanmoney(Double c_huanmoney) {
        this.c_huanmoney = c_huanmoney;
    }

    public Double getC_shengmoney() {
        return c_shengmoney;
    }

    public void setC_shengmoney(Double c_shengmoney) {
        this.c_shengmoney = c_shengmoney;
    }

    public String getC_day() {
        return c_day;
    }

    public void setC_day(String c_day) {
        this.c_day = c_day;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getC_daytime() {
        return c_daytime;
    }

    public void setC_daytime(Date c_daytime) {
        this.c_daytime = c_daytime;
    }

    public String getC_yuqiday() {
        return c_yuqiday;
    }

    public void setC_yuqiday(String c_yuqiday) {
        this.c_yuqiday = c_yuqiday;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getC_cuitime() {
        return c_cuitime;
    }

    public void setC_cuitime(Date c_cuitime) {
        this.c_cuitime = c_cuitime;
    }

    public Integer getC_status() {
        return c_status;
    }

    public void setC_status(Integer c_status) {
        this.c_status = c_status;
    }

    public String getS_id() {
        return s_id;
    }

    public void setS_id(String s_id) {
        this.s_id = s_id;
    }

    public Integer getC_phone() {
        return c_phone;
    }

    public void setC_phone(Integer c_phone) {
        this.c_phone = c_phone;
    }

    public String getC_mailbox() {
        return c_mailbox;
    }

    public void setC_mailbox(String c_mailbox) {
        this.c_mailbox = c_mailbox;
    }

    public Integer getC_record() {
        return c_record;
    }

    public void setC_record(Integer c_record) {
        this.c_record = c_record;
    }

    public Integer getC_repayment() {
        return c_repayment;
    }

    public void setC_repayment(Integer c_repayment) {
        this.c_repayment = c_repayment;
    }

    public Double getC_overduecost() {
        return c_overduecost;
    }

    public void setC_overduecost(Double c_overduecost) {
        this.c_overduecost = c_overduecost;
    }

    public String getC_loginname() {
        return c_loginname;
    }

    public void setC_loginname(String c_loginname) {
        this.c_loginname = c_loginname;
    }

    public WhbRepayment(Integer c_id, String c_title, Integer id, Double c_jiemoney, String c_qishu, Double c_huanmoney, Double c_shengmoney, String c_day, Date c_daytime, String c_yuqiday, Date c_cuitime, Integer c_status, String s_id, Integer c_phone, String c_mailbox, Integer c_record, Integer c_repayment, Double c_overduecost, String c_loginname) {
        this.c_id = c_id;
        this.c_title = c_title;
        this.id = id;
        this.c_jiemoney = c_jiemoney;
        this.c_qishu = c_qishu;
        this.c_huanmoney = c_huanmoney;
        this.c_shengmoney = c_shengmoney;
        this.c_day = c_day;
        this.c_daytime = c_daytime;
        this.c_yuqiday = c_yuqiday;
        this.c_cuitime = c_cuitime;
        this.c_status = c_status;
        this.s_id = s_id;
        this.c_phone = c_phone;
        this.c_mailbox = c_mailbox;
        this.c_record = c_record;
        this.c_repayment = c_repayment;
        this.c_overduecost = c_overduecost;
        this.c_loginname = c_loginname;
    }

    @Override
    public String toString() {
        return "WhbRepayment{" +
                "c_id=" + c_id +
                ", c_title='" + c_title + '\'' +
                ", id=" + id +
                ", c_jiemoney=" + c_jiemoney +
                ", c_qishu='" + c_qishu + '\'' +
                ", c_huanmoney=" + c_huanmoney +
                ", c_shengmoney=" + c_shengmoney +
                ", c_day='" + c_day + '\'' +
                ", c_daytime=" + c_daytime +
                ", c_yuqiday='" + c_yuqiday + '\'' +
                ", c_cuitime=" + c_cuitime +
                ", c_status=" + c_status +
                ", s_id='" + s_id + '\'' +
                ", c_phone=" + c_phone +
                ", c_mailbox='" + c_mailbox + '\'' +
                ", c_record=" + c_record +
                ", c_repayment=" + c_repayment +
                ", c_overduecost=" + c_overduecost +
                ", c_loginname='" + c_loginname + '\'' +
                '}';
    }

    public WhbRepayment(){
        
     }

}
