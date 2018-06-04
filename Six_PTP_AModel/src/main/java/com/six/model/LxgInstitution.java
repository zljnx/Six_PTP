package com.six.model;

import java.io.Serializable;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.model
 * @Description: 描述.....机构信息表
 * @create 2018-05-22 15:31
 */
public class LxgInstitution implements Serializable {
    private static final long serialVersionUID = 6303108857760087083L;

    private Integer institution_id;
    private Integer corporate_id;
    private Integer contact_id;
    private String institution_account;
    private String institution_name;
    private String business_license;
    private Integer state_number;
    private Integer allowed_distressed;
    private String guarantee_introduction;
    private String description_guarantee;

    public Integer getInstitution_id() {
        return institution_id;
    }

    public void setInstitution_id(Integer institution_id) {
        this.institution_id = institution_id;
    }

    public Integer getCorporate_id() {
        return corporate_id;
    }

    public void setCorporate_id(Integer corporate_id) {
        this.corporate_id = corporate_id;
    }

    public Integer getContact_id() {
        return contact_id;
    }

    public void setContact_id(Integer contact_id) {
        this.contact_id = contact_id;
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

    public Integer getState_number() {
        return state_number;
    }

    public void setState_number(Integer state_number) {
        this.state_number = state_number;
    }

    public Integer getAllowed_distressed() {
        return allowed_distressed;
    }

    public void setAllowed_distressed(Integer allowed_distressed) {
        this.allowed_distressed = allowed_distressed;
    }

    public String getGuarantee_introduction() {
        return guarantee_introduction;
    }

    public void setGuarantee_introduction(String guarantee_introduction) {
        this.guarantee_introduction = guarantee_introduction;
    }

    public String getDescription_guarantee() {
        return description_guarantee;
    }

    public void setDescription_guarantee(String description_guarantee) {
        this.description_guarantee = description_guarantee;
    }

    @Override
    public String toString() {
        return "LxgInstitution{" +
                "institution_id=" + institution_id +
                ", corporate_id=" + corporate_id +
                ", contact_id=" + contact_id +
                ", institution_account='" + institution_account + '\'' +
                ", institution_name='" + institution_name + '\'' +
                ", business_license='" + business_license + '\'' +
                ", state_number=" + state_number +
                ", allowed_distressed=" + allowed_distressed +
                ", guarantee_introduction='" + guarantee_introduction + '\'' +
                ", description_guarantee='" + description_guarantee + '\'' +
                '}';
    }
}
