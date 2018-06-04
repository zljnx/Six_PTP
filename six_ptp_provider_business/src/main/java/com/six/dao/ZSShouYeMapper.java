package com.six.dao;

import com.six.model.Borrowingmanagement;
import com.six.model.Debenturetransfer;
import com.six.model.UserInfo;
import com.six.model.ZSTongJi;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ZSShouYeMapper {

    @Select("<script> select jkid,jkBorrowingtitle,jkapr,jkdeadline,jkAmount from p2p_borrowingmanagement ORDER BY disposetime limit 0,5 </script>")
    List<Borrowingmanagement> touziorjiekuan();


    @Select(" <script> select Borrowingtitle,zrapr,Restperiods,Amountbond,transferprice from p2p_debenturetransfer ORDER BY applyfortime " +
            "LIMIT 0,5 </script> ")
    List<Debenturetransfer> zhaiquanzhuanrang();

    @Select(" select sum(Investmentamount) Investmentamount,loginname from p2p_borrowingmanagement GROUP BY loginname ORDER BY Investmentamount DESC LIMIT 0,10 ")
    List<Borrowingmanagement> paihang();

    @Select(" select jkBorrowingtitle,jkapr,jkdeadline,jkAmount,jkid,yufabutime from p2p_borrowingmanagement where tuijian=1 LIMIT 0,2 ")
    List<Borrowingmanagement> tuijian();

    @Select(" select count(*) zongrenshu,SUM(Investmentamount) zongjine,truncate(sum(Investmentamount*jkapr/100),2) shouyi from p2p_borrowingmanagement ")
    ZSTongJi tongji();

}
