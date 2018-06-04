package com.six.controller;

import com.aliyun.oss.OSSClient;
import com.six.model.CorporateInfo;
import com.six.model.WhbContract;
import com.six.service.LzhCorporateInfoService;
import com.six.service.LzhUserInfoService;
import com.six.util.AliyunOSSClientUtil;
import com.six.util.ExportExcel;
import com.six.util.OSSClientConstants;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.*;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhCorporateInfoController
 * @Package com.six.controller
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/25 11:59
 * @Version 1.0
 */
@Controller
@RequestMapping("lzhCorporateInfo")
public class LzhCorporateInfoController {
    @Autowired
    private LzhCorporateInfoService lzhCorporateInfoService;
    @Autowired
    private LzhUserInfoService lzhUserInfoService;
    @RequestMapping("queryCorporateInfo")
    @ResponseBody
    public Map<String,Object> queryCorporateInfo(CorporateInfo corporateInfo, Integer start, Integer number) {
        List<CorporateInfo> list = new ArrayList<CorporateInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if (start == null) {
            start = 1;
        }
        try {
            list = lzhCorporateInfoService.queryCorporateInfo(corporateInfo, start, number);
            long count = lzhCorporateInfoService.queryCorporateInfoCount(corporateInfo);
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
    @RequestMapping("queryCorporateView")
    public String queryCorporateView(CorporateInfo corporateInfo,Model model){
        try {
            corporateInfo = lzhCorporateInfoService.queryuInformation(corporateInfo);
            model.addAttribute("corporateInfo", corporateInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhdetail2";
    }
    @RequestMapping("queryCorporateViewt")
    public String queryCorporateViewt(CorporateInfo corporateInfo,Model model){
        try {
            corporateInfo = lzhCorporateInfoService.queryuInformation(corporateInfo);
            model.addAttribute("corporateInfo", corporateInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhcorporateinfoupdate";
    }
    //个人信息编辑
    @RequestMapping("updateCorporateInfo")
    @ResponseBody
    public void updateCorporateInfo(CorporateInfo corporateInfo){
        try {
            lzhCorporateInfoService.updateCorporateInfo(corporateInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("queryReviewtSize")
    public String queryReviewtSize(CorporateInfo corporateInfo,Model model){
        try {
            corporateInfo = lzhCorporateInfoService.queryReviewtSize(corporateInfo);
            model.addAttribute("corporateInfo", corporateInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhreviewt";
    }
    @RequestMapping("queryReviewtInfo")
    @ResponseBody
    public Map<String,Object> queryReviewtInfo(String reviewid,Integer start,Integer number) {
        List<CorporateInfo> list = new ArrayList<CorporateInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if (start == null) {
            start = 1;
        }
        try {
            list = lzhCorporateInfoService.queryReviewtInfo(reviewid, start, number);
            long count = lzhCorporateInfoService.queryReviewtInfoCount(reviewid);
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
    @RequestMapping("updateAndsaveReviewt")
    @ResponseBody
    public String updateAndsaveReviewt(CorporateInfo corporateInfo){
        String flag="";
        if(corporateInfo.getCertificationstatus()==1){
            try {
                lzhCorporateInfoService.updateAndsaveReviewt(corporateInfo);
            } catch (Exception e) {
                e.printStackTrace();
            }
            flag= "success";
        }else {
            flag= "error";
        }
        return flag;
    }
    @RequestMapping("queryReviewtSizeTwo")
    public String queryReviewtSizeTwo(CorporateInfo corporateInfo,Model model){
        try {
            corporateInfo = lzhCorporateInfoService.queryReviewtSize(corporateInfo);
            model.addAttribute("corporateInfo", corporateInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "lzh/lzhreviewtnotes";
    }
    @RequestMapping("queryReviewtnotesInfo")
    @ResponseBody
    public Map<String,Object> queryReviewtnotesInfo(String corporate_id,Integer start,Integer number) {
        List<CorporateInfo> list = new ArrayList<CorporateInfo>();
        Map<String, Object> map = new HashMap<String, Object>();
        if (start == null) {
            start = 1;
        }
        try {
            list = lzhCorporateInfoService.queryReviewtnotesInfo(corporate_id, start, number);
            long count = lzhCorporateInfoService.queryReviewtnotesInfoCount(corporate_id);
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
    @RequestMapping("deleteReviewtnotes")
    @ResponseBody
    public void deleteReviewtnotes(String reviewid){
        try {
            lzhUserInfoService.deleteReviewnotes(reviewid);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    //批量删
    @RequestMapping("delAllCorporateInfo")
    @ResponseBody
    public void delAllCorporateInfo(String ids){
        try {
            lzhCorporateInfoService.delAllCorporateInfo(ids);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("downAllCorporateInfo")
    public void downAllCorporateInfo(HttpServletResponse Response) throws Exception {
        CorporateInfo corporateInfo = new CorporateInfo();
        String title = "企业基本信息";
        String[] rowName= {"序号","企业账号","企业名称","联系人姓名","联系人电话","社会信用代码","是否允许投资","状态","注册时间"};
        List<Object[]>  dataList =new ArrayList<Object[]>();
        List<CorporateInfo> querycorporateInfo = lzhCorporateInfoService.querycorporateInfo(corporateInfo);
        Object[] obj=null;
        for (int i = 0; i < querycorporateInfo.size(); i++) {
            obj = new Object[rowName.length];
            obj[0]=querycorporateInfo.get(i).getCorporate_id();
            obj[1]=querycorporateInfo.get(i).getCorporate_account();
            obj[2]=querycorporateInfo.get(i).getCorporate_name();
            obj[3]=querycorporateInfo.get(i).getContact_name();
            obj[4]=querycorporateInfo.get(i).getPerson_phone_number();
            obj[5]=querycorporateInfo.get(i).getSocial_credit();
            obj[6]=querycorporateInfo.get(i).getAllowed_invest();
            obj[7]=querycorporateInfo.get(i).getStatus();
            obj[8]=querycorporateInfo.get(i).getRegistration_time();
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
    @RequestMapping(value="/uploadFile",method=RequestMethod.POST)
    public void uploadFile(MultipartFile  file) throws Exception{
        OSSClient ossClient = AliyunOSSClientUtil.getOSSClient();
        AliyunOSSClientUtil.uploadObject2OSS(ossClient,file,OSSClientConstants.BACKET_NAME,OSSClientConstants.FOLDER);
    }
    @RequestMapping("downFile")
    public void downFile(String fileUrl, HttpServletRequest request, HttpServletResponse response) throws Exception{
        OSSClient ossClient = AliyunOSSClientUtil.getOSSClient();
        AliyunOSSClientUtil.downFile(ossClient,fileUrl,request,response);
    }
    @RequestMapping("downBaoquan")
    public void downBaoquan(WhbContract whbContract,HttpServletResponse Response) throws Exception {
        try {
            System.out.println(whbContract.getB_id());
            String title = "协议保全信息";
            String[] rowName= {"序号","用户名","姓名/企业名称","协议编号","保全ID","保全时间","保全状态"};
            List<Object[]>  dataList =new ArrayList<Object[]>();
            List<WhbContract> queryBaoquanById = lzhCorporateInfoService.queryBaoquanById(whbContract);
            Object[] obj=null;
            for (int i = 0; i < queryBaoquanById.size(); i++) {
                obj = new Object[rowName.length];
                obj[0]=queryBaoquanById.get(i).getB_id();
                obj[1]=queryBaoquanById.get(i).getLoginname();
                obj[2]=queryBaoquanById.get(i).getUsername();
                obj[3]=queryBaoquanById.get(i).getB_agreement();
                obj[4]=queryBaoquanById.get(i).getB_bid();
                obj[5]=queryBaoquanById.get(i).getB_bdate();
                obj[6]=queryBaoquanById.get(i).getB_state();
                dataList.add(obj);
            }
            ExportExcel exportExcel=new ExportExcel(title, rowName, dataList, Response);
            exportExcel.export();
            //已下载的文件名称
            String downfileName=ExportExcel.fileName;
            String newdownfileName = UUID.randomUUID().toString() + downfileName.substring(downfileName.lastIndexOf("."));
            Map<String, String> map = System.getenv();
            String userName = map.get("USERNAME");// 获取用户名
            OSSClient ossClient=new OSSClient(OSSClientConstants.ENDPOINT,OSSClientConstants.ACCESS_KEY_ID,OSSClientConstants.ACCESS_KEY_SECRET);
            //上传文件
            ossClient.putObject(OSSClientConstants.BACKET_NAME, OSSClientConstants.FOLDER+newdownfileName, new File("C:\\Users\\"+userName+"\\Downloads\\"+downfileName+""));
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
