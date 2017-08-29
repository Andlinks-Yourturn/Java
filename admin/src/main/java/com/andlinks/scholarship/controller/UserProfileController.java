package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.RoleDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.entity.vo.RegisterVO;
import com.andlinks.scholarship.service.AccountService;
import com.andlinks.scholarship.service.RoleService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.util.I18Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@RequestMapping("/api/user")
@RestController
public class UserProfileController {

    @Autowired
    private UserProfileService userProfileService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private RoleService roleService;

    @RequestMapping(method = RequestMethod.POST)
    public Response add(UserProfileDO userProfileDO){
        return Response.success(userProfileService.save(userProfileDO));
    }

    @RequestMapping(value="{id}",method=RequestMethod.GET)
    public Response findById(@PathVariable Long id){
        UserProfileDO user=userProfileService.find(id);
        if(id==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }
        return Response.success(user);
    }

    @RequestMapping(method = RequestMethod.GET)
    public Response findAll(@PageableDefault(value=15,sort={"id"},direction = Sort.Direction.DESC)
                            Pageable pageable){
        return Response.success(userProfileService.findPage(pageable));
    }

    //**********************捐款人注册*****************************//
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public Response register(@Valid RegisterVO registerVO, BindingResult bind){
        if(bind.hasErrors()){
            return Response.error(bind.getAllErrors().get(0).getDefaultMessage());
        }
        UserProfileDO profileName=userProfileService.findByName(registerVO.getUserName());
        AccountDO accountName=accountService.findByAccount(registerVO.getUserName());
        if(profileName!=null||accountName!=null){
            return Response.error(I18Utils.getMessage("Common.Response.AccountOrUserProfile.HasExist"));
        }
        UserProfileDO userProfileDO=registerVO.getUserProfile();
        RoleDO roleDO=roleService.find(1L);//数据库中1是管理员，不要动数据库
        Set<RoleDO> set=new HashSet<>();
        set.add(roleDO);
        userProfileDO.setRoles(set);
        AccountDO accountDO=registerVO.getAccount();
        accountDO.setUserProfileDO(userProfileDO);
        userProfileService.save(userProfileDO);
        accountService.save(accountDO);
        return Response.success(userProfileDO);
    }

}
