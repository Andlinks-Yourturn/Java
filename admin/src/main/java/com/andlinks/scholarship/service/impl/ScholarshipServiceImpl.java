package com.andlinks.scholarship.service.impl;

import com.andlinks.scholarship.dao.ScholarshipDao;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.service.ScholarshipService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Service("scholarshipServiceImpl")
public class ScholarshipServiceImpl extends BaseServiceImpl<ScholarshipInfoDO> implements ScholarshipService {
    @Autowired
    private ScholarshipDao scholarshipDao;
    @Override
    public Page<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO, Pageable pageable) {
        return scholarshipDao.findByApplyerId(userProfileDO,pageable);
    }

    @Override
    public int countByApplyerId(UserProfileDO userProfileDO) {
        return scholarshipDao.countByApplyerId(userProfileDO);
    }

    @Override
    public Page<ScholarshipInfoDO> findByApplyerIdAndAndStatus(UserProfileDO userProfileDO, ScholarshipInfoDO.Status status, Pageable pageable) {
        return scholarshipDao.findByApplyerIdAndAndStatus(userProfileDO,status,pageable);
    }

    @Override
    public List<ScholarshipInfoDO> findByApplyerId(UserProfileDO userProfileDO) {
        return scholarshipDao.findByApplyerId(userProfileDO);
    }

    @Override
    public DonationDO findDonation(Long id) {
        return scholarshipDao.findDonation(id);
    }

    @Override
    public List<ScholarshipInfoDO> findByApplyerIdAndPId(UserProfileDO userProfileDO, Long pid) {
        return scholarshipDao.findByApplyerIdAndPId(userProfileDO,pid);
    }


}
