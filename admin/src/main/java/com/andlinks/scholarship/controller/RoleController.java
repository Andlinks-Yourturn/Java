package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.RoleDO;
import com.andlinks.scholarship.service.RoleService;
import com.andlinks.scholarship.util.I18Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@RestController
@RequestMapping("/api/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping(method = RequestMethod.POST)
    public Response add(RoleDO roleDO){
        return Response.success(roleService.save(roleDO));
    }

    @RequestMapping(value="{id}",method=RequestMethod.GET)
    public Response findById(@PathVariable Long id){
        RoleDO roleDO=roleService.find(id);
        if(roleDO==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }
        return Response.success(roleDO);
    }

    @RequestMapping(method = RequestMethod.GET)
    public Response findAll(@PageableDefault(value=15,sort={"id"},direction = Sort.Direction.DESC)
                            Pageable pageable){
        return Response.success(roleService.findPage(pageable));
    }
}
