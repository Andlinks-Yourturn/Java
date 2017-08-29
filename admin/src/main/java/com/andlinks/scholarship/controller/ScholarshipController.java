package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.service.DonationService;
import com.andlinks.scholarship.service.ScholarshipService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.util.I18Utils;
import com.andlinks.scholarship.util.annotation.Authority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@RequestMapping("/api/sch")
@RestController
public class ScholarshipController {
    @Autowired
    private ScholarshipService scholarshipService;

    @Autowired
    private DonationService donationService;

    @Autowired
    private UserProfileService userProfileService;

    @Authority(name="applyDonate")
    @RequestMapping(value = "{id}",method = RequestMethod.POST)
    public Response findById(@PathVariable Long id){
        DonationDO donationDO=donationService.find(id);
        if(donationDO==null){
            return Response.error(I18Utils.getMessage("can't find any object by this id"));
        }
        ScholarshipInfoDO sch=new ScholarshipInfoDO();
        sch.setApplyerId(userProfileService.getCurrentUser());
        sch.setDonationId(donationDO);
        sch.setStatus(ScholarshipInfoDO.Status.applying);
        return Response.success(scholarshipService.save(sch));
    }
}
