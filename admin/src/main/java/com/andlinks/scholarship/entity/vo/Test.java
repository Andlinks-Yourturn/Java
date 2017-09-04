package com.andlinks.scholarship.entity.vo;


import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by 陈亚兰 on 2017/8/30.
 */
public class Test {
    public static void main(String[] args){
        CompareVO compareVO=new CompareVO();
        compareVO.setAge(18);
        compareVO.setMajor("寄快递");
        compareVO.setRank(5);
        String result=null;
        try {
             JSONObject jsonObject= new JSONObject(compareVO.toString());
             result = jsonObject.getString("major");
        } catch (JSONException e) {
            System.err.print("result error");
        }
        System.out.print("string:"+compareVO.toString()+"\n"+result);
    }
}
