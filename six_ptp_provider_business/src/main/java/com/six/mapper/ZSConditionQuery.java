package com.six.mapper;

import com.six.model.DebtManagement;
import org.apache.ibatis.jdbc.SQL;

import java.util.Date;
import java.util.Map;

public class ZSConditionQuery {

    public String DebtManagementlist(DebtManagement debtManagement, Integer start, Integer pageSize) {

        //new一个SQL对象
        SQL querySql = new SQL();
        //开始查询
        querySql.SELECT("*")
                .FROM("p2p_DebtManagement")
                .WHERE("1=1");
        //查询投资人
        String investor =  debtManagement.getInvestor();
        if (investor != null && !"".equals(investor)) {
            querySql.WHERE("investor = #{debtManagement.investor}");
        }
        //查询标题
        String Borrowingtitle = debtManagement.getBorrowingtitle();
        if (Borrowingtitle != null && !"".equals(Borrowingtitle)) {
            querySql.WHERE("Borrowingtitle = #{debtManagement.Borrowingtitle}");
        }
        //查询投资时间
        Date investtime =  debtManagement.getInvesttime();
        if (investtime != null && !"".equals(investtime)) {
            querySql.WHERE("investtime <= #{debtManagement.investtime}");
        }
        //至
        Date settletime =  debtManagement.getSettletime();
        if (settletime != null && !"".equals(settletime)) {
            querySql.WHERE("investtime >= #{debtManagement.settletime}");
        }
        Integer investortype = debtManagement.getInvestortype();
        if (investortype != null && !"".equals(investortype)) {
            querySql.WHERE("investortype = #{debtManagement.investortype}");
        }
        return querySql.toString()+" limit "+start+","+pageSize;
    }

    public String queryzongtiaoshu(DebtManagement debtManagement) {
        //new一个SQL对象
        SQL querySql = new SQL();
        //开始查询
        querySql.SELECT("count(*)")
                .FROM("p2p_DebtManagement")
                .WHERE("1=1");
        //查询投资人
        String investor =  debtManagement.getInvestor();
        if (investor != null && !"".equals(investor)) {
            querySql.WHERE("investor = #{debtManagement.investor}");
        }
        //查询标题
        String Borrowingtitle = debtManagement.getBorrowingtitle();
        if (Borrowingtitle != null && !"".equals(Borrowingtitle)) {
            querySql.WHERE("Borrowingtitle = #{debtManagement.Borrowingtitle}");
        }
        //查询投资时间
        Date investtime =  debtManagement.getInvesttime();
        if (investtime != null && !"".equals(investtime)) {
            querySql.WHERE("investtime <= #{debtManagement.investtime}");
        }
        //至
        Date settletime =  debtManagement.getSettletime();
        if (settletime != null && !"".equals(settletime)) {
            querySql.WHERE("investtime >= #{debtManagement.settletime}");
        }
        Integer investortype = debtManagement.getInvestortype();
        if (investortype != null && !"".equals(investortype)) {
            querySql.WHERE("investortype = #{debtManagement.investortype}");
        }
        return querySql.toString();
    }
}
