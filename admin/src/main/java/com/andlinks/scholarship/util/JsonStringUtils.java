package com.andlinks.scholarship.util;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by 陈亚兰 on 2017/9/3.
 */
public class JsonStringUtils {

    public static JSONObject getJsonObject(String jsonString) throws JSONException {
        JSONObject jo=new JSONObject(jsonString);
        return jo;
    }
}
