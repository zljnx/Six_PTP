package com.six.model;

import java.io.Serializable;

public class ZSJieKuanTongji implements Serializable{
    private static final long serialVersionUID = 1775006865944285762L;

    private String zongjine;//总金额
    private String loginname;//登录名
    private String beiyong;//备用
    private String beiyong2;//备用1

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getZongjine() {
        return zongjine;
    }

    public void setZongjine(String zongjine) {
        this.zongjine = zongjine;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getBeiyong() {
        return beiyong;
    }

    public void setBeiyong(String beiyong) {
        this.beiyong = beiyong;
    }

    public String getBeiyong2() {
        return beiyong2;
    }

    public void setBeiyong2(String beiyong2) {
        this.beiyong2 = beiyong2;
    }

    public ZSJieKuanTongji(String zongjine, String loginname, String beiyong, String beiyong2) {
        this.zongjine = zongjine;
        this.loginname = loginname;
        this.beiyong = beiyong;
        this.beiyong2 = beiyong2;
    }

    public ZSJieKuanTongji() {
    }

    @Override
    public String toString() {
        return "ZSJieKuanTongji{" +
                "zongjine='" + zongjine + '\'' +
                ", loginname='" + loginname + '\'' +
                ", beiyong='" + beiyong + '\'' +
                ", beiyong2='" + beiyong2 + '\'' +
                '}';
    }
}
