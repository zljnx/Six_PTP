package com.six.controller;

import com.six.model.HouTaiTongJi;
import com.six.service.ZSHouTaiTongJiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/httongji")
public class ZSHouTaiTongJiController {

    @Autowired
    private ZSHouTaiTongJiService httjService;

    @RequestMapping("/houtaishouye")
    @ResponseBody
    public HouTaiTongJi houtaishouye() throws Exception {
        HouTaiTongJi houTaiTongJi =  httjService.houtaishouye();
        return houTaiTongJi;
    }
}
