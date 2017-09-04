package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/3.
 */
public class StuCriteriaVO implements Serializable {
    private static final long serialVersionUID = -4977384953391719764L;


    private String name;//学生名

    private CompareVO criteria;//学生基本比较信息

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public CompareVO getCriteria() {
        return criteria;
    }

    public void setCriteria(CompareVO criteria) {
        this.criteria = criteria;
    }

    public StuCriteriaVO(){}
    public StuCriteriaVO(String name,CompareVO compareVO){
        this.name=name;
        this.criteria=compareVO;
    }
    @Override
    public String toString() {
        return "{" +
                " \"name\":\"" + name + '\"' +
                ", \"criteria\":" + criteria.toString() +
                '}';
    }
}
