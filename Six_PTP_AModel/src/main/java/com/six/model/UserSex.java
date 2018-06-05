package com.six.model;

import java.io.Serializable;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/6/423:27
 */
public class UserSex implements Serializable {
    private static final long serialVersionUID = 62467226423948561L;
    private String boycount;
    private String girlcount;

    public String getBoycount() {
        return boycount;
    }

    public void setBoycount(String boycount) {
        this.boycount = boycount;
    }

    public String getGirlcount() {
        return girlcount;
    }

    public void setGirlcount(String girlcount) {
        this.girlcount = girlcount;
    }

    @Override
    public String toString() {
        return "UserSex{" +
                "boycount='" + boycount + '\'' +
                ", girlcount='" + girlcount + '\'' +
                '}';
    }
}
