package com.six.controller;

import com.six.model.WhbContract;
import com.six.service.WhbContractService;
import com.six.util.ExportExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/27.
 */
@RestController
@RequestMapping("contract")
public class WhbContractController {

    @Autowired
    private WhbContractService whbContractService;

    @RequestMapping("selectContract")
    public Map<String,Object> selectContract(Integer start, Integer limit, WhbContract whbContract){

        List<WhbContract> list = new ArrayList<WhbContract>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbContract.getUsername()==""){
            whbContract.setUsername(null);
        }
        if(whbContract.getLoginname()==""){
            whbContract.setLoginname(null);
        }
        if(whbContract.getB_mark()==""){
            whbContract.setB_mark(null);
        }
        if(whbContract.getB_loantitle()==""){
            whbContract.setB_loantitle(null);
        }
        if(whbContract.getB_contract()==""){
            whbContract.setB_contract(null);
        }

        if(start==null){
            start=1;
        }

        list=whbContractService.selectContract(whbContract,start,limit);
        long count = whbContractService.selectContractCount(whbContract);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }

    @RequestMapping("selectContract1")
    public Map<String,Object> selectContract1(Integer start, Integer limit, WhbContract whbContract){

        List<WhbContract> list = new ArrayList<WhbContract>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbContract.getUsername()==""){
            whbContract.setUsername(null);
        }
        if(whbContract.getLoginname()==""){
            whbContract.setLoginname(null);
        }
        if(whbContract.getB_agreement()==""){
            whbContract.setB_agreement(null);
        }

        if(start==null){
            start=1;
        }

        list=whbContractService.selectContract1(whbContract,start,limit);
        long count = whbContractService.selectContractCount1(whbContract);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
    @RequestMapping("/daochu")
    public void daochu(HttpServletResponse Response) throws Exception {
        WhbContract whbContract = new WhbContract();
        String title = "协议保全";
        String[] rowName= {"序号","用户名","姓名/企业名称","协议编号","保全ID","保全时间","保全状态"};
        List<Object[]>  dataList =new ArrayList<Object[]>();
        List<WhbContract> queryContract = whbContractService.queryContract(whbContract);
        Object[] obj=null;
        for (int i = 0; i < queryContract.size(); i++) {
            obj = new Object[rowName.length];
            obj[0]=queryContract.get(i).getLoginname();
            obj[1]=queryContract.get(i).getUsername();
            obj[2]=queryContract.get(i).getB_agreement();
            obj[3]=queryContract.get(i).getB_bid();
            obj[4]=queryContract.get(i).getB_bdate();
            obj[5]=queryContract.get(i).getB_state();
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

}
