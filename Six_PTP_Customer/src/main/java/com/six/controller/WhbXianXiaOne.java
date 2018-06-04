package com.six.controller;


import com.six.model.WhbUnderline;
import com.six.service.WhbXianXiaOnetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/17.
 */
@Controller
@RequestMapping("/xianxia")
public class WhbXianXiaOne {

    @Autowired
    private WhbXianXiaOnetService whbXianXiaOnetService;

    @RequestMapping("/selectUnderline")
    @ResponseBody
    public Map<String,Object> selectUnderline(Integer start, Integer limit, WhbUnderline whbUnderline){

        List<WhbUnderline> list = new ArrayList<WhbUnderline>();

        Map<String,Object> map =new HashMap<String,Object>();
        if(whbUnderline.getX_Loan()==""){
            whbUnderline.setX_Loan(null);
        }

        if(start==null){
            start=1;
        }

        list=whbXianXiaOnetService.selectUnderline(whbUnderline,start,limit);
        long count = whbXianXiaOnetService.selectUnderlineCount(whbUnderline);
        map.put("count", count);
        map.put("data",list);
        map.put("code",0);
        map.put("msg","");
        return  map;
    }
    @RequestMapping("addXianXia")
    @ResponseBody
    public void addXianXia(WhbUnderline whbUnderline){

        whbXianXiaOnetService.addXianXia(whbUnderline);
    }

    @RequestMapping("selectXianXia")
    public String selectXianXia(Integer id,WhbUnderline whbUnderline,Model model){

        WhbUnderline u =  whbXianXiaOnetService.selectXianXia(id);

        model.addAttribute("user",u);

        return  "whb/Cuikuan";
    }
}
