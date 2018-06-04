package com.six.model;

import org.springframework.data.annotation.Id;

import java.io.Serializable;

/**
 * Created by Administrator on 2018/5/30.
 */
public class Logs implements Serializable {
    private static final long serialVersionUID = 9198859140855892481L;

    @Id
    private String  logId;
    private String clazzName;
    private String methodName;
    private String params;
    private String doituser;
    private String isexception;

    public String getIsexception() {
        return isexception;
    }

    public void setIsexception(String isexception) {
        this.isexception = isexception;
    }

    public String getDoituser() {
        return doituser;
    }

    public void setDoituser(String doituser) {
        this.doituser = doituser;
    }

    public String getParams() {
        return params;
    }
    public void setParams(String params) {
        this.params = params;
    }
    public String getLogId() {
        return logId;
    }
    public void setLogId(String logId) {
        this.logId = logId;
    }
    public String getClazzName() {
        return clazzName;
    }
    public void setClazzName(String clazzName) {
        this.clazzName = clazzName;
    }
    public String getMethodName() {
        return methodName;
    }
    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }
    @Override
    public String toString() {
        return "Logs [logId=" + logId + ", clazzName=" + clazzName + ", methodName=" + methodName + "]";
    }
}
