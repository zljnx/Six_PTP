package com.six.model;


import java.io.Serializable;
import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2111:16
 * @Document注解里面的几个属性，类比mysql的话是这样：
 * index –> DB
 * type –> Table
 * Document –> row
 */
/*
@Document(indexName = "sixptp",type = "TreeMenu", shards = 1,replicas = 0, refreshInterval = "-1")
*/
public class TreeMenu implements Serializable {
    private static final long serialVersionUID = -3490121590835517709L;


    private Integer userid;
    private String name;
    private String href;
    private Integer menuid;
    private  Integer roleid;
    private  String rolename;
    private List<TreeMenu> children;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public Integer getMenuid() {
        return menuid;
    }

    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public List<TreeMenu> getChildren() {
        return children;
    }

    public void setChildren(List<TreeMenu> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "TreeMenu{" +
                "userid=" + userid +
                ", name='" + name + '\'' +
                ", href='" + href + '\'' +
                ", menuid=" + menuid +
                ", roleid=" + roleid +
                ", rolename='" + rolename + '\'' +
                ", children=" + children +
                '}';
    }
}
