package com.andlinks.scholarship.entity;

import org.hibernate.annotations.Where;

import javax.persistence.*;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Entity
@Table(name="sys_local_account")
@Where(clause = "deleted=0")
public class AccountDO extends BaseEntity {
    private static final long serialVersionUID = 6504539870838792351L;

    private String account;//账户名

    private String password;//密码

    private String salt;//密码

    private UserProfileDO userProfileDO;//关联用户

    @Column(name="account")
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Column(name="password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column(name="salt")
    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    @OneToOne
    @JoinColumn(name="user_profile_id")
    public UserProfileDO getUserProfileDO() {
        return userProfileDO;
    }

    public void setUserProfileDO(UserProfileDO userProfileDO) {
        this.userProfileDO = userProfileDO;
    }
}
