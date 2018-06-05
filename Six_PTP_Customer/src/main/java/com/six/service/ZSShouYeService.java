package com.six.service;

import com.six.model.*;
import com.six.util.PageModel;

import java.util.List;

public interface ZSShouYeService {

    List<Borrowingmanagement> touziorjiekuan() throws Exception;

    List<Debenturetransfer> zhaiquanzhuanrang() throws Exception;

    PageModel<Borrowingmanagement> solrListByPage(Borrowingmanagement borr, PageModel pageModel);

    List<Borrowingmanagement> paihang() throws  Exception;

    List<Borrowingmanagement> tuijian() throws Exception;

    ZSTongJi tongji() throws Exception;

    ShouYeXiangQing xiangqing(String xiangqing) throws Exception;

    UserInfo mimayanzheng(String mima, String userid);

    void shenqingtouzi(String userid, String jine, String jkid);

    void updatajiekuan(String jkid, String jine);

    void sorladd(Borrowingmanagement borrowingmanagement);
}
