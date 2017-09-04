package com.andlinks.scholarship.dao;

import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.sun.jndi.toolkit.dir.SearchFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface ScholarshipDao extends BaseDao<ScholarshipInfoDO> {
    Page<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO, Pageable pageable);
    int countByApplyerId(UserProfileDO userProfileDO);

    Page<ScholarshipInfoDO> findByApplyerIdAndAndStatus(UserProfileDO userProfileDO, ScholarshipInfoDO.Status status,Pageable pageable);

    List<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO);


    //根据sch表里的p_id(参数里的Long id)查询Donation
    @Query("select d from DonationDO d where d.id=?1")
    DonationDO findDonation(Long id);

    List<ScholarshipInfoDO> findByApplyerIdAndPId(UserProfileDO userProfileDO,Long pid);
}
