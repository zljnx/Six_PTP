package com.six.model;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @ProjectName: Six_PTP
 * @ClassName: Amount
 * @Package com.six.model
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/30 0:19
 * @Version 1.0
 */
public class Amount implements Serializable{
    private static final long serialVersionUID = 7954174253794023370L;
    private BigDecimal borrowing_amount;
    private BigDecimal investment_amount;

    public BigDecimal getBorrowing_amount() {
        return borrowing_amount;
    }

    @Override
    public String toString() {
        return "Amount{" +
                "borrowing_amount=" + borrowing_amount +
                ", investment_amount=" + investment_amount +
                '}';
    }

    public void setBorrowing_amount(BigDecimal borrowing_amount) {
        this.borrowing_amount = borrowing_amount;
    }

    public BigDecimal getInvestment_amount() {
        return investment_amount;
    }

    public void setInvestment_amount(BigDecimal investment_amount) {
        this.investment_amount = investment_amount;
    }
}
