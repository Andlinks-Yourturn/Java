package com.andlinks.scholarship.entity.vo;

import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.RoleDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.util.PasswordUtils;
import org.apache.commons.lang.RandomStringUtils;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public class RegisterVO implements Serializable{
    private static final long serialVersionUID = 658361835885271560L;

    private String userName;
    private String password;
    private String telephone;
    private int money;


    @NotNull
    @Size(min=6,max=20)
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
    @Size(min=6,max=16)
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }


    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public UserProfileDO getUserProfile(){
        UserProfileDO userProfileDO=new UserProfileDO();
        userProfileDO.setUserName(getUserName());
        userProfileDO.setUserType(UserProfileDO.Type.donor);
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
