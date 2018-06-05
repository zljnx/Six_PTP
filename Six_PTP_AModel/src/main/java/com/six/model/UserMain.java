package com.six.model;

import java.io.Serializable;

/**
 * @ProjectName: Six_PTP
 * @ClassName: UserMain
 * @Package com.six.model
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/6/4 15:22
 * @Version 1.0
 */
public class UserMain implements Serializable {

    private static final long serialVersionUID = -6600724063014612918L;
    private String id;
    private String loginname;
    private String olduserpwd;
    private String userpwd;

    @Override
    public String toString() {
        return "UserMain{" +
                "id='" + id + '\'' +
                ", loginname='" + loginname + '\'' +
                ", olduserpwd='" + olduserpwd + '\'' +
                ", userpwd='" + userpwd + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLoginname() {
        return loginname;
    }

    public void setLoginname(String loginname) {
        this.loginname = loginname;
    }

    public String getOlduserpwd() {
        return olduserpwd;
    }

    public void setOlduserpwd(String olduserpwd) {
        this.olduserpwd = olduserpwd;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }
}
