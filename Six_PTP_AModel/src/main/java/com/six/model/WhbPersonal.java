package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/23.
 */
public class WhbPersonal implements Serializable {

    private static final long serialVersionUID = 8050153109042481454L;
    private Integer e_id;

    private String  e_title;

    private String  e_number;

    private String  corporate_name;

    private Integer corporate_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date    e_date;

    private Integer id;

    private Integer e_zt;

    private String  username;

    private String   idcard;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getE_id() {
        return e_id;
    }

    public void setE_id(Integer e_id) {
        this.e_id = e_id;
    }

    public String getE_title() {
        return e_title;
    }

    public void setE_title(String e_title) {
        this.e_title = e_title;
    }

    public String getE_number() {
        return e_number;
    }

    public void setE_number(String e_number) {
        this.e_number = e_number;
    }

    public String getCorporate_name() {
        return corporate_name;
    }

    public void setCorporate_name(String corporate_name) {
        this.corporate_name = corporate_name;
    }

    public Integer getCorporate_id() {
        return corporate_id;
    }

    public void setCorporate_id(Integer corporate_id) {
        this.corporate_id = corporate_id;
    }
    @JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getE_date() {
        return e_date;
    }

    public void setE_date(Date e_date) {
        this.e_date = e_date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getE_zt() {
        return e_zt;
    }

    public void setE_zt(Integer e_zt) {
        this.e_zt = e_zt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public WhbPersonal(Integer e_id, String e_title, String e_number, String corporate_name, Integer corporate_id, Date e_date, Integer id, Integer e_zt, String username, String idcard) {
        this.e_id = e_id;
        this.e_title = e_title;
        this.e_number = e_number;
        this.corporate_name = corporate_name;
        this.corporate_id = corporate_id;
        this.e_date = e_date;
        this.id = id;
        this.e_zt = e_zt;
        this.username = username;
        this.idcard = idcard;
    }
    public WhbPersonal() {

    }

    @Override
    public String toString() {
        return "WhbPersonal{" +
                "e_id=" + e_id +
                ", e_title='" + e_title + '\'' +
                ", e_number='" + e_number + '\'' +
                ", corporate_name='" + corporate_name + '\'' +
                ", corporate_id=" + corporate_id +
                ", e_date=" + e_date +
                ", id=" + id +
                ", e_zt=" + e_zt +
                ", username='" + username + '\'' +
                ", idcard='" + idcard + '\'' +
                '}';
    }
}
