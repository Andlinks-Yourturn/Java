package com.andlinks.scholarship.util;


import org.apache.commons.lang.StringUtils;

import org.apache.http.client.fluent.Request;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Map;

/**
 * Created by 陈亚兰 on 2017/6/22.
 */
@Component
public class HttpUtils {

    private static String pageUrl;

    public static String get(String url) throws IOException {
        return Request.Get(url)
                .execute().returnContent().asString();
    }

    public static String getDataPlatformResult(String url, Map<String, String> parms, String resultKey) throws IOException {

        if (!url.contains("?")) {
            url += "?";
        }
        url = getUrlWithParms(url, parms);
        if (resultKey != null) {
//            return (get(url)).get(resultKey);
        }
        return get(url);
    }


    private static String getUrlWithParms(String url, Map<String, String> parms) {
        StringBuilder sb = null;
        if (null != parms && parms.size() > 0) {
            sb = new StringBuilder();
            for (Map.Entry<String, String> entry : parms.entrySet()) {
                if (null != entry.getValue() && StringUtils.isNotEmpty(entry.getValue().trim())) {
                    sb.append("&").append(entry.getKey()).append("=").append(entry.getValue());
                }
            }
            if (sb.length() > 0) {
                url += sb.toString();
            }
        }
        return url;
    }
}
