package com.andlinks.scholarship.entity;

import javax.persistence.*;

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
    private String name;//姓名

    private DonationDO donationId;//项目

    private UserProfileDO applyerId;//申请人

    private ScholarshipInfoDO.Status status;//申请状态

    @Column(name="name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name="donation_id")
    public DonationDO getDonationId() {
        return donationId;
    }

    public void setDonationId(DonationDO donationId) {
        this.donationId = donationId;
    }

    @Column(name="applyer_id")
    public UserProfileDO getApplyerId() {
        return applyerId;
    }

    public void setApplyId(UserProfileDO applyerId) {
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
}
