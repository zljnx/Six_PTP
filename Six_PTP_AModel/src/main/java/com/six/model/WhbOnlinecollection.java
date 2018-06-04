package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/19.
 */
public class WhbOnlinecollection implements Serializable {

    private static final long serialVersionUID = 1038105986153130567L;
    private Integer s_id;

    private String  s_loan;

    private String  s_borrower;

    private Integer  s_collectionmethod;

    private String s_collector;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date s_collectingtime;
    private String  s_title;
    private String  s_content;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getS_id() {
        return s_id;
    }

    public void setS_id(Integer s_id) {
        this.s_id = s_id;
    }

    public String getS_loan() {
        return s_loan;
    }

    public void setS_loan(String s_loan) {
        this.s_loan = s_loan;
    }

    public String getS_borrower() {
        return s_borrower;
    }

    public void setS_borrower(String s_borrower) {
        this.s_borrower = s_borrower;
    }

    public Integer getS_collectionmethod() {
        return s_collectionmethod;
    }

    public void setS_collectionmethod(Integer s_collectionmethod) {
        this.s_collectionmethod = s_collectionmethod;
    }

    public String getS_collector() {
        return s_collector;
    }

    public void setS_collector(String s_collector) {
        this.s_collector = s_collector;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getS_collectingtime() {
        return s_collectingtime;
    }

    public void setS_collectingtime(Date s_collectingtime) {
        this.s_collectingtime = s_collectingtime;
    }

    public String getS_title() {
        return s_title;
    }

    public void setS_title(String s_title) {
        this.s_title = s_title;
    }

    public String getS_content() {
        return s_content;
    }

    public void setS_content(String s_content) {
        this.s_content = s_content;
    }

    @Override
    public String toString() {
        return "WhbOnlinecollection{" +
                "s_id=" + s_id +
                ", s_loan='" + s_loan + '\'' +
                ", s_borrower='" + s_borrower + '\'' +
                ", s_collectionmethod=" + s_collectionmethod +
                ", s_collector='" + s_collector + '\'' +
                ", s_collectingtime=" + s_collectingtime +
                ", s_title='" + s_title + '\'' +
                ", s_content='" + s_content + '\'' +
                '}';
    }

    public WhbOnlinecollection(Integer s_id, String s_loan, String s_borrower, Integer s_collectionmethod, String s_collector, Date s_collectingtime, String s_title, String s_content) {
        this.s_id = s_id;
        this.s_loan = s_loan;
        this.s_borrower = s_borrower;
        this.s_collectionmethod = s_collectionmethod;
        this.s_collector = s_collector;
        this.s_collectingtime = s_collectingtime;
        this.s_title = s_title;
        this.s_content = s_content;
    }

    public WhbOnlinecollection() {

    }
}
