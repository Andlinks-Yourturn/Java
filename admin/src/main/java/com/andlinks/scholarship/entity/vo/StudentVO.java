package com.andlinks.scholarship.entity.vo;

import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.util.PasswordUtils;
import com.andlinks.scholarship.util.annotation.AgeUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public class StudentVO implements Serializable{
    private static final long serialVersionUID = -5508234008783054735L;

    private String userName;//用户名

    private String firstName;//名

    private String lastName;//姓

    private String password;//密码

    private Date birthday;//出生日期

    private int age;//年龄

    private String major;//专业

    private Double gpa;//绩点

    private int rank;//排名

    private CompareVO compareVO;//比较信息

    public CompareVO getCompareVO() {
        return compareVO;
    }

    public void setCompareVO(CompareVO compareVO) {
        this.compareVO = compareVO;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Max(value=30)
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @NotNull
    @Size(min=2,max=20)
    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @NotNull
    public Double getGpa() {
        return gpa;
    }

    public void setGpa(Double gpa) {
        this.gpa = gpa;
    }

    @NotNull
    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    @NotNull
    @Size(min=2,max=20)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @NotNull
    @Size(min=6,max=20)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @NotNull
    @Size(min=2,max=20)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @NotNull
    @Size(min=2,max=20)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public UserProfileDO getUserProfile(){
        UserProfileDO userProfileDO=new UserProfileDO();
        userProfileDO.setUserName(getUserName());
        userProfileDO.setUserType(UserProfileDO.Type.student);
        userProfileDO.setBirthday(getBirthday());
        int age= AgeUtils.getAge(getBirthday());
        CompareVO compareVO=new CompareVO(age,getMajor(),getRank(),getGpa());
        userProfileDO.setCompareVO(compareVO);
        userProfileDO.setAge(age);
        userProfileDO.setGpa(getGpa());
        userProfileDO.setRank(getRank());
        userProfileDO.setMajor(getMajor());
        userProfileDO.setFirstName(getFirstName());
        userProfileDO.setLastName(getLastName());
        return userProfileDO;
    }

    public AccountDO getAccount(){
        String salt= RandomStringUtils.randomAscii(6);
        AccountDO account=new AccountDO();
        account.setAccount(getUserName());
        account.setPassword(PasswordUtils.hashedPassword(getPassword(),salt));
        account.setSalt(salt);
        return account;
    }


}
