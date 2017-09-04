package com.andlinks.scholarship.dao;


import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


/**
 * Created by 陈亚兰 on 2017/8/16.
 */
public interface UserProfileDao extends BaseDao<UserProfileDO> {
    UserProfileDO findByUserName(String username);
    Page<UserProfileDO> findByUserType(UserProfileDO.Type type,Pageable pageable);
    Page<UserProfileDO> findByTeacher(UserProfileDO userProfileDO, Pageable pageable);
    Page<UserProfileDO> findByTeacherIsNot(UserProfileDO userProfileDO,Pageable pageable);//查询不是自己学生的
    UserProfileDO findByAddress(String address);//受益人里根据address拿到名字
}
