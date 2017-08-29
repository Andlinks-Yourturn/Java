package com.andlinks.scholarship.service.redis;

import com.andlinks.scholarship.entity.redis.UserToken;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface UserTokenService {

    UserToken find(String userName);

    UserToken save(UserToken userToken);

    void delete(String userName);
}
