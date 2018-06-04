package com.six.service.impl;

import com.six.dao.WhbLogYiChangDao;
import com.six.model.Logs;
import com.six.model.WhbRepayment;
import com.six.model.WhbRepayment1;
import com.six.service.WhbLogYiChangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/30.
 */
@Service("whbLogYiChangService")
public class WhbLogYiChangServiceImpl implements WhbLogYiChangService {

    @Autowired
    private WhbLogYiChangDao whbLogYiChangDao;

    @Autowired
    private MongoTemplate mongoTemplate;

    @Override
    public Map<String, Object> logsYiChangList(Logs logs, Integer page, Integer rows) {
        Query query = new Query();

        //第一页查询的起始位置,比如第一页是从0开始,第二页是从10开始查
        page=(page-1)*rows;
        //分页
        query.skip(page);
        //rows每页条数
        query.limit(rows);//以上private 将 mongodbtemplate导入 ，，通过.  点出 find属性进行查数据
        List<Logs> list=mongoTemplate.find(query, Logs.class);
        //查询总记录数  //同理
        long count=mongoTemplate.count(query, Logs.class);
        //放进map
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("total", count);
        map.put("rows", list);
        return map;
    }

    @Override
    public List<WhbRepayment1> selectHuan() {
        return whbLogYiChangDao.selectHuan();
    }

}
