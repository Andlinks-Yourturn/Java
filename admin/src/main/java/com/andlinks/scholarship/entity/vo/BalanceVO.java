package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/1.
 */
public class BalanceVO implements Serializable{
    private static final long serialVersionUID = -1055414729642917783L;

    private int balance;

    public BalanceVO(){}

    public BalanceVO(int balance){
        this.balance=balance;
    }
    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }
}
