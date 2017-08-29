package com.andlinks.scholarship.service.redis.impl;

import com.andlinks.scholarship.dao.redis.UserTokenDao;
import com.andlinks.scholarship.entity.redis.UserToken;
import com.andlinks.scholarship.service.redis.UserTokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Service("userTokenServiceImpl")
public class UserTokenServiceImpl implements UserTokenService {
    @Autowired
    private UserTokenDao userTokenDao;
    @Override
    public UserToken find(String userName) {
        return userTokenDao.findOne(userName);
    }

    @Override
    public UserToken save(UserToken userToken) {
        return userTokenDao.save(userToken);
    }

    @Override
    public void delete(String userName) {
        userTokenDao.delete(userName);
    }
}
