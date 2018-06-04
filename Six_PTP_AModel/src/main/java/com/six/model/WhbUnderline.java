package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/19.
 */
public class WhbUnderline implements Serializable{
    private static final long serialVersionUID = 1038105986153130567L;
    private Integer x_id;
    private String   x_username;
    private String    x_name;
    private String  x_Loan;

    private String  x_borrower;

    private Integer  x_mode;

    private String  x_collector;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date x_collectingtime;
    private String  x_resultssummary;
    private String  x_remarks;




    public Integer getX_id() {
        return x_id;
    }

    public void setX_id(Integer x_id) {
        this.x_id = x_id;
    }

    public String getX_Loan() {
        return x_Loan;
    }

    public void setX_Loan(String x_Loan) {
        this.x_Loan = x_Loan;
    }

    public String getX_borrower() {
        return x_borrower;
    }

    public void setX_borrower(String x_borrower) {
        this.x_borrower = x_borrower;
    }

    public Integer getX_mode() {
        return x_mode;
    }

    public void setX_mode(Integer x_mode) {
        this.x_mode = x_mode;
    }

    public String getX_collector() {
        return x_collector;
    }

    public void setX_collector(String x_collector) {
        this.x_collector = x_collector;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getX_collectingtime() {
        return x_collectingtime;
    }

    public void setX_collectingtime(Date x_collectingtime) {
        this.x_collectingtime = x_collectingtime;
    }

    public String getX_resultssummary() {
        return x_resultssummary;
    }

    public void setX_resultssummary(String x_resultssummary) {
        this.x_resultssummary = x_resultssummary;
    }

    public String getX_remarks() {
        return x_remarks;
    }

    public void setX_remarks(String x_remarks) {
        this.x_remarks = x_remarks;
    }

    public String getX_username() {
        return x_username;
    }

    public void setX_username(String x_username) {
        this.x_username = x_username;
    }

    public String getX_name() {
        return x_name;
    }

    public void setX_name(String x_name) {
        this.x_name = x_name;
    }

    public WhbUnderline(Integer x_id, String x_Loan, String x_borrower, Integer x_mode, String x_collector, Date x_collectingtime, String x_resultssummary, String x_remarks, String x_username, String x_name) {
        this.x_id = x_id;
        this.x_Loan = x_Loan;
        this.x_borrower = x_borrower;
        this.x_mode = x_mode;
        this.x_collector = x_collector;
        this.x_collectingtime = x_collectingtime;
        this.x_resultssummary = x_resultssummary;
        this.x_remarks = x_remarks;
        this.x_username = x_username;
        this.x_name = x_name;
    }
    public WhbUnderline() {

    }

    @Override
    public String toString() {
        return "WhbUnderline{" +
                "x_id=" + x_id +
                ", x_Loan='" + x_Loan + '\'' +
                ", x_borrower='" + x_borrower + '\'' +
                ", x_mode=" + x_mode +
                ", x_collector='" + x_collector + '\'' +
                ", x_collectingtime=" + x_collectingtime +
                ", x_resultssummary='" + x_resultssummary + '\'' +
                ", x_remarks='" + x_remarks + '\'' +
                ", x_username='" + x_username + '\'' +
                ", x_name='" + x_name + '\'' +
                '}';
    }
}
