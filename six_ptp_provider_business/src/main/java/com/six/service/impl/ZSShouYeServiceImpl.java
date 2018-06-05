package com.six.service.impl;

import com.six.dao.ZSShouYeMapper;
import com.six.model.*;
import com.six.service.ZSShouYeService;
import com.six.util.PageModel;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service("shouYeService")
public class ZSShouYeServiceImpl implements ZSShouYeService{

    @Autowired
    private SolrClient client;
    @Autowired
    private ZSShouYeMapper shouYeDao;

    @Override
    public List<Borrowingmanagement> touziorjiekuan() throws Exception {

        return shouYeDao.touziorjiekuan();
    }

    @Override
    public List<Debenturetransfer> zhaiquanzhuanrang() throws Exception {
        return shouYeDao.zhaiquanzhuanrang();
    }

    @Override
    public List<Borrowingmanagement> paihang() throws Exception {
        return shouYeDao.paihang();
    }

    @Override
    public List<Borrowingmanagement> tuijian() throws Exception {
        return shouYeDao.tuijian();
    }

    @Override
    public PageModel<Borrowingmanagement> solrListByPage(Borrowingmanagement borr, PageModel pageModel) throws IOException {
        //获取query 对象

        SolrQuery query = new SolrQuery();
        StringBuffer str=new StringBuffer();
        StringBuffer str1= str.append("*:*");
        //设置查询关键字
        if(borr.getProductname()!=null && !"".equals(borr.getProductname())){
            str1.append(" AND productname:"+borr.getProductname());
        }
        if(borr.getJkBorrowingtitle()!=null && !"".equals(borr.getJkBorrowingtitle())){
            str1.append(" AND jkBorrowingtitle:"+borr.getJkBorrowingtitle());
        }
        if(borr.getJkstatus()!=null && !"".equals(borr.getJkstatus())){
            str1.append(" AND jkstatus:"+borr.getJkstatus());
        }
        //开启查询条件
        query.set("q", String.valueOf(str1));
        //开始条数
        query.setStart(pageModel.getStart());
        //结束条数
        query.setRows(pageModel.getEndindex());
        // 开启高亮
        query.setHighlight(true);
        //query.setParam("hl", "true"); //highlighting
        query.addHighlightField("jkBorrowingtitle");

        query.setHighlightSimplePre("<font color='red'>"); // 高亮单词的前缀

        query.setHighlightSimplePost("</font>"); // 高亮单词的后缀

        query.setSort("jkid", SolrQuery.ORDER.desc);
        // 发起请求,获取response
        QueryResponse queryResponse = null;
        try {
            queryResponse = client.query(query);
        } catch (SolrServerException e) {
            e.printStackTrace();
        }
        //根据QueryResponse 对象获取结果集
        SolrDocumentList results = queryResponse.getResults();
        //查询总条数
        long count = results.getNumFound();
        if(!StringUtils.isEmpty(count))
        {
            pageModel.setPageSum((int)count);
        }

        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();

        //新建一个list集合承载数据
        List<Borrowingmanagement> borrowingmanagementList = new ArrayList<Borrowingmanagement>();
        for (SolrDocument solrDocument : results) {

            Borrowingmanagement borr1 =new Borrowingmanagement();

            borr1.setJkid(Integer.valueOf(solrDocument.get("jkid").toString()));


            if (highlighting.get(solrDocument.get("jkid")+"") != null && highlighting.get(solrDocument.get("jkid")+"").get("jkBorrowingtitle") != null) {
                //设置高亮
                String jkBorrowingtitle = highlighting.get(solrDocument.get("jkid")+"").get("jkBorrowingtitle").get(0);

                borr1.setJkBorrowingtitle(jkBorrowingtitle);
            }else
            {
                borr1.setJkBorrowingtitle(solrDocument.get("jkBorrowingtitle").toString());
            }

            borr1.setProductname(solrDocument.get("productname").toString());
            borr1.setJkstatus(solrDocument.get("jkstatus").toString());
            borr1.setJkBorrowingtitle(solrDocument.get("jkBorrowingtitle").toString());
            borr1.setJkapr(solrDocument.get("jkapr").toString());
            borr1.setJkid(Integer.valueOf(solrDocument.get("jkid").toString()));
            borr1.setJkAmount(Double.valueOf(solrDocument.get("jkAmount").toString()));
            borr1.setJkdeadline(solrDocument.get("jkdeadline").toString());

            borrowingmanagementList.add(borr1);
        }
        pageModel.setPageList(borrowingmanagementList);
        return pageModel;
    }

    @Override
    public ZSTongJi tongji() throws Exception {
        return shouYeDao.tongji();
    }

    @Override
    public ShouYeXiangQing xiangqing(String xiangqing) throws Exception {
        return shouYeDao.xiangqing(xiangqing);
    }

    @Override
    public UserInfo mimayanzheng(String mima, String userid) {
        return shouYeDao.mimayanzheng(mima,userid);
    }

    @Override
    public void shenqingtouzi(String userid, String jine, String jkid) {
        DingDanGuanLi ddgl = new DingDanGuanLi();
        if(jkid != null){
            ddgl.setDdtype(9);
            ddgl.setMoney(Double.valueOf(jine));
            ddgl.setUserid(Integer.valueOf(userid));
            ddgl.setOrdersource(Integer.valueOf(jkid));
            shouYeDao.shenqingtouzi(ddgl);
            shouYeDao.gerenyue(userid,jine);
        }

    }

    @Override
    public void updatajiekuan(String jkid, String jine) {
        shouYeDao.updatajiekuan(jkid,jine);
    }

    @Override
    public void sorladd(Borrowingmanagement borrowingmanagement) {
        SolrInputDocument bw =new SolrInputDocument();
        bw.addField("jkid",borrowingmanagement.getJkid());
        bw.addField("jkBorrowingtitle",borrowingmanagement.getJkBorrowingtitle());
        bw.addField("jkAmount",borrowingmanagement.getJkAmount());
        bw.addField("jkapr",borrowingmanagement.getJkapr());
        bw.addField("jkdeadline",borrowingmanagement.getJkdeadline());
        bw.addField("haixuzijin",borrowingmanagement.getJkAmount());
        bw.addField("productname",borrowingmanagement.getProductname());
        bw.addField("jkstatus",borrowingmanagement.getJkstatus());
        try {
            client.add(bw);
            client.commit();
        } catch (SolrServerException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

}
