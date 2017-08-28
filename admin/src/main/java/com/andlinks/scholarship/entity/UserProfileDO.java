package com.andlinks.scholarship.entity;

import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Table(name="sys_user_profile")
@Entity
@Where(clause = "deleted")
public class UserProfileDO extends BaseEntity {

    private static final long serialVersionUID = 1120052331935378981L;

    private String userName;//用户名

    private Date birthday;//出生日期

    private String address;//地址

    private int age;//年龄

    private String telephone;//电话

    private String className;//班级名

    private String major;//专业

    private int money;//账户金额

    private Double gpa;//绩点

    private Set<RoleDO> roles;

    @Column(name="user_name")
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Column(name="birth")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Column(name="address")
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name="age")
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Column(name="telephone")
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Column(name="class_name")
    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    @Column(name="major")
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Column(name="money")
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    @Column(name="gpa")
    public Double getGpa() {
        return gpa;
    }

    public void setGpa(Double gpa) {
        this.gpa = gpa;
    }

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name = "user_role",
            joinColumns ={ @JoinColumn(name = "user_profile_id", referencedColumnName = "id")},
            inverseJoinColumns ={ @JoinColumn(name = "role_id", referencedColumnName = "id")}
    )
    public Set<RoleDO> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleDO> roles) {
        this.roles = roles;
    }
}
