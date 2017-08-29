package com.andlinks.scholarship.service;

import com.andlinks.scholarship.entity.AccountDO;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface AccountService extends BaseService<AccountDO>{
    AccountDO findByAccount(String account);
}
