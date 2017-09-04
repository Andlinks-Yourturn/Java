package com.andlinks.scholarship.dao;

import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface DonationDao extends BaseDao<DonationDO> {
    Page<DonationDO> findByCreator(UserProfileDO userProfileDO, Pageable pageable);


    //所有捐款的 模糊查询
    @Query("select d from DonationDO d where d.keyword  like %?1%  or d.projectName like %?1%")
    Page<DonationDO> findAllByKeywordLike(String input,Pageable pageable);

    //我的捐款的 模糊查询
    @Query("select d from DonationDO d where d.creator=?1 and d.keyword  like %?2%  or d.projectName like %?2%")
    Page<DonationDO> findMyProByKeywordLike(UserProfileDO userProfileDO,String input,Pageable pageable);

   //学生查询未申请的捐款
    Page<DonationDO> findByIdNotIn(List<Long> list,Pageable pageable);


}


