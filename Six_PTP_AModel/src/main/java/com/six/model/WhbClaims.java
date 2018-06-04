package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/24.
 */
public class WhbClaims implements Serializable {
    private static final long serialVersionUID = 960038585177833197L;

    private Integer c_id;

    private Integer zrid;

    private String  c_transferee;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date    c_date;

    private String sellers;

    private Double Amountbond;

    private Double transferprice;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getC_id() {
        return c_id;
    }

    public void setC_id(Integer c_id) {
        this.c_id = c_id;
    }

    public Integer getZrid() {
        return zrid;
    }

    public void setZrid(Integer zrid) {
        this.zrid = zrid;
    }

    public String getC_transferee() {
        return c_transferee;
    }

    public void setC_transferee(String c_transferee) {
        this.c_transferee = c_transferee;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getC_date() {
        return c_date;
    }

    public void setC_date(Date c_date) {
        this.c_date = c_date;
    }

    public String getSellers() {
        return sellers;
    }

    public void setSellers(String sellers) {
        this.sellers = sellers;
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

    public WhbClaims(Integer c_id, Integer zrid, String c_transferee, Date c_date, String sellers, Double amountbond, Double transferprice) {
        this.c_id = c_id;
        this.zrid = zrid;
        this.c_transferee = c_transferee;
        this.c_date = c_date;
        this.sellers = sellers;
        Amountbond = amountbond;
        this.transferprice = transferprice;
    }

    public WhbClaims(){
    }

    @Override
    public String toString() {
        return "WhbClaims{" +
                "c_id=" + c_id +
                ", zrid=" + zrid +
                ", c_transferee='" + c_transferee + '\'' +
                ", c_date=" + c_date +
                ", sellers='" + sellers + '\'' +
                ", Amountbond=" + Amountbond +
                ", transferprice=" + transferprice +
                '}';
    }
}
