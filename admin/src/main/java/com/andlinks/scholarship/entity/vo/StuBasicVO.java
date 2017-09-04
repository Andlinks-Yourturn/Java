package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/8/31.
 */
public class StuBasicVO implements Serializable{
    private static final long serialVersionUID = 851661078729641241L;

    private String userName;//姓名

    private int projectNum;//项目个数

    private int money;//奖学金金额

    private CompareVO compareVO;//比较的json格式字符串

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getProjectNum() {
        return projectNum;
    }

    public void setProjectNum(int projectNum) {
        this.projectNum = projectNum;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }
}
