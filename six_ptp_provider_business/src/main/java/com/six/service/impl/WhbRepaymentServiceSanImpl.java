package com.six.service.impl;

import com.six.dao.WhbRepaymentMapperSan;
import com.six.model.WhbRepayment;
import com.six.service.WhbRepaymentServiceSan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Service("whbRepaymentServiceSan")
public class WhbRepaymentServiceSanImpl implements WhbRepaymentServiceSan{

        @Autowired
        private WhbRepaymentMapperSan whbRepaymentMapperSan;

        @Override
        public List<WhbRepayment> selectRepayment2(WhbRepayment whbRepayment, Integer start, Integer pageSize){
            List<WhbRepayment> list = whbRepaymentMapperSan.selectRepayment2(whbRepayment,(start-1)*pageSize,pageSize);
        return  list;
        }
        @Override
        public long selectRepaymentCount2(WhbRepayment whbRepayment) {
            return whbRepaymentMapperSan.selectRepaymentCount2(whbRepayment);
        }

        @Override
        public void delRepayment(Integer id) {
                whbRepaymentMapperSan.delRepayment(id);
        }
        @Override
        public Double queryAllMoney() {

                return whbRepaymentMapperSan.queryAllMoney();
        }

        @Override
        public Double queryAllMoney1() {
                return whbRepaymentMapperSan.queryAllMoney1();
        }

        @Override
        public Double queryAllMoney2() {
                return whbRepaymentMapperSan.queryAllMoney2();
        }

}
