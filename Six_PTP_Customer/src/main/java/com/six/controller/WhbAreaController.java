package com.six.controller;

import com.six.model.Personalloanintention;
import com.six.service.WhbAreasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2018/5/29.
 */
@Controller
@RequestMapping("area")
public class WhbAreaController {

    @Autowired
    private WhbAreasService whbareasService;

   @RequestMapping("addGeRenArea")
    public String addGeRenArea(Personalloanintention personalloanintention){
       whbareasService.addGeRenArea(personalloanintention);
       return "zs/shouye";
   }

   @RequestMapping("addQiYeArea")
   public String addQiYeArea(Personalloanintention personalloanintention){
       whbareasService.addQiYeArea(personalloanintention);
       return "zs/shouye";
   }
}
