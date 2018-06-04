package com.six.model;

import java.io.Serializable;

public class ZSTongJi implements Serializable{
    private static final long serialVersionUID = -8865544398271866996L;

    private Integer zongrenshu;
    private Double zongjine;
    private Double shouyi;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getZongrenshu() {
        return zongrenshu;
    }

    public void setZongrenshu(Integer zongrenshu) {
        this.zongrenshu = zongrenshu;
    }

    public Double getZongjine() {
        return zongjine;
    }

    public void setZongjine(Double zongjine) {
        this.zongjine = zongjine;
    }

    public Double getShouyi() {
        return shouyi;
    }

    public void setShouyi(Double shouyi) {
        this.shouyi = shouyi;
    }

    public ZSTongJi(Integer zongrenshu, Double zongjine, Double shouyi) {
        this.zongrenshu = zongrenshu;
        this.zongjine = zongjine;
        this.shouyi = shouyi;
    }

    public ZSTongJi() {
    }

    @Override
    public String toString() {
        return "ZSTongJi{" +
                "zongrenshu=" + zongrenshu +
                ", zongjine=" + zongjine +
                ", shouyi=" + shouyi +
                '}';
    }
}
