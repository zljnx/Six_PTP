package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/24.
 */
public class WhbBad implements Serializable {

    private static final long serialVersionUID = -7946241292094712367L;

    private Integer b_id;

    private String  b_title;

    private String  b_transferee;

    private Integer zrid;

    private Double  Amountbond;

    private Double  transferprice;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date    b_date;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getB_id() {
        return b_id;
    }

    public void setB_id(Integer b_id) {
        this.b_id = b_id;
    }

    public String getB_title() {
        return b_title;
    }

    public void setB_title(String b_title) {
        this.b_title = b_title;
    }

    public String getB_transferee() {
        return b_transferee;
    }

    public void setB_transferee(String b_transferee) {
        this.b_transferee = b_transferee;
    }

    public Integer getZrid() {
        return zrid;
    }

    public void setZrid(Integer zrid) {
        this.zrid = zrid;
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
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getB_date() {
        return b_date;
    }

    public void setB_date(Date b_date) {
        this.b_date = b_date;
    }

    public WhbBad(Integer b_id, String b_title, String b_transferee, Integer zrid, Double amountbond, Double transferprice, Date b_date) {
        this.b_id = b_id;
        this.b_title = b_title;
        this.b_transferee = b_transferee;
        this.zrid = zrid;
        Amountbond = amountbond;
        this.transferprice = transferprice;
        this.b_date = b_date;
    }

    public WhbBad() {

    }

    @Override
    public String toString() {
        return "WhbBad{" +
                "b_id=" + b_id +
                ", b_title='" + b_title + '\'' +
                ", b_transferee='" + b_transferee + '\'' +
                ", zrid=" + zrid +
                ", Amountbond=" + Amountbond +
                ", transferprice=" + transferprice +
                ", b_date=" + b_date +
                '}';
    }
}
