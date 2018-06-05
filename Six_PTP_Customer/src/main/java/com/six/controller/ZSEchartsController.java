package com.six.controller;

import com.six.model.ZSJieKuanTongji;
import com.six.service.ZSEchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/echarts")
public class ZSEchartsController {

    @Autowired
    private ZSEchartsService echartsService;

    @RequestMapping("/jiekuantongji")
    @ResponseBody
    public List<ZSJieKuanTongji> jiekuantongji() throws Exception {

        List<ZSJieKuanTongji> list =  echartsService.jiekuantongji();

        return list;
    }
}
