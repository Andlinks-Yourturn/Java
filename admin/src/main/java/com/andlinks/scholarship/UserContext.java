package com.andlinks.scholarship;


import com.andlinks.scholarship.entity.UserProfileDO;

/**
 * Created by 王凯斌 on 2017/6/6.
 */
public class UserContext implements AutoCloseable {

    private static final ThreadLocal<UserProfileDO> current = new ThreadLocal<UserProfileDO>();

    public UserContext(UserProfileDO userProfileDO) {
        current.set(userProfileDO);
    }

    public static UserProfileDO getCurrentUser() {
        return current.get();
    }

    public void close() {
        current.remove();
    }

}
