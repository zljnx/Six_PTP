package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;


import java.io.Serializable;
import java.util.Date;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.model
 * @Description: 描述.....组合表
 * @create 2018-05-22 19:09
 */
public class LxgInstitutionCombination implements Serializable{
    private static final long serialVersionUID = -1788488820733328769L;

    private Integer  institution_id;
    private String institution_account;
    private String institution_name;
    private String business_license;
    private String contact_name;
    private String contact_number;
    /*@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date registration_time;*/
    private String registration_time;
    private Integer state_number;
    private Integer allowed_invest;
    private Integer  allowed_distressed;

    public Integer getInstitution_id() {
        return institution_id;
    }

    public void setInstitution_id(Integer institution_id) {
        this.institution_id = institution_id;
    }

    public String getInstitution_account() {
        return institution_account;
    }

    public void setInstitution_account(String institution_account) {
        this.institution_account = institution_account;
    }

    public String getInstitution_name() {
        return institution_name;
    }

    public void setInstitution_name(String institution_name) {
        this.institution_name = institution_name;
    }

    public String getBusiness_license() {
        return business_license;
    }

    public void setBusiness_license(String business_license) {
        this.business_license = business_license;
    }

    public String getContact_name() {
        return contact_name;
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public String getContact_number() {
        return contact_number;
    }

    public void setContact_number(String contact_number) {
        this.contact_number = contact_number;
    }

    /*@JsonFormat(pattern="yyyy-MM-dd",timezone = "GMT+8")
    public Date getRegistration_time() {
        return registration_time;
    }

    public void setRegistration_time(Date registration_time) {
        this.registration_time = registration_time;
    }*/

    public String getRegistration_time() {
        return registration_time;
    }

    public void setRegistration_time(String registration_time) {
        this.registration_time = registration_time;
    }

    public Integer getState_number() {
        return state_number;
    }

    public void setState_number(Integer state_number) {
        this.state_number = state_number;
    }

    public Integer getAllowed_invest() {
        return allowed_invest;
    }

    public void setAllowed_invest(Integer allowed_invest) {
        this.allowed_invest = allowed_invest;
    }

    public Integer getAllowed_distressed() {
        return allowed_distressed;
    }

    public void setAllowed_distressed(Integer allowed_distressed) {
        this.allowed_distressed = allowed_distressed;
    }

    @Override
    public String toString() {
        return "LxgInstitutionCombination{" +
                "institution_id=" + institution_id +
                ", institution_account='" + institution_account + '\'' +
                ", institution_name='" + institution_name + '\'' +
                ", business_license='" + business_license + '\'' +
                ", contact_name='" + contact_name + '\'' +
                ", contact_number='" + contact_number + '\'' +
                ", registration_time=" + registration_time +
                ", state_number=" + state_number +
                ", allowed_invest=" + allowed_invest +
                ", allowed_distressed=" + allowed_distressed +
                '}';
    }
}
