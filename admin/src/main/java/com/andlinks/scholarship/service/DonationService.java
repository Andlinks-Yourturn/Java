package com.andlinks.scholarship.service;

import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public interface DonationService extends BaseService<DonationDO> {
    Page<DonationDO> findByCreator(UserProfileDO userProfileDO, Pageable pageable);
    Page<DonationDO> findAllByKeywordLike(String input,Pageable pageable);
    Page<DonationDO> findByIdNotIn(List<Long> list,Pageable pageable);
    Page<DonationDO> findMyProByKeywordLike(UserProfileDO userProfileDO,String input,Pageable pageable);
}
