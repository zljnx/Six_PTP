package com.six.model;

import java.io.Serializable;

public class HouTaiTongJi implements Serializable{

    private static final long serialVersionUID = -7274137257144893265L;
    private  String dshjkxm;//待审核借款项目
    private String dclgrjkyx;//待处理的个人借款意向
    private String dfbjkxm;//待发布的借款项目
    private String dfkjkxm;//待放款的借款项目
    private String dclqyjkyx;//待处理的企业借款意向
    private String dshrzxx;//待审核的认证信息
    private String tixianchushen;//提现初审
    private String tixianfushen;//提现复审
    private String xxczsh;//线下充值审核
    private String zqzrsh;//债权转让审核

    public String getDshjkxm() {
        return dshjkxm;
    }

    public void setDshjkxm(String dshjkxm) {
        this.dshjkxm = dshjkxm;
    }

    public String getDclgrjkyx() {
        return dclgrjkyx;
    }

    public void setDclgrjkyx(String dclgrjkyx) {
        this.dclgrjkyx = dclgrjkyx;
    }

    public String getDfbjkxm() {
        return dfbjkxm;
    }

    public void setDfbjkxm(String dfbjkxm) {
        this.dfbjkxm = dfbjkxm;
    }

    public String getDfkjkxm() {
        return dfkjkxm;
    }

    public void setDfkjkxm(String dfkjkxm) {
        this.dfkjkxm = dfkjkxm;
    }

    public String getDclqyjkyx() {
        return dclqyjkyx;
    }

    public void setDclqyjkyx(String dclqyjkyx) {
        this.dclqyjkyx = dclqyjkyx;
    }

    public String getDshrzxx() {
        return dshrzxx;
    }

    public void setDshrzxx(String dshrzxx) {
        this.dshrzxx = dshrzxx;
    }

    public String getTixianchushen() {
        return tixianchushen;
    }

    public void setTixianchushen(String tixianchushen) {
        this.tixianchushen = tixianchushen;
    }

    public String getTixianfushen() {
        return tixianfushen;
    }

    public void setTixianfushen(String tixianfushen) {
        this.tixianfushen = tixianfushen;
    }

    public String getXxczsh() {
        return xxczsh;
    }

    public void setXxczsh(String xxczsh) {
        this.xxczsh = xxczsh;
    }

    public String getZqzrsh() {
        return zqzrsh;
    }

    public void setZqzrsh(String zqzrsh) {
        this.zqzrsh = zqzrsh;
    }

    public HouTaiTongJi(String dshjkxm, String dclgrjkyx, String dfbjkxm, String dfkjkxm, String dclqyjkyx, String dshrzxx, String tixianchushen, String tixianfushen, String xxczsh, String zqzrsh) {
        this.dshjkxm = dshjkxm;
        this.dclgrjkyx = dclgrjkyx;
        this.dfbjkxm = dfbjkxm;
        this.dfkjkxm = dfkjkxm;
        this.dclqyjkyx = dclqyjkyx;
        this.dshrzxx = dshrzxx;
        this.tixianchushen = tixianchushen;
        this.tixianfushen = tixianfushen;
        this.xxczsh = xxczsh;
        this.zqzrsh = zqzrsh;
    }

    public HouTaiTongJi() {
    }

    @Override
    public String toString() {
        return "HouTaiTongJi{" +
                "dshjkxm='" + dshjkxm + '\'' +
                ", dclgrjkyx='" + dclgrjkyx + '\'' +
                ", dfbjkxm='" + dfbjkxm + '\'' +
                ", dfkjkxm='" + dfkjkxm + '\'' +
                ", dclqyjkyx='" + dclqyjkyx + '\'' +
                ", dshrzxx='" + dshrzxx + '\'' +
                ", tixianchushen='" + tixianchushen + '\'' +
                ", tixianfushen='" + tixianfushen + '\'' +
                ", xxczsh='" + xxczsh + '\'' +
                ", zqzrsh='" + zqzrsh + '\'' +
                '}';
    }
}
