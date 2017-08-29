package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.service.DonationService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.util.I18Utils;
import com.andlinks.scholarship.util.annotation.Authority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@RequestMapping("/api/donation")
@RestController
public class DonationController {
    @Autowired
    private DonationService donationService;

    @Autowired
    private UserProfileService userProfileService;

    /********************************捐款人创建项目************************/
    @Authority(name="addProject")
    @RequestMapping(method = RequestMethod.POST)
    public Response createProject(DonationDO donationDO){
        donationDO.setCreator_id(userProfileService.getCurrentUser());
        return Response.success(donationService.save(donationDO));
    }

    @RequestMapping(method =RequestMethod.GET)
    public Response findAll(@PageableDefault(value = 15, sort = { "id" }, direction = Sort.Direction.DESC)
                                    Pageable pageable){
        return Response.success(donationService.findPage(pageable));
    }

    @RequestMapping(value="/{id}",method = RequestMethod.GET)
    public Response findById(@PathVariable("id")Long id){
        DonationDO donationDO=donationService.find(id);
        if(donationDO==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }else{
            return Response.success(donationDO);
        }
    }
}
