package com.andlinks.scholarship.util.annotation;

import java.lang.annotation.*;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@Documented
@Inherited
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Authority {
    String name() default "";
}
