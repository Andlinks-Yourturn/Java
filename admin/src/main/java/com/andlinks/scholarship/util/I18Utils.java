package com.andlinks.scholarship.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Locale;
import java.util.ResourceBundle;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@Component
public class I18Utils {
    @Value("${setting.language}")
    private String language;

    @Value("${setting.country}")
    private String country;

    private static ResourceBundle rb;

    @PostConstruct
    public void init(){
        rb=ResourceBundle.getBundle("Messages",new Locale(language,country));
    }

    public static String getMessage(String message){
        return rb.getString(message);
    }
}
