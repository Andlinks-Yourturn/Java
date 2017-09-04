package com.andlinks.scholarship.service;

import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


/**
 * Created by 陈亚兰 on 2017/8/28.
 */
public interface UserProfileService extends BaseService<UserProfileDO> {
    UserProfileDO findByName(String userName);
    UserProfileDO getCurrentUser();
    Page<UserProfileDO> findByUserType(UserProfileDO.Type type,Pageable pageable);
    Page<UserProfileDO> findByTeacher(UserProfileDO userProfileDO, Pageable pageable);
    Page<UserProfileDO> findByTeacherIsNot(UserProfileDO userProfileDO,Pageable pageable);
    UserProfileDO findByAddress(String address);
}
