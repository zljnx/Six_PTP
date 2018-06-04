package com.six.model;



import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2018/5/16.
 */
public class WhbRepayment1 implements Serializable{
    private static final long serialVersionUID = 1038105986153130567L;

    private Double c_huanmoney;
    private Double c_shengmoney;


    public static long getSerialVersionUID() {
        return serialVersionUID;
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





}
