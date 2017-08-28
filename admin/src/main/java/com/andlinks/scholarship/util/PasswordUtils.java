package com.andlinks.scholarship.util;


import org.apache.commons.codec.digest.DigestUtils;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
public class PasswordUtils {

    public static String hashedPassword(String password, String salt) {

        return DigestUtils.md5Hex(password + salt);
    }

    public static Boolean verifyPassword(String password, String salt, String hashedPassword) {

        if (password == null || salt == null || hashedPassword == null) {
            return false;
        }
        return DigestUtils.md5Hex(password + salt).equals(hashedPassword);
    }
}
