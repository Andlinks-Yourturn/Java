package com.andlinks.scholarship.dao.redis;

import com.andlinks.scholarship.entity.redis.UserToken;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by 王凯斌 on 2017/4/24.
 */
public interface UserTokenDao extends CrudRepository<UserToken, String> {
}
