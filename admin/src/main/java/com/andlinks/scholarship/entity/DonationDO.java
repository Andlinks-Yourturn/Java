package com.andlinks.scholarship.entity;

import com.andlinks.scholarship.entity.vo.CompareVO;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="bsn_donation")
@Where(clause = "deleted=0")
public class DonationDO extends BaseEntity {

    private static final long serialVersionUID = 4227751602711595172L;

    private String projectName;//项目名

    private int totalDonation;//总额

    private int count;//名额

    private int unitPrice;//单价

    private UserProfileDO creator;//创建人

    private String keyword;//关键字

    private int maxAge;//最大年纪

    private String major;//专业

    private Double minGPA;//绩点

    private int rank;//排名

    private String address;//项目地址

    private Set<ScholarshipInfoDO> sch;//可以通过Donation查到的字段

    private CompareVO compareVO;//比较

    private String proDocAddress;//项目文件地址

    @Column(name="project_name")
    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }



    @Column(name="total_donation")
    public int getTotalDonation() {
        return totalDonation;
    }

    public void setTotalDonation(int totalDonation) {
        this.totalDonation = totalDonation;
    }

    @Column(name="count")
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Column(name="unit_price")
    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    @ManyToOne
    @JoinColumn(name="creator_id")
    public UserProfileDO getCreator() {
        return creator;
    }

    public void setCreator(UserProfileDO creator) {
        this.creator = creator;
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

    @Column(name="rank")
    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @Column(name="pro_address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name="doc_address")
    public String getProDocAddress() {
        return proDocAddress;
    }

    public void setProDocAddress(String proDocAddress) {
        this.proDocAddress = proDocAddress;
    }

    @OneToMany(mappedBy = "donationId",fetch = FetchType.EAGER)
    public Set<ScholarshipInfoDO> getSch() {
        return sch;
    }

    public void setSch(Set<ScholarshipInfoDO> sch) {
        this.sch = sch;
    }

    @Transient
    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }


}
