package com.andlinks.scholarship.service.impl;

import com.andlinks.scholarship.dao.DonationDao;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.service.DonationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Service("donationServiceImpl")
public class DonationServiceImpl extends BaseServiceImpl<DonationDO> implements DonationService {
    @Autowired
    private DonationDao donationDao;

    @Override
    public Page<DonationDO> findByCreator(UserProfileDO userProfileDO, Pageable pageable) {
        return donationDao.findByCreator(userProfileDO,pageable);
    }

    @Override
    public Page<DonationDO> findAllByKeywordLike(String input, Pageable pageable) {
        return donationDao.findAllByKeywordLike(input,pageable);
    }

    @Override
    public Page<DonationDO> findByIdNotIn(List<Long> list, Pageable pageable) {
        return donationDao.findByIdNotIn(list,pageable);
    }

    @Override
    public Page<DonationDO> findMyProByKeywordLike(UserProfileDO userProfileDO, String input, Pageable pageable) {
        return donationDao.findMyProByKeywordLike(userProfileDO,input,pageable);
    }


}
