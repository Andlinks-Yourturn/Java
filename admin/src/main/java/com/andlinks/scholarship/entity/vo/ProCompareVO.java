package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/3.
 */
public class ProCompareVO implements Serializable {
    private static final long serialVersionUID = 7193060497811653019L;

    private  int age;//年龄

    private String major;//专业

    private  int rank;//排名

    private double gpa;//绩点

    private int amount;//账户余额

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public  ProCompareVO(){}
    public  ProCompareVO(int age,int rank,double gpa,String major,int amount){
        this.age=age;
        this.rank=rank;
        this.gpa=gpa;
        this.major=major;
        this.amount=amount;
    }
    @Override
    public String toString() {
        return "{" +
                "\"age\":" + age +
                ", \"major\":\"" + major + '\"' +
                ", \"rank\":"+ rank +
                ", \"gpa\":"+ gpa +
                ", \"amount\":"+ amount +
                '}';
    }
}
