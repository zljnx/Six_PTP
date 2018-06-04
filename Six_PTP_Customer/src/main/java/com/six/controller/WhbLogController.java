package com.six.controller;

import com.alibaba.fastjson.JSONObject;
import com.six.model.Logs;
import com.six.service.WhbLogService;
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
public class WhbLogController {

    @Autowired
    private WhbLogService whblogService;

    //查日志
    @RequestMapping("logsList")
    @ResponseBody
    public JSONObject logsList(Logs logs, Integer page, Integer rows){

        Map<String, Object> stringObjectMap = whblogService.logsList(logs, page, rows);
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
    @RequestMapping("selecttongji")
    public List selecttongji(){
        List selecttongji = whblogService.selecttongji();
        return selecttongji;
    }
}
