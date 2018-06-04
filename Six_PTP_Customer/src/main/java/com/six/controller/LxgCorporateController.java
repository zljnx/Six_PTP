package com.six.controller;


import com.six.model.LxgInstitutionCombination;
import com.six.model.UserInfo;
import com.six.service.LxgCorporateService;


import org.apache.commons.httpclient.HttpClient;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.controller
 * @Description: 描述.....
 * @create 2018-05-21 17:22
 */
@Controller
@RequestMapping("/lxg")
public class LxgCorporateController {
    @Autowired
    private LxgCorporateService lxgCorporateService;

    //分页查询
    @ResponseBody
    @RequestMapping("queryCorporate")
    public Map<String, Object> queryCorporate(Integer start, Integer limit) {
        List<LxgInstitutionCombination> list = new ArrayList<LxgInstitutionCombination>();
        Map<String, Object> map = new HashMap<String, Object>();
        list = lxgCorporateService.queryCorporate(start, limit);
        long count = lxgCorporateService.queryCount();
        map.put("count", count);
        map.put("data", list);
        map.put("code", 0);
        map.put("msg", "");
        return map;
    }

    //查看
    @RequestMapping("queryCorporateView")
    public String queryCorporateView(LxgInstitutionCombination lxgInstitutionCombination, Model model, HttpSession session) {
        lxgInstitutionCombination = lxgCorporateService.queryCorporateView(lxgInstitutionCombination);
        session.setAttribute("lxgInstitutionCombination", lxgInstitutionCombination);
        model.addAttribute("lxgInstitutionCombination", lxgInstitutionCombination);
        return "lxg/lxgShow";
    }

    //前台登录
    @ResponseBody
    @RequestMapping("LxgLogin")
    public String LxgLogin(String loginname, String userpwd, HttpSession session) {
        int count = lxgCorporateService.LxgLogin(loginname, userpwd);
        if (count == 1) {
            List<UserInfo> list = lxgCorporateService.queryLogin(loginname, userpwd);
            session.setAttribute("list", "list");
            return "kk";
        } else {
            return "gg";
        }
    }




    @ResponseBody
    @RequestMapping("saveuserinfo")
    public String saveuserinfo(String loginname,String userpwd,String userphone) {
              UserInfo userInfo =new UserInfo();
                userInfo.setLoginname(loginname);
                userInfo.setUserpwd(userpwd);
                userInfo.setUserphone(userphone);
               String ttb = lxgCorporateService.saveuserinfo(userInfo);

               System.out.println(ttb);

        return null;
    }

















}




