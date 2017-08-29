package com.andlinks.scholarship.service.impl;

import com.andlinks.scholarship.UserContext;
import com.andlinks.scholarship.dao.UserProfileDao;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Service("userProfileServiceImpl")
public class UserProfileServiceImpl extends BaseServiceImpl<UserProfileDO> implements UserProfileService {
    @Autowired
    private UserProfileDao profileDao;
    @Override
    public UserProfileDO findByName(String userName) {
        return profileDao.findByUserName(userName);
    }

    @Override
    public UserProfileDO getCurrentUser() {
        return UserContext.getCurrentUser();
    }
}
