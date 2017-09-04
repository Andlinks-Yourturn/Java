package com.andlinks.scholarship.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 陈亚兰 on 2017/8/8.
 */
public class DateTrans {
   public static Date getDate(String date) throws ParseException {
       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
       return dateFormat.parse(date);
   }
   public static String getStringDate(Date date){
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
       return  sdf.format(date);
   }
}
