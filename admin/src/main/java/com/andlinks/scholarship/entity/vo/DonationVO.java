package com.andlinks.scholarship.entity.vo;

import java.io.Serializable;

/**
 * Created by 陈亚兰 on 2017/9/1.
 */
public class DonationVO implements Serializable {
    private static final long serialVersionUID = -8638482376230241522L;

    private String projectName;//项目名

    private String keyWord;//关键词

    private CompareVO compareVO;//项目认证条件

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }
}
