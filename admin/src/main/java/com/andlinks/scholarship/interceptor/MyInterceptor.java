package com.andlinks.scholarship.interceptor;

import com.andlinks.scholarship.UserContext;
import com.andlinks.scholarship.entity.redis.UserToken;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.service.redis.UserTokenService;
import com.andlinks.scholarship.util.I18Utils;
import com.andlinks.scholarship.util.annotation.Authority;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Component
public class MyInterceptor implements HandlerInterceptor {

    @Resource(name = "userTokenServiceImpl")
    private UserTokenService userTokenService;

    @Autowired
    private UserProfileService userProfileService;

    @Value("${setting.loginExpireSeconds}")
    private int loginExpireSeconds;

    @Value("${setting.auth.error.url}")
    private String unAuthUrl;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        Cookie nameCookie= WebUtils.getCookie(request,"userName");
        Cookie tokenCookie=WebUtils.getCookie(request,"token");
        if(null==nameCookie||null==tokenCookie||nameCookie.getValue()==null||tokenCookie.getValue()==null){
            request
                    .getRequestDispatcher(String.format("%s=%s", unAuthUrl, I18Utils.getMessage("Common.Response.Cookie.Missing")))
                    .forward(request, response);
            return false;
        }
        UserToken userToken=userTokenService.find(nameCookie.getValue());
        if(userToken==null){
            request
                    .getRequestDispatcher(String.format("%s=%s", unAuthUrl, I18Utils.getMessage("Common.Response.Token.Missing")))
                    .forward(request, response);
            return false;
        }
        if(!userToken.getToken().equals(tokenCookie.getValue())){
            request
                    .getRequestDispatcher(String.format("%s=%s", unAuthUrl, I18Utils.getMessage("Common.Response.Token.NotEequals")))
                    .forward(request, response);
            return false;
        }
        if(userToken.getExpireDate().before(new Date())){
            request
                    .getRequestDispatcher(String.format("%s=%s", unAuthUrl, I18Utils.getMessage("Common.Response.ExprieTime.Out")))
                    .forward(request, response);
            return false;
        }

        //若是通过以上验证,首先要更新过期时间，以免用户使用过程中掉线
        userToken.setExpireDate(DateUtils.addSeconds(new Date(),loginExpireSeconds));
        userTokenService.save(userToken);

        //给当前线程加上用户
        new UserContext(userProfileService.findByName(userToken.getUserName()));

        //权限验证
        if (!hasPermission((HandlerMethod) o, userToken)) {
            request
                    .getRequestDispatcher(String.format("%s=%s", unAuthUrl, I18Utils.getMessage("Common.Response.Auth.Invalid")))
                    .forward(request, response);
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }

    private Boolean hasPermission(HandlerMethod handlerMethod, UserToken userToken) {

        Authority classAuth = handlerMethod.getBeanType().getAnnotation(Authority.class);
        Authority methodAuth = handlerMethod.getMethodAnnotation(Authority.class);

        //如果类权限和方法权限都为空，那么可访问
        if (classAuth == null
                && methodAuth == null) {
            return true;
        }

        //如果类权限和方法权限不都为空，但权限为空，不可访问，因为redisHash不会保存一个空Set
        if (userToken.getPermissions() == null) {
            return false;
        }
        Set<String> permissions = new HashSet<>();
        if (classAuth != null) {
            permissions.add(classAuth.name());
        }
        if (methodAuth != null) {
            permissions.add(methodAuth.name());
        }
        return userToken.getPermissions().containsAll(permissions);
    }
}
