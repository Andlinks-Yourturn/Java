package com.andlinks.scholarship.entity;

import org.hibernate.annotations.Where;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="bsn_donation_log")
@Where(clause = "deleted=0")
public class DonationnLogDO extends BaseEntity {

    private static final long serialVersionUID = 8058972475304506626L;

    private String title;//捐赠标题

    private UserProfileDO donor_id;//捐款人

    private Date donationTime;//捐款时间

    private DonationDO donation_id;//捐款项目

    private int amount;//捐款金额

    @Column(name="title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column(name="donor_id")
    public UserProfileDO getDonor_id() {
        return donor_id;
    }

    public void setDonor_id(UserProfileDO donor_id) {
        this.donor_id = donor_id;
    }

    @Column(name="donation_time")
    public Date getDonationTime() {
        return donationTime;
    }

    public void setDonationTime(Date donationTime) {
        this.donationTime = donationTime;
    }

    @Column(name="donation_id")
    public DonationDO getDonation_id() {
        return donation_id;
    }

    public void setDonation_id(DonationDO donation_id) {
        this.donation_id = donation_id;
    }

    @Column(name="amount")
    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
