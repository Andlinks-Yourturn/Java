package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.PermissionDO;
import com.andlinks.scholarship.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@RestController
@RequestMapping("/api/permission")
public class PermissionController {
    @Autowired
    private PermissionService permissionService;

    @RequestMapping(method= RequestMethod.POST)
    public Response add(PermissionDO permissionDO){
        return Response.success(permissionService.save(permissionDO));
    }
}
