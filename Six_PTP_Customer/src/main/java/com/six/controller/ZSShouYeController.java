package com.six.controller;




import com.six.model.*;
import com.six.service.ZSShouYeService;
import com.six.util.HttpUtil;
import com.six.util.PageModel;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping("/shouye")
public class ZSShouYeController {

    @Autowired
    private ZSShouYeService shouYeService;

    @RequestMapping("/touziorjiekuan")
    @ResponseBody
    public List<Borrowingmanagement> touziorjiekuan() throws Exception {

       List<Borrowingmanagement> list =  shouYeService.touziorjiekuan();

        return list;
    }

    @RequestMapping("/zhaiquanzhuanrang")
    @ResponseBody
    public List<Debenturetransfer> zhaiquanzhuanrang() throws Exception {
       List<Debenturetransfer> list = shouYeService.zhaiquanzhuanrang();
       return list;
    }

    @RequestMapping("/solrListByPage")
    @ResponseBody
    public PageModel<Borrowingmanagement> solrListByPage(String chanpinname, String apr, String rongzi, String xiangmustatus, Integer pageNow){

        if(pageNow==null){
            pageNow=1;
        }
        if("不限".equals(chanpinname)){
            chanpinname="";
        }
        if("不限".equals(apr)){
            apr="";
        }/*else if(!apr.equals("")){
            apr=apr.substring(0,1);
        }*/
        if("不限".equals(rongzi)){
            rongzi="";
        }
        if("不限".equals(xiangmustatus)){
            xiangmustatus="";
        }



        Borrowingmanagement borr = new Borrowingmanagement();

        borr.setProductname(chanpinname);
        borr.setJkBorrowingtitle(apr);
       // borr.setJkapr(apr);
        borr.setJkstatus(xiangmustatus);

        PageModel   pageModel  = new PageModel();
        pageModel.setPageNow(pageNow);
        pageModel=shouYeService.solrListByPage(borr,pageModel);
        return pageModel;
    }

    @RequestMapping("/xiangqing")
    public String xiangqing(String xiangqing,Model model) throws Exception {

        ShouYeXiangQing syxq =  shouYeService.xiangqing(xiangqing);
        model.addAttribute("xiangqing",syxq);

        return "thisweb/xiangqingye";
    }

    @RequestMapping("/paihang")
    @ResponseBody
    public List<Borrowingmanagement> paihang() throws Exception {
       List<Borrowingmanagement> list =  shouYeService.paihang();
       return list;
    }

    @RequestMapping("/tuijian")
    @ResponseBody
    public List<Borrowingmanagement> tuijian() throws Exception {
        List<Borrowingmanagement> list =  shouYeService.tuijian();
        return list;
    }

    public static final String APPKEY = "3416c5f8bf97ad7c";// 你的appkey
    public static final String URL = "http://api.jisuapi.com/news/get";
    public static final String channel = "头条";// utf8  新闻频道(头条,财经,体育,娱乐,军事,教育,科技,NBA,股票,星座,女性,健康,育儿)
    public static final int num = 40;// 数量 默认10，最大40


    @RequestMapping("/queryNews")
    @ResponseBody
    public JSONArray queryNews() throws Exception {
        String result = null;
        JSONArray list=null;
        String url = URL + "?channel=" + URLEncoder.encode(channel, "utf-8") + "&num=" + num + "&appkey=" + APPKEY;
        try {
            result = HttpUtil.sendGet(url, "utf-8");
            JSONObject json = JSONObject.fromObject(result);
            if (json.getInt("status") != 0) {
                System.out.println(json.getString("msg"));
            } else {
                JSONObject resultarr = (JSONObject) json.opt("result");
                list = resultarr.optJSONArray("list");
             
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @RequestMapping("/tongji")
    @ResponseBody
    public ZSTongJi tongji() throws Exception {
        ZSTongJi tongji =  shouYeService.tongji();

        return tongji;
    }

    @RequestMapping("/tongji1")
    @ResponseBody
    public ZSTongJi tongji1() throws Exception {
        ZSTongJi tongji =  shouYeService.tongji();

        return tongji;
    }

    @RequestMapping("/mimayanzheng")
    @ResponseBody
    public String mimayanzheng(String mima,String userid,String jine,String jkid){
       UserInfo user =  shouYeService.mimayanzheng(mima,userid);
       if(user != null){
           shouYeService.shenqingtouzi(userid,jine,jkid);
           shouYeService.updatajiekuan(jkid,jine);
           return "yes";
       }else{
           return "no";
       }
    }
}
