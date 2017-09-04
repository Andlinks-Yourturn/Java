package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/8/30.
 */
public class CompareVO implements Serializable {
    private static final long serialVersionUID = 6973757420987420409L;

   private  int age;//年龄

    private String major;//专业

   private  int rank;//排名

    private double gpa;//绩点

    public double getGpa() {
        return gpa;
    }

    public void setGpa(double gpa) {
        this.gpa = gpa;
    }

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

    public CompareVO(){}

    public CompareVO(int age,String major,int rank,double gpa){
        this.age=age;
        this.major=major;
        this.rank=rank;
        this.gpa=gpa;
    }
    //json格式的字符串
    @Override
    public String toString() {
        return "{" +
                "\"age\":" + age +
                ", \"major\":\"" + major + '\"' +
                ", \"rank\":"+ rank +
                ", \"gpa\":"+ gpa +
                '}';
    }

}
