package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/24.
 */
public class WhbAdvance  implements Serializable {

    private static final long serialVersionUID = -7156944323791672892L;

    private Integer a_id;

    private String  loginname;

    private Integer jkid;

    private String  a_title;

    private String  a_guarantee;

    private Double  a_amount;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date    a_date;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getA_id() {
        return a_id;
    }

    public void setA_id(Integer a_id) {
        this.a_id = a_id;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public Integer getJkid() {
        return jkid;
    }

    public void setJkid(Integer jkid) {
        this.jkid = jkid;
    }

    public String getA_title() {
        return a_title;
    }

    public void setA_title(String a_title) {
        this.a_title = a_title;
    }

    public String getA_guarantee() {
        return a_guarantee;
    }

    public void setA_guarantee(String a_guarantee) {
        this.a_guarantee = a_guarantee;
    }

    public Double getA_amount() {
        return a_amount;
    }

    public void setA_amount(Double a_amount) {
        this.a_amount = a_amount;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getA_date() {
        return a_date;
    }

    public void setA_date(Date a_date) {
        this.a_date = a_date;
    }

    public WhbAdvance(Integer a_id, String loginname, Integer jkid, String a_title, String a_guarantee, Double a_amount, Date a_date) {
        this.a_id = a_id;
        this.loginname = loginname;
        this.jkid = jkid;
        this.a_title = a_title;
        this.a_guarantee = a_guarantee;
        this.a_amount = a_amount;
        this.a_date = a_date;
    }
    public WhbAdvance() {

    }

    @Override
    public String toString() {
        return "WhbAdvance{" +
                "a_id=" + a_id +
                ", loginname='" + loginname + '\'' +
                ", jkid=" + jkid +
                ", a_title='" + a_title + '\'' +
                ", a_guarantee='" + a_guarantee + '\'' +
                ", a_amount=" + a_amount +
                ", a_date=" + a_date +
                '}';
    }
}
