package com.six.service.impl;

import com.six.dao.WhbRepaymentMapper;
import com.six.dao.WhbRepaymentMapperTwo;
import com.six.model.WhbRepayment;
import com.six.service.WhbRepaymentServiceTwo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Service("whbRepaymentServiceTwo")
public class WhbRepaymentServiceTwoImpl implements WhbRepaymentServiceTwo{

        @Autowired
        private WhbRepaymentMapperTwo whbRepaymentMapperTwo;

        @Override
        public List<WhbRepayment> selectRepayment1(WhbRepayment whbRepayment, Integer start, Integer pageSize){
            List<WhbRepayment> list = whbRepaymentMapperTwo.selectRepayment1(whbRepayment,(start-1)*pageSize,pageSize);
        return  list;
        }
        @Override
        public long selectRepaymentCount1(WhbRepayment whbRepayment) {
            return whbRepaymentMapperTwo.selectRepaymentCount1(whbRepayment);
        }
        @Override
        public Double queryAllMoney() {

                return whbRepaymentMapperTwo.queryAllMoney();
        }

        @Override
        public Double queryAllMoney1() {
                return whbRepaymentMapperTwo.queryAllMoney1();
        }

        @Override
        public Double queryAllMoney2() {
                return whbRepaymentMapperTwo.queryAllMoney2();
        }
}
