package com.six.controller;

import com.six.model.Amount;
import com.six.model.UserInfo;
import com.six.service.LzhFreemarkerService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhFreemarker
 * @Package com.six.controller
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/6/1 17:01
 * @Version 1.0
 */
@Controller
@RequestMapping("lzhfreemarker")
public class LzhFreemarkerController {
    @Autowired
    private LzhFreemarkerService lzhFreemarkerService;
    private static final String templateFolder = LzhFreemarkerController.class.getClassLoader().getResource("../../").getPath() + "WEB-INF/templete/";
    private static final String newfile =LzhFreemarkerController.class.getClassLoader().getResource("../../").getPath() + "thisweb";
    @RequestMapping("queryUserInfoFm")
    @ResponseBody
    public void queryUserInfoFm(UserInfo userInfo){
        try {
            List<UserInfo> list=  lzhFreemarkerService.queryUserInfoFm(userInfo);
            Configuration configuration = new Configuration();
            configuration.setDirectoryForTemplateLoading(new File(templateFolder));
            configuration.setDefaultEncoding("utf-8");
            Template template = configuration.getTemplate("lzhAccountGl.ftl");
            Writer out=new FileWriter(new File(newfile+"/lzhAccountGl.html"));
            Map root=new HashMap();
            root.put("list", list);
            template.process(root, out);
            out.flush();
            out.close();
        }catch (Exception e){
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    @RequestMapping("queryUserInfoFmt")
    @ResponseBody
    public void queryUserInfoFmt(UserInfo userInfo){
        try {
            List<UserInfo> list=  lzhFreemarkerService.queryUserInfoFm(userInfo);
            Configuration configuration = new Configuration();
            configuration.setDirectoryForTemplateLoading(new File(templateFolder));
            configuration.setDefaultEncoding("utf-8");
            Template template = configuration.getTemplate("lzhAccount.ftl");
            Writer out=new FileWriter(new File(newfile+"/lzhAccount.html"));
            Map root=new HashMap();
            root.put("list", list);
            template.process(root, out);
            out.flush();
            out.close();
        }catch (Exception e){
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
