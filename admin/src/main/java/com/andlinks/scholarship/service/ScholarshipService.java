package com.andlinks.scholarship.service;

import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.service.impl.BaseServiceImpl;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface ScholarshipService extends BaseService<ScholarshipInfoDO> {
    Page<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO, Pageable pageable);
    int countByApplyerId(UserProfileDO userProfileDO);
    Page<ScholarshipInfoDO> findByApplyerIdAndAndStatus(UserProfileDO userProfileDO, ScholarshipInfoDO.Status status,Pageable pageable);
    List<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO);

    DonationDO findDonation(Long id);

    List<ScholarshipInfoDO> findByApplyerIdAndPId(UserProfileDO userProfileDO,Long pid);
}
