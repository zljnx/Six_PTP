package com.six.service;

import com.six.model.Borrowingmanagement;
import com.six.model.Debenturetransfer;
import com.six.model.UserInfo;
import com.six.model.ZSTongJi;
import com.six.util.PageModel;

import java.util.List;

public interface ZSShouYeService {

    List<Borrowingmanagement> touziorjiekuan() throws Exception;

    List<Debenturetransfer> zhaiquanzhuanrang() throws Exception;

    PageModel<Borrowingmanagement> solrListByPage(Borrowingmanagement borr, PageModel pageModel);

    List<Borrowingmanagement> paihang() throws  Exception;

    List<Borrowingmanagement> tuijian() throws Exception;

    ZSTongJi tongji() throws Exception;
}
