package com.six.controller;

import com.alibaba.dubbo.common.json.JSONArray;
import com.alibaba.fastjson.JSON;
import com.aliyun.oss.OSSClient;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.six.model.Amount;
import com.six.model.UserInfo;
import com.six.model.UserMain;
import com.six.model.UserSex;
import com.six.service.LzhUserInfoService;
import com.six.util.AliyunOSSClientUtil;
import com.six.util.ExportExcel;
import com.six.util.OSSClientConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhUserInfoController
 * @Package com.six.controller
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/18 18:47
 * @Version 1.0
 */
@Controller("LzhUserInfoController")
@RequestMapping("lzhUserInfo")
public class LzhUserInfoController {
    @Autowired
    private LzhUserInfoService lzhUserInfoService;
    @RequestMapping("queryUserInfo")
    @ResponseBody
    public Map<String,Object> queryUserInfo(UserInfo userInfo, Integer start, Integer number) {
        List<UserInfo> list = new ArrayList<UserInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if(userInfo.getLoginname()==""){
            userInfo.setLoginname(null);
        }

        if (start == null) {
            start = 1;
        }
        try {
            list = lzhUserInfoService.queryUserInfo(userInfo, start, number);
            long count = lzhUserInfoService.queryUserInfoCount(userInfo);
            map.put("count", count);
            map.put("data", list);
            map.put("code", 0);
            map.put("msg", "");

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }
    @RequestMapping("queryuInformation")
    public String queryuInformation(UserInfo userInfo,Model model){
        try {
            userInfo = lzhUserInfoService.queryuInformation(userInfo);
         /*   String  SS=   JSON.toJSONStringWithDateFormat(userInfo,"yyyy-MM-dd");
            JSONObject jsonObject=JSONObject.fromObject(SS);
            UserInfo   ss=  (UserInfo)JSONObject.toBean(jsonObject, UserInfo.class);*/
            model.addAttribute("userInfo",userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhdetail";
    }
    @RequestMapping("queryuInfoById")
    public String queryuInfoById(UserInfo userInfo,Model model){
        try {
            userInfo = lzhUserInfoService.queryuInformation(userInfo);
            model.addAttribute("userInfo", userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhuserinfoupdate";
    }
    //个人信息编辑
    @RequestMapping("updateUserInfo")
    @ResponseBody
    public void updateUserInfo(UserInfo userInfo){
        try {
            lzhUserInfoService.updateUserInfo(userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //增加评估次数
    @RequestMapping("updateUserRiskassess")
    @ResponseBody
    public String updateUserRiskassess(UserInfo userInfo){
        String flag="";
        if(userInfo.getRiskassess()!=0 && userInfo.getAssesscount()<3){
            try {
                lzhUserInfoService.updateUserRiskassess(userInfo);
            } catch (Exception e) {
                e.printStackTrace();
            }
            flag= "success";
        }else if(userInfo.getRiskassess()==0){
            flag= "noris";
        }else if(userInfo.getAssesscount()==3){
            flag= "max";
        }
        return flag;
    }
    //批量删
    @RequestMapping("delAllUserInfo")
    @ResponseBody
    public void delAllUserInfo(String ids){
        try {
        lzhUserInfoService.delAllUserInfo(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("queryReviewSize")
    public String queryReviewSize(UserInfo userInfo,Model model){
        try {
            userInfo = lzhUserInfoService.queryReviewSize(userInfo);
            model.addAttribute("userInfo", userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhreview";
    }
    @RequestMapping("queryReviewSizeTwo")
    public String queryReviewSizeTwo(UserInfo userInfo,Model model){
        try {
            userInfo = lzhUserInfoService.queryReviewSize(userInfo);
            model.addAttribute("userInfo", userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhreviewnotes";
    }
    @RequestMapping("queryReviewInfo")
    @ResponseBody
    public Map<String,Object> queryReviewInfo(String reviewid,Integer start,Integer number) {
        List<UserInfo> list = new ArrayList<UserInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if (start == null) {
            start = 1;
        }
        try {
            list = lzhUserInfoService.queryReviewInfo(reviewid, start, number);
            long count = lzhUserInfoService.queryReviewInfoCount(reviewid);
            map.put("count", count);
            map.put("data", list);
            map.put("code", 0);
            map.put("msg", "");

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }

    @RequestMapping("queryReviewnotesInfo")
    @ResponseBody
    public Map<String,Object> queryReviewnotesInfo(String id,Integer start,Integer number) {
        List<UserInfo> list = new ArrayList<UserInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if (start == null) {
            start = 1;
        }
        try {
            list = lzhUserInfoService.queryReviewnotesInfo(id, start, number);
            long count = lzhUserInfoService.queryReviewnotesInfoCount(id);
            map.put("count", count);
            map.put("data", list);
            map.put("code", 0);
            map.put("msg", "");

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return map;
    }
    @RequestMapping("updateAndsaveReview")
    @ResponseBody
    public String updateAndsaveReview(UserInfo userInfo){
        String flag="";
        if(userInfo.getCertificationstatus()==1){
            try {
                lzhUserInfoService.updateAndsaveReview(userInfo);
            } catch (Exception e) {
                e.printStackTrace();
            }
            flag= "success";
        }else {
            flag= "error";
        }
        return flag;
    }
    @RequestMapping("deleteReviewnotes")
    @ResponseBody
    public void deleteReviewnotes(String reviewid){
        try {
            lzhUserInfoService.deleteReviewnotes(reviewid);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("saveUserInfo")
    @ResponseBody
    public void saveUserInfo(UserInfo userInfo){
        try {
            lzhUserInfoService.saveUserInfo(userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/downAllUserInfo")
    public void downAllUserInfo(HttpServletResponse Response) throws Exception {
        UserInfo userInfo = new UserInfo();
        String title = "用户基本信息";
        String[] rowName= {"序号","用户名","真实姓名","手机号","身份证号","邮箱","状态","注册时间"};
        List<Object[]>  dataList =new ArrayList<Object[]>();
        List<UserInfo> queryuserInfo = lzhUserInfoService.queryuserInfo(userInfo);
        Object[] obj=null;
        for (int i = 0; i < queryuserInfo.size(); i++) {
            obj = new Object[rowName.length];
            obj[0]=queryuserInfo.get(i).getId();
            obj[1]=queryuserInfo.get(i).getLoginname();
            obj[2]=queryuserInfo.get(i).getUsername();
            obj[3]=queryuserInfo.get(i).getUserphone();
            obj[4]=queryuserInfo.get(i).getIdcard();
            obj[5]=queryuserInfo.get(i).getEamil();
            obj[6]=queryuserInfo.get(i).getStatus();
            obj[7]=queryuserInfo.get(i).getSendtime();
            dataList.add(obj);
        }
        ExportExcel exportExcel=new ExportExcel(title, rowName, dataList, Response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    @RequestMapping("queryTreportforms")
    @ResponseBody
    public List<Amount> queryTreportforms(String id) throws Exception{
        List<Amount> list = lzhUserInfoService.queryTreportforms(id);
        return list;
    }
    @RequestMapping("queryUserInfoh")
    public String queryUserInfoh(UserInfo userInfo,HttpSession session){
        try {
            userInfo = lzhUserInfoService.queryUserInfoh(userInfo);
            session.setAttribute("userInfo", userInfo);//session设值
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "thisweb/lzhAccount";
    }
    @RequestMapping(value="uploadPhoto",method=RequestMethod.POST)
    public void uploadPhoto(MultipartFile file, UserInfo userInfo) throws Exception{
        OSSClient ossClient = AliyunOSSClientUtil.getOSSClient();
        String fileUrl=AliyunOSSClientUtil.uploadObject2OSS(ossClient,file,OSSClientConstants.BACKET_NAME,OSSClientConstants.FOLDER);
        System.out.println(fileUrl);
        lzhUserInfoService.saveUserPhoto(fileUrl,userInfo);
    }
    @RequestMapping("queryUserImg")
    @ResponseBody
    public List<UserInfo> queryUserImg(String id){
        List<UserInfo> list = lzhUserInfoService.queryUserImg(id);
        return list;
    }
    @RequestMapping("uploadMainInfo")
    @ResponseBody
    public void uploadMainInfo(UserInfo userInfo){
        try {
            lzhUserInfoService.uploadMainInfo(userInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("updateUserMainPwd")
    @ResponseBody
    public String updateUserMainPwd(UserMain userMain){
        String flag="";
        try {
            List<UserInfo> list = lzhUserInfoService.queryUserMainByPwd(userMain);
            System.out.println(list);
            if(list.size()==1){
                lzhUserInfoService.updateUserMainPwd(userMain);
                flag="passYes";
            }else {
                flag="passNo";
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
    @RequestMapping("queryUserSex")
    @ResponseBody
    public List<UserSex> queryUserSex() throws Exception{
        List<UserSex> list = lzhUserInfoService.queryUserSex();
        return list;
    }
}
