package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.PermissionDO;
import com.andlinks.scholarship.service.PermissionService;
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
@RequestMapping("/api/permission")
public class PermissionController {
    @Autowired
    private PermissionService permissionService;

    @RequestMapping(method= RequestMethod.POST)
    public Response add(PermissionDO permissionDO){
        return Response.success(permissionService.save(permissionDO));
    }

    //查
    @RequestMapping(value="/{id}",method = RequestMethod.GET)
    public Response findById(@PathVariable("id")Long id){
        PermissionDO permissionDO=permissionService.find(id);
        if(permissionDO==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }else{
            return Response.success(permissionDO);
        }
    }

    //查询所有的权限
    @RequestMapping(method =RequestMethod.GET)
    public Response findAll(@PageableDefault(value = 15, sort = { "id" }, direction = Sort.Direction.DESC)
                                    Pageable pageable){
        return Response.success(permissionService.findPage(pageable));
    }
}
