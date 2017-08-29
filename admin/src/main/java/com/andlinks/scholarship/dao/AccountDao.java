package com.andlinks.scholarship.dao;

import com.andlinks.scholarship.entity.AccountDO;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface AccountDao extends BaseDao<AccountDO> {
    AccountDO findByAccount(String account);
}
