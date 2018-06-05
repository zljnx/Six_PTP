package com.six.model;

import java.io.Serializable;
import java.util.Date;

public class ShouYeXiangQing implements Serializable {
    private static final long serialVersionUID = -2378121551969977375L;

    private Integer xmid;//借款ID
    private String xmname;//借款标题
    private Double xmmoney;//借款金额
    private String apr;//年利率
    private String tzqixian;//借款期限
    private Date faburiqi;//发布日期
    private String gongsiming;//担保方名称
    private String danbaofangshi;//担保方式
    private String huankuanfangshi;//还款方式
    private String xmphoto;//项目照片
    private Integer gongsiid;//担保方ID
    private Double haixuzijin; // 还需资金

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getXmid() {
        return xmid;
    }

    public void setXmid(Integer xmid) {
        this.xmid = xmid;
    }

    public String getXmname() {
        return xmname;
    }

    public void setXmname(String xmname) {
        this.xmname = xmname;
    }

    public Double getXmmoney() {
        return xmmoney;
    }

    public void setXmmoney(Double xmmoney) {
        this.xmmoney = xmmoney;
    }

    public String getApr() {
        return apr;
    }

    public void setApr(String apr) {
        this.apr = apr;
    }

    public String getTzqixian() {
        return tzqixian;
    }

    public void setTzqixian(String tzqixian) {
        this.tzqixian = tzqixian;
    }

    public Date getFaburiqi() {
        return faburiqi;
    }

    public void setFaburiqi(Date faburiqi) {
        this.faburiqi = faburiqi;
    }

    public String getGongsiming() {
        return gongsiming;
    }

    public void setGongsiming(String gongsiming) {
        this.gongsiming = gongsiming;
    }

    public String getDanbaofangshi() {
        return danbaofangshi;
    }

    public void setDanbaofangshi(String danbaofangshi) {
        this.danbaofangshi = danbaofangshi;
    }

    public String getHuankuanfangshi() {
        return huankuanfangshi;
    }

    public void setHuankuanfangshi(String huankuanfangshi) {
        this.huankuanfangshi = huankuanfangshi;
    }

    public String getXmphoto() {
        return xmphoto;
    }

    public void setXmphoto(String xmphoto) {
        this.xmphoto = xmphoto;
    }

    public Integer getGongsiid() {
        return gongsiid;
    }

    public void setGongsiid(Integer gongsiid) {
        this.gongsiid = gongsiid;
    }

    public Double getHaixuzijin() {
        return haixuzijin;
    }

    public void setHaixuzijin(Double haixuzijin) {
        this.haixuzijin = haixuzijin;
    }

    public ShouYeXiangQing(Integer xmid, String xmname, Double xmmoney, String apr, String tzqixian, Date faburiqi, String gongsiming, String danbaofangshi, String huankuanfangshi, String xmphoto, Integer gongsiid, Double haixuzijin) {
        this.xmid = xmid;
        this.xmname = xmname;
        this.xmmoney = xmmoney;
        this.apr = apr;
        this.tzqixian = tzqixian;
        this.faburiqi = faburiqi;
        this.gongsiming = gongsiming;
        this.danbaofangshi = danbaofangshi;
        this.huankuanfangshi = huankuanfangshi;
        this.xmphoto = xmphoto;
        this.gongsiid = gongsiid;
        this.haixuzijin = haixuzijin;
    }

    public ShouYeXiangQing() {
    }

    @Override
    public String toString() {
        return "ShouYeXiangQing{" +
                "xmid=" + xmid +
                ", xmname='" + xmname + '\'' +
                ", xmmoney=" + xmmoney +
                ", apr='" + apr + '\'' +
                ", tzqixian='" + tzqixian + '\'' +
                ", faburiqi=" + faburiqi +
                ", gongsiming='" + gongsiming + '\'' +
                ", danbaofangshi='" + danbaofangshi + '\'' +
                ", huankuanfangshi='" + huankuanfangshi + '\'' +
                ", xmphoto='" + xmphoto + '\'' +
                ", gongsiid=" + gongsiid +
                ", haixuzijin=" + haixuzijin +
                '}';
    }
}
