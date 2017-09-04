package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/3.
 */
public class ProCriteriaVO implements Serializable {

    private static final long serialVersionUID = -1546102745624349813L;

    private String name;//项目名

    private ProCompareVO criteria;//项目条件

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ProCompareVO getCriteria() {
        return criteria;
    }

    public void setCriteria(ProCompareVO criteria) {
        this.criteria = criteria;
    }

    public ProCriteriaVO(){}

    public ProCriteriaVO(String name,ProCompareVO proCompareVO){
        this.name=name;
        this.criteria=proCompareVO;
    }

    @Override
    public String toString() {
        return "{" +
                " \"name\":\"" + name + '\"' +
                ", \"criteria\":" + criteria.toString() +
                '}';
    }
}
