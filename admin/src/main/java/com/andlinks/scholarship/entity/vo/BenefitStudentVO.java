package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/2.
 */
public class BenefitStudentVO implements Serializable {

    private static final long serialVersionUID = 6794799114475309994L;

    private String userName;//学生姓名

    private CompareVO compareVO;//条件

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }
}
