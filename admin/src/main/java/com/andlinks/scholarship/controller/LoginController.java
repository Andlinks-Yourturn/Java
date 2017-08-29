package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.PermissionDO;
import com.andlinks.scholarship.entity.RoleDO;
import com.andlinks.scholarship.entity.redis.UserToken;
import com.andlinks.scholarship.service.AccountService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.service.redis.UserTokenService;
import com.andlinks.scholarship.util.I18Utils;
import com.andlinks.scholarship.util.PasswordUtils;
import com.andlinks.scholarship.util.annotation.HttpUtils;
import com.sun.deploy.net.HttpResponse;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.management.relation.Role;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@RestController
@RequestMapping("/api/login")
public class LoginController {
    @Value("${setting.loginExpireSeconds}")
    private int loginExpireSeconds;

    @Value("${setting.token.cookie.timeout}")
    private int tokenTimeout;

    @Autowired
    private AccountService accountService;

    @Autowired
    private UserTokenService userTokenService;

    @Autowired
    private UserProfileService userProfileService;

    @RequestMapping(method = RequestMethod.POST)
    public Response login(String account,String password,HttpServletResponse response){
        AccountDO accountDO=accountService.findByAccount(account);
        if(accountDO==null){
            return Response.error(I18Utils.getMessage("Common.Response.Account.NotFound"));
        }
        String salt=accountDO.getSalt();
        if(!PasswordUtils.verifyPassword(password,salt,accountDO.getPassword())){
            return Response.error(I18Utils.getMessage("Common.Response.AccountPassword.NotRight"));
        }

        String token=getToken(password,salt);
        //如果用户名和密码都对，那么就把它放在redis中
        //用户 cookie
        response.addCookie(HttpUtils.getCookie("userName",account,tokenTimeout,"/",false));
        //token cookie
        response.addCookie(HttpUtils.getCookie("token",token,tokenTimeout,"/",false));
        userTokenService.save(new UserToken(
                                account,
                                token,
                                DateUtils.addSeconds(new Date(),loginExpireSeconds),
                                getPermissions(accountDO)));
        return Response.success(accountDO.getUserProfileDO());
    }

    public String getToken(String password,String salt){
          StringBuffer sb=new StringBuffer(password);
          sb.append(salt);
          return DigestUtils.md5Hex(sb.toString());
    }

    public Set<String> getPermissions(AccountDO accountDO){
        Set<String> permissions=new HashSet<>();
        if(accountDO.getUserProfileDO()==null){
            return permissions;
        }
        for(RoleDO role:accountDO.getUserProfileDO().getRoles()){
            for(PermissionDO permissionDO:role.getPermissions()){
                permissions.add(permissionDO.getPermissionNameEN());
            }
        }
        return permissions;
    }

    @RequestMapping(value="{id}",method = RequestMethod.DELETE)
    public Response logout(@PathVariable Long id){
        userTokenService.delete(userProfileService.getCurrentUser().getUserName());
        return Response.success();
    }
}
