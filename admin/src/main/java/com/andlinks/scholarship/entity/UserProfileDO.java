package com.andlinks.scholarship.entity;

import com.andlinks.scholarship.entity.vo.CompareVO;
import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Table(name = "sys_user_profile")
@Entity
@Where(clause = "deleted=0")
public class UserProfileDO extends BaseEntity {

    private static final long serialVersionUID = 1120052331935378981L;

    public enum Type {
        donor,
        teacher,
        student
    }

    private String userName;//用户名

    private String firstName;//名

    private String lastName;//姓

    private String linkPass;//操作码

    private Date birthday;//出生日期

    private String address;//学生地址

    private int age;//年龄

    private String major;//专业

    private int money;//账户金额

    private Double gpa;//绩点

    private int rank;//排名

    private Set<RoleDO> roles;//角色

    private Set<DonationDO> donations;//捐款

    private Set<ScholarshipInfoDO> schs;//奖学金

    private UserProfileDO teacher;//你的老师

    private UserProfileDO.Type userType;

    private CompareVO compareVO;//条件

    private String docAddress;//学生信息存放的文件Hash地址

    @Column(name = "user_name")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Column(name = "first_name")
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Column(name = "last_name")
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Column(name = "birth")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Column(name = "address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "age")
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Column(name = "major")
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Column(name = "money")
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    @Column(name = "gpa")
    public Double getGpa() {
        return gpa;
    }

    public void setGpa(Double gpa) {
        this.gpa = gpa;
    }

    @Column(name = "rank")
    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @Column(name="link_pass")
    public String getLinkPass() {
        return linkPass;
    }

    public void setLinkPass(String linkPass) {
        this.linkPass = linkPass;
    }

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "user_role",
            joinColumns = {@JoinColumn(name = "user_profile_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id")}
    )
    public Set<RoleDO> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleDO> roles) {
        this.roles = roles;
    }

    @Column(name = "user_type")
    @Enumerated(EnumType.STRING)
    public Type getUserType() {
        return userType;
    }

    public void setUserType(Type userType) {
        this.userType = userType;
    }

    @Column(name="doc_address")
    public String getDocAddress() {
        return docAddress;
    }

    public void setDocAddress(String docAddress) {
        this.docAddress = docAddress;
    }

    @JsonBackReference
    @OneToMany(mappedBy = "creator", fetch = FetchType.EAGER)
    public Set<DonationDO> getDonations() {
        return donations;
    }

    public void setDonations(Set<DonationDO> donations) {
        this.donations = donations;
    }

    @JsonBackReference
    @OneToMany(mappedBy = "applyerId", fetch = FetchType.EAGER)
    public Set<ScholarshipInfoDO> getSchs() {
        return schs;
    }

    public void setSchs(Set<ScholarshipInfoDO> schs) {
        this.schs = schs;
    }



    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }


    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name="teacher_id")
    public UserProfileDO getTeacher() {
        return teacher;
    }

    public void setTeacher(UserProfileDO teacher) {
        this.teacher = teacher;
    }
}
