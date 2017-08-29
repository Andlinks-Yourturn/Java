package com.andlinks.scholarship.util.annotation;

import javax.servlet.http.Cookie;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
public class HttpUtils {
    public static Cookie getCookie(String name, String value,int exprieTime, String path, Boolean security){
          Cookie cookie=new Cookie(name,value);
          cookie.setMaxAge(exprieTime);
          cookie.setPath(path);
          cookie.setSecure(security);
          return cookie;
    }
}
