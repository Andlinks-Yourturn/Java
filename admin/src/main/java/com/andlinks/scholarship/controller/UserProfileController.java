package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.service.UserProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@RequestMapping("/api/userprofile")
@RestController
public class UserProfileController {
    @Autowired
    private UserProfileService userProfileService;

    @RequestMapping(method = RequestMethod.POST)
    public Response add(UserProfileDO userProfileDO){
        return Response.success(userProfileService.save(userProfileDO));
    }
}
