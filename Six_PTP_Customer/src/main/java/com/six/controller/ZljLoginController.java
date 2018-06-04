package com.six.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.six.model.UserInfo;
import com.six.service.RedisCache;
import com.six.service.ZljLoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/1916:05
 */
@RequestMapping("zljLoginController")
@Controller()
public class ZljLoginController {

   @Reference
    private   ZljLoginService zljLoginService;
    @Reference
    private   RedisCache  redisCache;
    @RequestMapping("userlogin")
     @ResponseBody
    public  Map<String,Object> getLoginUserMessge(String username, String userpwd, HttpSession session )
     {

         List<UserInfo> userInfos = zljLoginService.getLoginUserMessge(username,userpwd);

         Map<String,Object> map =new HashMap<String,Object>();
       if(userInfos!=null&&userInfos.size()>0)
       {



          int OnlineNum = redisCache.Savecache(userInfos.get(0));
           session.setAttribute("OnlineNum",OnlineNum);
           session.setAttribute("adminSession",userInfos.get(0));
            map.put("flag","true");
            map.put("msg","登陆成功2秒后自动跳转到首页");
       }else
       {
           map.put("flag","false");
           map.put("msg","账号密码错误！");
       }

      return  map;
     }





}
