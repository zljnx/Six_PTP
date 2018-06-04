package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @ProjectName: Six_PTP
 * @ClassName: CorporateInfo
 * @Package com.six.model
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/24 17:20
 * @Version 1.0
 */
public class CorporateInfo implements Serializable {

    private static final long serialVersionUID = 5389028093853830327L;
    private Integer corporate_id;
    private Integer contact_id;
    private Integer financial_id;
    private String corporate_account;
    private String corporate_name;
    private String corporate_photo;
    private String social_credit;
    private String corporate_referred;
    private String industry;
    private Integer status;
    private Integer corporate_scale;
    private String credit_number;
    private String enterprise_number;
    private String corporate_introduction;
    private String cases_lawsuit;
    private String operating_condition;
    private String credit_conditions;
    private Integer allowed_invest;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date registration_time;
    private String rehistration_money;
    private String equity;
    private String contact_area;
    private String contact_address;
    private String contact_name;
    private String person_number;
    private String person_phone_number;
    private String person_email_address;
    private String business_contact;
    private String web_site_address;
    private Integer areaid;
    private String areaname;
    private Integer pid;
    private String financial_year;
    private Integer business_income;
    private Integer net_worth;
    private String financial_note;
    private Integer total_assets;
    private Integer net_profit;
    private Integer borrowing_id;
    private String borrowing_number;
    private String borrowing_title;
    private String annual_interest_rate;
    private BigDecimal borrowing_amount;
    private BigDecimal investment_amount;
    private Integer time_limit;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date borrowing_time;
    private Integer borrowing_stateType_id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date investment_time;
    private BigDecimal payment_amount;
    private BigDecimal pay_back_amount;
    private Integer overdue_periods;
    private String claim_number;
    private Integer transfer_nper;
    private BigDecimal rights_value;
    private BigDecimal purchase_price;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date subscription_time;
    private Integer reviewid;
    private Integer reviewtype;
    private Integer necertification;
    private Integer certificationcount;
    private Integer certificationstatus;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date certificationdate;
    private String defriend;

    @Override
    public String toString() {
        return "CorporateInfo{" +
                "corporate_id=" + corporate_id +
                ", contact_id=" + contact_id +
                ", financial_id=" + financial_id +
                ", corporate_account='" + corporate_account + '\'' +
                ", corporate_name='" + corporate_name + '\'' +
                ", corporate_photo='" + corporate_photo + '\'' +
                ", social_credit='" + social_credit + '\'' +
                ", corporate_referred='" + corporate_referred + '\'' +
                ", industry='" + industry + '\'' +
                ", status=" + status +
                ", corporate_scale=" + corporate_scale +
                ", credit_number='" + credit_number + '\'' +
                ", enterprise_number='" + enterprise_number + '\'' +
                ", corporate_introduction='" + corporate_introduction + '\'' +
                ", cases_lawsuit='" + cases_lawsuit + '\'' +
                ", operating_condition='" + operating_condition + '\'' +
                ", credit_conditions='" + credit_conditions + '\'' +
                ", allowed_invest=" + allowed_invest +
                ", registration_time=" + registration_time +
                ", rehistration_money='" + rehistration_money + '\'' +
                ", equity='" + equity + '\'' +
                ", contact_area='" + contact_area + '\'' +
                ", contact_address='" + contact_address + '\'' +
                ", contact_name='" + contact_name + '\'' +
                ", person_number='" + person_number + '\'' +
                ", person_phone_number='" + person_phone_number + '\'' +
                ", person_email_address='" + person_email_address + '\'' +
                ", business_contact='" + business_contact + '\'' +
                ", web_site_address='" + web_site_address + '\'' +
                ", areaid=" + areaid +
                ", areaname='" + areaname + '\'' +
                ", pid=" + pid +
                ", financial_year='" + financial_year + '\'' +
                ", business_income=" + business_income +
                ", net_worth=" + net_worth +
                ", financial_note='" + financial_note + '\'' +
                ", total_assets=" + total_assets +
                ", net_profit=" + net_profit +
                ", borrowing_id=" + borrowing_id +
                ", borrowing_number='" + borrowing_number + '\'' +
                ", borrowing_title='" + borrowing_title + '\'' +
                ", annual_interest_rate='" + annual_interest_rate + '\'' +
                ", borrowing_amount=" + borrowing_amount +
                ", investment_amount=" + investment_amount +
                ", time_limit=" + time_limit +
                ", borrowing_time=" + borrowing_time +
                ", borrowing_stateType_id=" + borrowing_stateType_id +
                ", investment_time=" + investment_time +
                ", payment_amount=" + payment_amount +
                ", pay_back_amount=" + pay_back_amount +
                ", overdue_periods=" + overdue_periods +
                ", claim_number='" + claim_number + '\'' +
                ", transfer_nper=" + transfer_nper +
                ", rights_value=" + rights_value +
                ", purchase_price=" + purchase_price +
                ", subscription_time=" + subscription_time +
                ", reviewid=" + reviewid +
                ", reviewtype=" + reviewtype +
                ", necertification=" + necertification +
                ", certificationcount=" + certificationcount +
                ", certificationstatus=" + certificationstatus +
                ", certificationdate=" + certificationdate +
                ", defriend='" + defriend + '\'' +
                '}';
    }

    public String getDefriend() {
        return defriend;
    }

    public void setDefriend(String defriend) {
        this.defriend = defriend;
    }

    public String getEquity() {
        return equity;
    }

    public void setEquity(String equity) {
        this.equity = equity;
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

    public Integer getFinancial_id() {
        return financial_id;
    }

    public void setFinancial_id(Integer financial_id) {
        this.financial_id = financial_id;
    }

    public String getCorporate_account() {
        return corporate_account;
    }

    public void setCorporate_account(String corporate_account) {
        this.corporate_account = corporate_account;
    }

    public String getCorporate_name() {
        return corporate_name;
    }

    public void setCorporate_name(String corporate_name) {
        this.corporate_name = corporate_name;
    }

    public String getCorporate_photo() {
        return corporate_photo;
    }

    public void setCorporate_photo(String corporate_photo) {
        this.corporate_photo = corporate_photo;
    }

    public String getSocial_credit() {
        return social_credit;
    }

    public void setSocial_credit(String social_credit) {
        this.social_credit = social_credit;
    }

    public String getCorporate_referred() {
        return corporate_referred;
    }

    public void setCorporate_referred(String corporate_referred) {
        this.corporate_referred = corporate_referred;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getCorporate_scale() {
        return corporate_scale;
    }

    public void setCorporate_scale(Integer corporate_scale) {
        this.corporate_scale = corporate_scale;
    }

    public String getCredit_number() {
        return credit_number;
    }

    public void setCredit_number(String credit_number) {
        this.credit_number = credit_number;
    }

    public String getEnterprise_number() {
        return enterprise_number;
    }

    public void setEnterprise_number(String enterprise_number) {
        this.enterprise_number = enterprise_number;
    }

    public String getCorporate_introduction() {
        return corporate_introduction;
    }

    public void setCorporate_introduction(String corporate_introduction) {
        this.corporate_introduction = corporate_introduction;
    }

    public String getCases_lawsuit() {
        return cases_lawsuit;
    }

    public void setCases_lawsuit(String cases_lawsuit) {
        this.cases_lawsuit = cases_lawsuit;
    }

    public String getOperating_condition() {
        return operating_condition;
    }

    public void setOperating_condition(String operating_condition) {
        this.operating_condition = operating_condition;
    }

    public String getCredit_conditions() {
        return credit_conditions;
    }

    public void setCredit_conditions(String credit_conditions) {
        this.credit_conditions = credit_conditions;
    }

    public Integer getAllowed_invest() {
        return allowed_invest;
    }

    public void setAllowed_invest(Integer allowed_invest) {
        this.allowed_invest = allowed_invest;
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getRegistration_time() {
        return registration_time;
    }

    public void setRegistration_time(Date registration_time) {
        this.registration_time = registration_time;
    }

    public String getRehistration_money() {
        return rehistration_money;
    }

    public void setRehistration_money(String rehistration_money) {
        this.rehistration_money = rehistration_money;
    }

    public String getContact_area() {
        return contact_area;
    }

    public void setContact_area(String contact_area) {
        this.contact_area = contact_area;
    }

    public String getContact_address() {
        return contact_address;
    }

    public void setContact_address(String contact_address) {
        this.contact_address = contact_address;
    }

    public String getContact_name() {
        return contact_name;
    }

    public void setContact_name(String contact_name) {
        this.contact_name = contact_name;
    }

    public String getPerson_number() {
        return person_number;
    }

    public void setPerson_number(String person_number) {
        this.person_number = person_number;
    }

    public String getPerson_phone_number() {
        return person_phone_number;
    }

    public void setPerson_phone_number(String person_phone_number) {
        this.person_phone_number = person_phone_number;
    }

    public String getPerson_email_address() {
        return person_email_address;
    }

    public void setPerson_email_address(String person_email_address) {
        this.person_email_address = person_email_address;
    }

    public String getBusiness_contact() {
        return business_contact;
    }

    public void setBusiness_contact(String business_contact) {
        this.business_contact = business_contact;
    }

    public String getWeb_site_address() {
        return web_site_address;
    }

    public void setWeb_site_address(String web_site_address) {
        this.web_site_address = web_site_address;
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

    public String getFinancial_year() {
        return financial_year;
    }

    public void setFinancial_year(String financial_year) {
        this.financial_year = financial_year;
    }

    public Integer getBusiness_income() {
        return business_income;
    }

    public void setBusiness_income(Integer business_income) {
        this.business_income = business_income;
    }

    public Integer getNet_worth() {
        return net_worth;
    }

    public void setNet_worth(Integer net_worth) {
        this.net_worth = net_worth;
    }

    public String getFinancial_note() {
        return financial_note;
    }

    public void setFinancial_note(String financial_note) {
        this.financial_note = financial_note;
    }

    public Integer getTotal_assets() {
        return total_assets;
    }

    public void setTotal_assets(Integer total_assets) {
        this.total_assets = total_assets;
    }

    public Integer getNet_profit() {
        return net_profit;
    }

    public void setNet_profit(Integer net_profit) {
        this.net_profit = net_profit;
    }

    public Integer getBorrowing_id() {
        return borrowing_id;
    }

    public void setBorrowing_id(Integer borrowing_id) {
        this.borrowing_id = borrowing_id;
    }

    public String getBorrowing_number() {
        return borrowing_number;
    }

    public void setBorrowing_number(String borrowing_number) {
        this.borrowing_number = borrowing_number;
    }

    public String getBorrowing_title() {
        return borrowing_title;
    }

    public void setBorrowing_title(String borrowing_title) {
        this.borrowing_title = borrowing_title;
    }

    public String getAnnual_interest_rate() {
        return annual_interest_rate;
    }

    public void setAnnual_interest_rate(String annual_interest_rate) {
        this.annual_interest_rate = annual_interest_rate;
    }

    public BigDecimal getBorrowing_amount() {
        return borrowing_amount;
    }

    public void setBorrowing_amount(BigDecimal borrowing_amount) {
        this.borrowing_amount = borrowing_amount;
    }

    public BigDecimal getInvestment_amount() {
        return investment_amount;
    }

    public void setInvestment_amount(BigDecimal investment_amount) {
        this.investment_amount = investment_amount;
    }

    public Integer getTime_limit() {
        return time_limit;
    }

    public void setTime_limit(Integer time_limit) {
        this.time_limit = time_limit;
    }

    public Date getBorrowing_time() {
        return borrowing_time;
    }

    public void setBorrowing_time(Date borrowing_time) {
        this.borrowing_time = borrowing_time;
    }

    public Integer getBorrowing_stateType_id() {
        return borrowing_stateType_id;
    }

    public void setBorrowing_stateType_id(Integer borrowing_stateType_id) {
        this.borrowing_stateType_id = borrowing_stateType_id;
    }

    public Date getInvestment_time() {
        return investment_time;
    }

    public void setInvestment_time(Date investment_time) {
        this.investment_time = investment_time;
    }

    public BigDecimal getPayment_amount() {
        return payment_amount;
    }

    public void setPayment_amount(BigDecimal payment_amount) {
        this.payment_amount = payment_amount;
    }

    public BigDecimal getPay_back_amount() {
        return pay_back_amount;
    }

    public void setPay_back_amount(BigDecimal pay_back_amount) {
        this.pay_back_amount = pay_back_amount;
    }

    public Integer getOverdue_periods() {
        return overdue_periods;
    }

    public void setOverdue_periods(Integer overdue_periods) {
        this.overdue_periods = overdue_periods;
    }

    public String getClaim_number() {
        return claim_number;
    }

    public void setClaim_number(String claim_number) {
        this.claim_number = claim_number;
    }

    public Integer getTransfer_nper() {
        return transfer_nper;
    }

    public void setTransfer_nper(Integer transfer_nper) {
        this.transfer_nper = transfer_nper;
    }

    public BigDecimal getRights_value() {
        return rights_value;
    }

    public void setRights_value(BigDecimal rights_value) {
        this.rights_value = rights_value;
    }

    public BigDecimal getPurchase_price() {
        return purchase_price;
    }

    public void setPurchase_price(BigDecimal purchase_price) {
        this.purchase_price = purchase_price;
    }

    public Date getSubscription_time() {
        return subscription_time;
    }

    public void setSubscription_time(Date subscription_time) {
        this.subscription_time = subscription_time;
    }

    public Integer getReviewid() {
        return reviewid;
    }

    public void setReviewid(Integer reviewid) {
        this.reviewid = reviewid;
    }

    public Integer getReviewtype() {
        return reviewtype;
    }

    public void setReviewtype(Integer reviewtype) {
        this.reviewtype = reviewtype;
    }

    public Integer getNecertification() {
        return necertification;
    }

    public void setNecertification(Integer necertification) {
        this.necertification = necertification;
    }

    public Integer getCertificationcount() {
        return certificationcount;
    }

    public void setCertificationcount(Integer certificationcount) {
        this.certificationcount = certificationcount;
    }

    public Integer getCertificationstatus() {
        return certificationstatus;
    }

    public void setCertificationstatus(Integer certificationstatus) {
        this.certificationstatus = certificationstatus;
    }
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getCertificationdate() {
        return certificationdate;
    }

    public void setCertificationdate(Date certificationdate) {
        this.certificationdate = certificationdate;
    }

}
