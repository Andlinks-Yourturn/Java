package com.andlinks.scholarship.entity;

import org.hibernate.annotations.Where;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="bsn_donation")
@Where(clause = "deleted=0")
public class DonationDO extends BaseEntity {

    private static final long serialVersionUID = 4227751602711595172L;

    private String pojectName;//项目名

    private int total_donation;//总额

    private int count;//名额

    private UserProfileDO creator_id;//创建人

    private String keyword;//关键字

    private int maxAge;//最大年纪

    private String major;//专业

    private Double minGPA;//绩点

    @Column(name="project_name")
    public String getPojectName() {
        return pojectName;
    }

    public void setPojectName(String pojectName) {
        this.pojectName = pojectName;
    }

    @Column(name="total_donation")
    public int getTotal_donation() {
        return total_donation;
    }

    public void setTotal_donation(int total_donation) {
        this.total_donation = total_donation;
    }

    @Column(name="count")
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Column(name="creator_id")
    public UserProfileDO getCreator_id() {
        return creator_id;
    }

    public void setCreator_id(UserProfileDO creator_id) {
        this.creator_id = creator_id;
    }

    @Column(name="keyword")
    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    @Column(name="max_age")
    public int getMaxAge() {
        return maxAge;
    }

    public void setMaxAge(int maxAge) {
        this.maxAge = maxAge;
    }

    @Column(name="major")
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Column(name="min_gpa")
    public Double getMinGPA() {
        return minGPA;
    }

    public void setMinGPA(Double minGPA) {
        this.minGPA = minGPA;
    }
}
