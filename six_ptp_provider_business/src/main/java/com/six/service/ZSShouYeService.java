package com.six.service;

import com.six.model.Borrowingmanagement;
import com.six.model.Debenturetransfer;
import com.six.model.UserInfo;
import com.six.model.ZSTongJi;
import com.six.util.PageModel;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;
import java.util.List;

public interface ZSShouYeService {

    List<Borrowingmanagement> touziorjiekuan() throws Exception;

    List<Debenturetransfer> zhaiquanzhuanrang() throws Exception;

    List<Borrowingmanagement> paihang() throws  Exception;

    List<Borrowingmanagement> tuijian() throws Exception;

    PageModel<Borrowingmanagement> solrListByPage(Borrowingmanagement borr, PageModel pageModel) throws IOException, SolrServerException;

    ZSTongJi tongji() throws Exception;

}
