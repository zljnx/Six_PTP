package com.six.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.six.model.TreeMenu;
import com.six.model.UserInfo;
import com.six.service.ZljTreeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2111:08
 */
@Controller
@RequestMapping("ZljTreeMenuController")
public class ZljTreeMenuController {
    @Reference
    private ZljTreeMenuService zljTreeMenuServicel;
    @RequestMapping("getTreeMenu")
    @ResponseBody
    public  List<TreeMenu>  getTreeMenu(HttpSession session)
    {
        UserInfo userInfos = (UserInfo) session.getAttribute("adminSession");
        List<TreeMenu> list =  zljTreeMenuServicel.getTreeMenu(userInfos);
        return  list;
    }

}
