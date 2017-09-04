package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.RoleDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.entity.vo.*;
import com.andlinks.scholarship.service.*;
import com.andlinks.scholarship.util.*;
import com.andlinks.scholarship.util.annotation.AgeUtils;
import com.andlinks.scholarship.util.annotation.Authority;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by 陈亚兰 on 2017/8/28.
 */
@RequestMapping("/api/user")
@RestController
public class UserProfileController {

    private Logger logger= LoggerFactory.getLogger(UserProfileController.class);

    @Autowired
    private UserProfileService userProfileService;

    @Autowired
    private AccountService accountService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private DonationService donationService;

    @Autowired
    private ScholarshipService scholarshipService;

    @Value("${ip}")
    private String ip;

    @Value("${signature.ip}")
    private String signIp;

    @Value("${createStu.ip}")
    private String signAgainIp;

    @Value("${recharge.ip}")
    private String rechargeIp;

    @Value("${accountMoney.ip}")
    private String balanceIp;

    @RequestMapping(method = RequestMethod.POST)
    public Response add(UserProfileDO userProfileDO){
        return Response.success(userProfileService.save(userProfileDO));
    }

    @RequestMapping(value="{id}",method=RequestMethod.GET)
    public Response findById(@PathVariable Long id){
        UserProfileDO user=userProfileService.find(id);
        if(id==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }
        return Response.success(user);
    }

    @RequestMapping(method = RequestMethod.GET)
    public Response findAll(@PageableDefault(value=15,sort={"id"},direction = Sort.Direction.DESC)
                            Pageable pageable){
        return Response.success(userProfileService.findPage(pageable));
    }

    //**********************捐款人注册*****************************//
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public Response register(@Valid RegisterVO registerVO, BindingResult bind) throws IOException {
        if(bind.hasErrors()){
            return Response.error(bind.getAllErrors().get(0).getDefaultMessage());
        }
        UserProfileDO profileName=userProfileService.findByName(registerVO.getUserName());
        AccountDO accountName=accountService.findByAccount(registerVO.getUserName());
        if(profileName!=null||accountName!=null){
            return Response.error(I18Utils.getMessage("Common.Response.AccountOrUserProfile.HasExist"));
        }
        //TODO请求李刚的ip
        UserProfileDO current=userProfileService.getCurrentUser();
        Map<String, String> map = new HashMap();
        String resultKey=null;
        String object = HttpUtils.getDataPlatformResult(MessageFormat.format(ip, registerVO.getUserName(),registerVO.getLinkPass()), map, resultKey);

        String value= null;
        String data=null;
        String userAddress=null;
        try {
            JSONObject jsonObject=new JSONObject(object);
            value = jsonObject.getString("Result");
            if(value.equals("false")){
                return Response.error(I18Utils.getMessage("Common.Response.Register.Error"));
            }else{
                data=jsonObject.getString("Data");
                JSONObject json2=new JSONObject(data);
                userAddress=json2.getString("Address");
            }
        } catch (JSONException e) {
            logger.error("===转换错误===");
        }
        logger.info("value:"+value+"userAddress:"+userAddress);
        UserProfileDO userProfileDO=registerVO.getUserProfile();
        RoleDO roleDO=roleService.find(1L);//数据库中1是捐款人，不要动数据库
        Set<RoleDO> set=new HashSet<>();
        set.add(roleDO);
        userProfileDO.setRoles(set);
        userProfileDO.setAddress(userAddress);
        AccountDO accountDO=registerVO.getAccount();
        accountDO.setUserProfileDO(userProfileDO);
        userProfileService.save(userProfileDO);
        accountService.save(accountDO);
        return Response.success(userProfileDO);
    }

    /************************捐款人充值***********************/
    //TODO
    @Authority(name="recharge")
    @RequestMapping(value="/recharge",method = RequestMethod.PUT)
    public Response recharge(int amount,String password) throws IOException {
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        AccountDO accountDO=accountService.findByAccount(userProfileDO.getUserName());
        String salt=accountDO.getSalt();
        if(!PasswordUtils.verifyPassword(password,salt,accountDO.getPassword())){
            return Response.error(I18Utils.getMessage("Common.Response.AccountPassword.NotRight"));
        }
        //**Lee Gang api
        UserProfileDO donater=userProfileService.getCurrentUser();
        Map<String,String> map=new HashMap<>();
        String resultKey=null;
        logger.info("profile:"+donater.getUserName());
        String amunt = Integer.toString(amount);
        Object object = HttpUtils.getDataPlatformResult(MessageFormat.format(rechargeIp,amunt,donater.getAddress()), map, resultKey);
        logger.info(object.toString());
        try {
            JSONObject jsonObject=new JSONObject(object.toString());
            String result=jsonObject.getString("Result");
            if(result.equals("false")){
                return Response.error(I18Utils.getMessage("Common.Response.Recharge.Error"));
            }
        } catch (JSONException e) {
           logger.info("========转换json失败======");
        }
        //**Lee Gang api over
        userProfileDO.setMoney(userProfileDO.getMoney()+amount);
        userProfileService.update(userProfileDO);
        return Response.success(userProfileDO);
    }

    /*************************创建学生************************/
    @Authority(name="addStudent")
    @RequestMapping(value="/addStudent",method = RequestMethod.POST)
    public Response addStudent(@Valid StudentVO studentVO,BindingResult bind) throws IOException {
        if(bind.hasErrors()){
            return Response.error(bind.getAllErrors().get(0).getDefaultMessage());
        }
        UserProfileDO profileName=userProfileService.findByName(studentVO.getUserName());
        AccountDO accountName=accountService.findByAccount(studentVO.getUserName());
        if(profileName!=null||accountName!=null){
            return Response.error(I18Utils.getMessage("Common.Response.AccountOrUserProfile.HasExist"));
        }
        //Lee Gang
        //第一次请求
        UserProfileDO teacher=userProfileService.getCurrentUser();
        int age= AgeUtils.getAge(studentVO.getBirthday());
        CompareVO compareVO=new CompareVO(age,studentVO.getMajor(),studentVO.getRank(),studentVO.getGpa());
        StuCriteriaVO stuCriteriaVO=new StuCriteriaVO(studentVO.getUserName(),compareVO);
        logger.info(stuCriteriaVO.toString());
        String strliu= ChexConverUtils.str2HexStr(stuCriteriaVO.toString());
        String trimliu=strliu.replace(" ","");
        logger.info("==========================================");
        logger.info("liu : "+strliu);
        Map<String,String> map=new HashMap<>();
        String resultKey=null;
        logger.info("profile:"+teacher.getUserName());
        Object object = HttpUtils.getDataPlatformResult(MessageFormat.format(signIp,teacher.getUserName(),"1234567890",trimliu), map, resultKey);
        logger.info(object.toString());
        logger.info("==========================================");
        //第二次请求
        String si=object.toString();
        String signH=null;
        try {
            JSONObject json=new JSONObject(si);
            String result=json.getString("Result");
            if("false".equals(result)){
                return Response.error(I18Utils.getMessage("Common.Response.Register.Error"));
            }else{
                signH=json.getString("Data");
            }
        } catch (JSONException e) {
            logger.error("=====转换错误=====");
        }
        Object object2 = HttpUtils.getDataPlatformResult(
                MessageFormat.format(signAgainIp,
                        studentVO.getUserName(),teacher.getUserName(),"1234567890",signH,trimliu), map, resultKey);
        logger.info("第二次请求返回结果："+object2.toString());
        String strData=object2.toString();
        String result=null;
        String stuAddress=null,docAddress=null,data=null;
        try {
            JSONObject jsonObject=new JSONObject(strData);
            result = jsonObject.getString("Result");
            if(result.equals("false")){
                return Response.error(I18Utils.getMessage("Common.Response.Register.Error"));
            }
            data = jsonObject.getString("Data");
            JSONObject json=new JSONObject(data);
            docAddress=json.getString("DocAddress");
            stuAddress=json.getString("ProAddress");
        } catch (JSONException e) {
            logger.error("=====转换错误=====");
        }
        //Lee Gang

        UserProfileDO userProfileDO=studentVO.getUserProfile();
        Set<RoleDO> roles=new HashSet<>();
        RoleDO roleDO=roleService.find(3L);
        roles.add(roleDO);
        userProfileDO.setRoles(roles);
        userProfileDO.setTeacher(teacher);
        userProfileDO.setAddress(stuAddress);
        userProfileDO.setDocAddress(docAddress);
        AccountDO accountDO=studentVO.getAccount();
        accountDO.setAccount(userProfileDO.getUserName());
        accountDO.setUserProfileDO(userProfileDO);
        userProfileService.save(userProfileDO);//学生添加到user_profile表中了
        accountService.save(accountDO);
        return Response.success(userProfileDO);
    }

    /*****************************老师查找学生信息,升序************************/
    @Authority(name="findStudent")
    @RequestMapping(value="/listStudent",method = RequestMethod.GET)
    public Response findStu(@PageableDefault(value=10,sort={"createDate"},direction = Sort.Direction.DESC)
                                        Pageable pageable){
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        return Response.success(userProfileService.findByTeacher(userProfileDO,pageable));
    }

    /****************************老师查询不是自己创建的学生**********************/
    @Authority(name="findStudent")
    @RequestMapping(value="/listNotMine",method = RequestMethod.GET)
    public Response findNot(@PageableDefault(value=10,sort={"createDate"},direction = Sort.Direction.DESC)
                                    Pageable pageable) {
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        return Response.success(userProfileService.findByTeacherIsNot(userProfileDO,pageable));
    }


    /**************学生信息，项目数，奖学金，比较字符串*************************/
    @RequestMapping(value="/stu/info",method = RequestMethod.GET)
    public Response stuInfo(){
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        StuBasicVO stuBasicVO=new StuBasicVO();
        stuBasicVO.setUserName(userProfileDO.getUserName());
        stuBasicVO.setMoney(userProfileDO.getMoney());
        stuBasicVO.setProjectNum(scholarshipService.countByApplyerId(userProfileDO));
        CompareVO compareVO=new CompareVO(userProfileDO.getAge(),userProfileDO.getMajor(),userProfileDO.getRank(),userProfileDO.getGpa());
        stuBasicVO.setCompareVO(compareVO);
        return Response.success(stuBasicVO);
    }

    /*************************查询余额******************************/
    @RequestMapping(value="/balance",method = RequestMethod.GET)
    public Response getAccountBalance() throws IOException, JSONException {
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        Map<String,String> map=new HashMap<>();
        String resultKey=null;
        Object object = HttpUtils.getDataPlatformResult(MessageFormat.format(balanceIp,userProfileDO.getAddress()), map, resultKey);
        logger.info(object.toString());
        String result;
        int balance=0;
        try {
            JSONObject jsonObject=new JSONObject(object.toString());
            result = jsonObject.getString("Result");
            if(result.equals("false")){
                return Response.error(I18Utils.getMessage("Common.Response.Api.Error"));
            }
            String data =jsonObject.getString("Data");
             balance=Integer.parseInt(data);
             userProfileDO.setMoney(balance);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return Response.success(new BalanceVO(balance));
    }



}
