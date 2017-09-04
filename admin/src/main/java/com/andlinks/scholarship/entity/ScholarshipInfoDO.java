package com.andlinks.scholarship.entity;

import com.andlinks.scholarship.entity.vo.CompareVO;
import com.andlinks.scholarship.entity.vo.DonationVO;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="bsn_scholarship_info")
public class ScholarshipInfoDO extends BaseEntity {
    private static final long serialVersionUID = 4438891595905694399L;

    public enum Status{
        applying,
        success,
        failure
    }

    private DonationDO donationId;//项目 被忽略的数据

    private String projectName;//项目名

    private String keyWord;//关键词

    private String authCondition;//认证条件

    private Date verifyPassTime;//验证通过时间

    private UserProfileDO applyerId;//申请人

    private ScholarshipInfoDO.Status status;//申请状态

    private int benefit;//受益人民币

    private Long pId;//项目Id

    private CompareVO compareVO;//比较

    @Column(name="benefit")
    public int getBenefit() {
        return benefit;
    }

    public void setBenefit(int benefit) {
        this.benefit = benefit;
    }

    @Column(name="verify_pass")
    public Date getVerifyPassTime() {
        return verifyPassTime;
    }

    public void setVerifyPassTime(Date verifyPassTime) {
        this.verifyPassTime = verifyPassTime;
    }

    @Column(name="project_name")
    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    @Column(name="keyword")
    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    @Column(name="auth_condition")
    public String getAuthCondition() {
        return authCondition;
    }

    public void setAuthCondition(String authCondition) {
        this.authCondition = authCondition;
    }



    @JsonBackReference
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="donation_id")
    public DonationDO getDonationId() {
        return donationId;
    }

    public void setDonationId(DonationDO donationId) {
        this.donationId = donationId;
    }

    @ManyToOne
    @JoinColumn(name="applyer_id")
    public UserProfileDO getApplyerId() {
        return applyerId;
    }

    public void setApplyerId(UserProfileDO applyerId) {
        this.applyerId = applyerId;
    }

    @Enumerated(EnumType.STRING)
    @Column(name="status")
    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Column(name="p_id")
    public Long getpId() {
        return pId;
    }

    public void setpId(Long pId) {
        this.pId = pId;
    }

    @Transient
    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }
}
