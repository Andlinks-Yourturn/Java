package com.andlinks.scholarship.service.impl;

import com.andlinks.scholarship.dao.AccountDao;
import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Service("accountServiceImpl")
public class AccountServiceImpl extends BaseServiceImpl<AccountDO> implements AccountService {
    @Autowired
    private AccountDao accountDao;
    @Override
    public AccountDO findByAccount(String account) {
        return accountDao.findByAccount(account);
    }
}
