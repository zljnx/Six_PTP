package com.six.controller;

import com.alibaba.fastjson.JSONObject;
import com.six.model.Logs;
import com.six.model.WhbRepayment1;
import com.six.service.WhbLogYiChangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/30.
 */
@Controller
@RequestMapping("logController")
public class WhbLogYiChangController {

    @Autowired
    private WhbLogYiChangService whbLogYiChangService;

    //查日志
    @RequestMapping("logsYiChangList")
    @ResponseBody
    public JSONObject logsYiChangList(Logs logs, Integer page, Integer rows){

        Map<String, Object> stringObjectMap = whbLogYiChangService.logsYiChangList(logs, page, rows);
        List<Logs> list= (List<Logs>) stringObjectMap.get("rows");
        Long total= (Long) stringObjectMap.get("total");
        JSONObject object=new JSONObject();
        object.put("data",list);
        object.put("count",total);
        object.put("code",0);
        object.put("msg","");

        return object;
    }
    @ResponseBody
    @RequestMapping("selectHuan")
    public List<WhbRepayment1> selectHuan(){
        List<WhbRepayment1> list = whbLogYiChangService.selectHuan();
        return list;
    }
}
