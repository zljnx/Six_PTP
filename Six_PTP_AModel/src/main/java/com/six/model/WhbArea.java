package com.six.model;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/5/29.
 */
public class WhbArea implements Serializable {

    private static final long serialVersionUID = 7912208801738639669L;
    private Integer areaid;

    private String  areaname;

    private Integer pid;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getAreaid() {
        return areaid;
    }

    public void setAreaid(Integer areaid) {
        this.areaid = areaid;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

}
