package com.andlinks.scholarship.dao;


import com.andlinks.scholarship.entity.UserProfileDO;

/**
 * Created by 陈亚兰 on 2017/8/16.
 */
public interface UserProfileDao extends BaseDao<UserProfileDO> {
    UserProfileDO findByUserName(String username);
}
