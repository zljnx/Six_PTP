package com.six.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @ProjectName: Six_PTP
 * @ClassName: UserInfo
 * @Package com.six.model
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/18 18:51
 * @Version 1.0
 */
public class UserInfo implements Serializable {

    private static final long serialVersionUID = 3029837218318543278L;
    private String id;
    private String loginname;
    private String userpwd;
    private String username;
    private String userphone;
    private String idcard;
    private String eamil;
    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date sendtime;
    private Integer sex;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthdate;
    private String defriend;
    private Integer riskassess;
    private Integer assesscount;
    private String workid;
    private String educationid;
    private Integer workstatus;
    private String companyname;
    private String addrid;
    private String companytype;
    private Integer companyscale;
    private String eid;
    private String school;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date entrancedate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date graduationdate;
    private String major;
    private String schoolinfo;
    private String areaid;
    private String areaname;
    private String pid;
    private String reviewid;
    private Integer reviewtype;
    private Integer necertification;
    private Integer certificationcount;
    private Integer certificationstatus;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date certificationdate;
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
    private Integer car_id;
    private String license_platenumbe;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date car_year;
    private Integer car_price;
    private String car_brand;
    private Integer car_assess_price;
    private Integer property_id;
    private String village_name;
    private Integer construction_area;
    private Integer property_price;
    private String property_address;
    private String property_number;
    private String use_number_year;
    private String property_assess_price;
    private String property_area;
    private String reference_price;
    private String filename;
    private String dealpwd;
    private String logontype;
    private Double yue;

    public Double getYue() {
        return yue;
    }

    public void setYue(Double yue) {
        this.yue = yue;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "id='" + id + '\'' +
                ", loginname='" + loginname + '\'' +
                ", userpwd='" + userpwd + '\'' +
                ", username='" + username + '\'' +
                ", userphone='" + userphone + '\'' +
                ", idcard='" + idcard + '\'' +
                ", eamil='" + eamil + '\'' +
                ", status=" + status +
                ", sendtime=" + sendtime +
                ", sex=" + sex +
                ", birthdate=" + birthdate +
                ", defriend='" + defriend + '\'' +
                ", riskassess=" + riskassess +
                ", assesscount=" + assesscount +
                ", workid='" + workid + '\'' +
                ", educationid='" + educationid + '\'' +
                ", workstatus=" + workstatus +
                ", companyname='" + companyname + '\'' +
                ", addrid='" + addrid + '\'' +
                ", companytype='" + companytype + '\'' +
                ", companyscale=" + companyscale +
                ", eid='" + eid + '\'' +
                ", school='" + school + '\'' +
                ", entrancedate=" + entrancedate +
                ", graduationdate=" + graduationdate +
                ", major='" + major + '\'' +
                ", schoolinfo='" + schoolinfo + '\'' +
                ", areaid='" + areaid + '\'' +
                ", areaname='" + areaname + '\'' +
                ", pid='" + pid + '\'' +
                ", reviewid='" + reviewid + '\'' +
                ", reviewtype=" + reviewtype +
                ", necertification=" + necertification +
                ", certificationcount=" + certificationcount +
                ", certificationstatus=" + certificationstatus +
                ", certificationdate=" + certificationdate +
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
                ", car_id=" + car_id +
                ", license_platenumbe='" + license_platenumbe + '\'' +
                ", car_year=" + car_year +
                ", car_price=" + car_price +
                ", car_brand='" + car_brand + '\'' +
                ", car_assess_price=" + car_assess_price +
                ", property_id=" + property_id +
                ", village_name='" + village_name + '\'' +
                ", construction_area=" + construction_area +
                ", property_price=" + property_price +
                ", property_address='" + property_address + '\'' +
                ", property_number='" + property_number + '\'' +
                ", use_number_year='" + use_number_year + '\'' +
                ", property_assess_price='" + property_assess_price + '\'' +
                ", property_area='" + property_area + '\'' +
                ", reference_price='" + reference_price + '\'' +
                ", filename='" + filename + '\'' +
                ", dealpwd='" + dealpwd + '\'' +
                ", logontype='" + logontype + '\'' +
                ", yue=" + yue +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
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

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getEamil() {
        return eamil;
    }

    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getDefriend() {
        return defriend;
    }

    public void setDefriend(String defriend) {
        this.defriend = defriend;
    }

    public Integer getRiskassess() {
        return riskassess;
    }

    public void setRiskassess(Integer riskassess) {
        this.riskassess = riskassess;
    }

    public Integer getAssesscount() {
        return assesscount;
    }

    public void setAssesscount(Integer assesscount) {
        this.assesscount = assesscount;
    }

    public String getWorkid() {
        return workid;
    }

    public void setWorkid(String workid) {
        this.workid = workid;
    }

    public String getEducationid() {
        return educationid;
    }

    public void setEducationid(String educationid) {
        this.educationid = educationid;
    }

    public Integer getWorkstatus() {
        return workstatus;
    }

    public void setWorkstatus(Integer workstatus) {
        this.workstatus = workstatus;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getAddrid() {
        return addrid;
    }

    public void setAddrid(String addrid) {
        this.addrid = addrid;
    }

    public String getCompanytype() {
        return companytype;
    }

    public void setCompanytype(String companytype) {
        this.companytype = companytype;
    }

    public Integer getCompanyscale() {
        return companyscale;
    }

    public void setCompanyscale(Integer companyscale) {
        this.companyscale = companyscale;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public Date getEntrancedate() {
        return entrancedate;
    }

    public void setEntrancedate(Date entrancedate) {
        this.entrancedate = entrancedate;
    }

    public Date getGraduationdate() {
        return graduationdate;
    }

    public void setGraduationdate(Date graduationdate) {
        this.graduationdate = graduationdate;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getSchoolinfo() {
        return schoolinfo;
    }

    public void setSchoolinfo(String schoolinfo) {
        this.schoolinfo = schoolinfo;
    }

    public String getAreaid() {
        return areaid;
    }

    public void setAreaid(String areaid) {
        this.areaid = areaid;
    }

    public String getAreaname() {
        return areaname;
    }

    public void setAreaname(String areaname) {
        this.areaname = areaname;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getReviewid() {
        return reviewid;
    }

    public void setReviewid(String reviewid) {
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

    public Date getCertificationdate() {
        return certificationdate;
    }

    public void setCertificationdate(Date certificationdate) {
        this.certificationdate = certificationdate;
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

    public Integer getCar_id() {
        return car_id;
    }

    public void setCar_id(Integer car_id) {
        this.car_id = car_id;
    }

    public String getLicense_platenumbe() {
        return license_platenumbe;
    }

    public void setLicense_platenumbe(String license_platenumbe) {
        this.license_platenumbe = license_platenumbe;
    }

    public Date getCar_year() {
        return car_year;
    }

    public void setCar_year(Date car_year) {
        this.car_year = car_year;
    }

    public Integer getCar_price() {
        return car_price;
    }

    public void setCar_price(Integer car_price) {
        this.car_price = car_price;
    }

    public String getCar_brand() {
        return car_brand;
    }

    public void setCar_brand(String car_brand) {
        this.car_brand = car_brand;
    }

    public Integer getCar_assess_price() {
        return car_assess_price;
    }

    public void setCar_assess_price(Integer car_assess_price) {
        this.car_assess_price = car_assess_price;
    }

    public Integer getProperty_id() {
        return property_id;
    }

    public void setProperty_id(Integer property_id) {
        this.property_id = property_id;
    }

    public String getVillage_name() {
        return village_name;
    }

    public void setVillage_name(String village_name) {
        this.village_name = village_name;
    }

    public Integer getConstruction_area() {
        return construction_area;
    }

    public void setConstruction_area(Integer construction_area) {
        this.construction_area = construction_area;
    }

    public Integer getProperty_price() {
        return property_price;
    }

    public void setProperty_price(Integer property_price) {
        this.property_price = property_price;
    }

    public String getProperty_address() {
        return property_address;
    }

    public void setProperty_address(String property_address) {
        this.property_address = property_address;
    }

    public String getProperty_number() {
        return property_number;
    }

    public void setProperty_number(String property_number) {
        this.property_number = property_number;
    }

    public String getUse_number_year() {
        return use_number_year;
    }

    public void setUse_number_year(String use_number_year) {
        this.use_number_year = use_number_year;
    }

    public String getProperty_assess_price() {
        return property_assess_price;
    }

    public void setProperty_assess_price(String property_assess_price) {
        this.property_assess_price = property_assess_price;
    }

    public String getProperty_area() {
        return property_area;
    }

    public void setProperty_area(String property_area) {
        this.property_area = property_area;
    }

    public String getReference_price() {
        return reference_price;
    }

    public void setReference_price(String reference_price) {
        this.reference_price = reference_price;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getDealpwd() {
        return dealpwd;
    }

    public void setDealpwd(String dealpwd) {
        this.dealpwd = dealpwd;
    }

    public String getLogontype() {
        return logontype;
    }

    public void setLogontype(String logontype) {
        this.logontype = logontype;
    }
}
