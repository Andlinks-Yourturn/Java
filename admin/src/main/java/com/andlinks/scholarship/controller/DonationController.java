package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.AccountDO;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.entity.vo.*;
import com.andlinks.scholarship.service.AccountService;
import com.andlinks.scholarship.service.DonationService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.util.*;
import com.andlinks.scholarship.util.annotation.Authority;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.*;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@RequestMapping("/api/donation")
@RestController
public class DonationController {

    private Logger logger = LoggerFactory.getLogger(DonationController.class);

    @Autowired
    private DonationService donationService;

    @Autowired
    private UserProfileService userProfileService;

    @Autowired
    private AccountService accountService;

    @Value("${createProject.ip}")
    private String createProjectIP;

    @Value("${benefitPeople.ip}")
    private String benefitIp;

    @Value("${donor.donateProject.ip}")
    private String donateProjectIp;

    @Value("${accountMoney.ip}")
    private String balanceIp;

    /********************************捐款人创建项目，已经联调************************/
    @Authority(name = "addProject")
    @RequestMapping(method = RequestMethod.POST)
    public Response createProject(DonationDO donationDO) throws IOException {

        UserProfileDO current = userProfileService.getCurrentUser();
        Map<String, String> map = new HashMap();
        String resultKey = null;
        String totalMoney = Integer.toString(donationDO.getTotalDonation());
        int unitPrice= 0;
        try {
            unitPrice = donationDO.getTotalDonation()/donationDO.getCount();
            donationDO.setUnitPrice(unitPrice);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ProCompareVO proCompareVO=new ProCompareVO(donationDO.getMaxAge(),donationDO.getRank(),donationDO.getMinGPA(),donationDO.getMajor(),unitPrice);
        ProCriteriaVO proCriteriaVO=new ProCriteriaVO(donationDO.getProjectName(),proCompareVO);
        String sss=ChexConverUtils.str2HexStr(proCriteriaVO.toString());
        String trimsss=sss.replace(" ","");
        String object = HttpUtils.getDataPlatformResult(MessageFormat.format(createProjectIP, donationDO.getProjectName(), current.getUserName(), totalMoney,trimsss), map, resultKey);
        String result;
        String data;
        try {
            JSONObject jsonObject = new JSONObject(object);
            result = jsonObject.getString("Result");
            if (result.equals("false")) {
                return Response.error(I18Utils.getMessage("Common.Response.Api.Error"));
            } else {
                data = jsonObject.getString("Data");
                JSONObject json=new JSONObject(data);
                String docAddress=json.getString("DocAddress");
                String proAddress=json.getString("ProAddress");
                donationDO.setProDocAddress(docAddress);
                donationDO.setAddress(proAddress);
            }
        } catch (JSONException e) {
            logger.error("转换json格式错误");
        }
        donationDO.setCreator(userProfileService.getCurrentUser());
        return Response.success(donationService.save(donationDO));
    }

    /*******************************捐款人-为项目捐款************************/
    //TODO 添加事务，如果发生错误，回滚
    @Authority(name = "donate")
    @RequestMapping(value = "{id}", method = RequestMethod.PUT)
    public Response donate(@PathVariable Long id, int balance, int amount, String password) throws IOException {

        UserProfileDO userProfileDO = userProfileService.getCurrentUser();
        DonationDO donationDO = donationService.find(id);
        AccountDO accountDO = accountService.findByAccount(userProfileDO.getUserName());
        if (donationDO == null) {
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }
        if (amount*donationDO.getUnitPrice() > balance) {
            return Response.error(I18Utils.getMessage("Common.Response.Your.Money"));
        }

        Map<String, String> map = new HashMap();
        String resultKey = null;
        String object = HttpUtils.getDataPlatformResult(MessageFormat.format(donateProjectIp, userProfileDO.getUserName(),password, donationDO.getAddress(),Integer.toString(amount*donationDO.getUnitPrice())), map, resultKey);
        try {
            JSONObject jsonObject=new JSONObject(object);
            String result=jsonObject.getString("Result");
            if("false".equals(result)){
               return Response.error(I18Utils.getMessage("Common.Response.DonateFailUre"));
            }else{
                donationDO.setTotalDonation(donationDO.getTotalDonation()+amount*donationDO.getUnitPrice());
                //账户还有多少钱最好从接口查
                Object ob = HttpUtils.getDataPlatformResult(MessageFormat.format(balanceIp,userProfileDO.getAddress()), map, resultKey);
                logger.info(object.toString());
                String res=null;
                try {
                    JSONObject json=new JSONObject(ob.toString());
                    res = jsonObject.getString("Result");
                    if(res.equals("false")){
                        return Response.error(I18Utils.getMessage("Common.Response.Api.Error"));
                    }
                    String data =json.getString("Data");
                    int  bal=Integer.parseInt(data);
                    userProfileDO.setMoney(bal);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                //查余额结束

                userProfileService.update(userProfileDO);
            }
        } catch (JSONException e) {
            logger.error("======转换失败=========");
        }
        return Response.success(donationService.update(donationDO));
    }

    /***************************查看所有捐款信息*******************************/
    @RequestMapping(method = RequestMethod.GET)
    public Response findAll(@PageableDefault(value=10,sort={"id"},direction = Sort.Direction.DESC)
                                        Pageable pageable,
                            @RequestParam(value="input",defaultValue = "all")String input) {
        if("all".equals(input)){
            return Response.success(donationService.findPage(pageable));
        }else{
            return Response.success(donationService.findAllByKeywordLike(input,pageable));
        }
    }

    /*************************查看某一id下的项目信息***************/
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Response findById(@PathVariable("id") Long id) {
        DonationDO donationDO = donationService.find(id);
        if (donationDO == null) {
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        } else {
            CompareVO compareVO = new CompareVO(donationDO.getMaxAge(), donationDO.getMajor(), donationDO.getRank(), donationDO.getMinGPA());
            donationDO.setCompareVO(compareVO);
            return Response.success(donationDO);
        }
    }


    /*************************我的项目,捐款人查看***************************/
    @RequestMapping(value = "/myProject", method = RequestMethod.GET)
    public Response findMyProject(@PageableDefault(value=10,sort={"id"},direction = Sort.Direction.DESC)
                                              Pageable pageable,
                                  @RequestParam(value="input",defaultValue = "all")String input) {
        if("all".equals(input)){
            return Response.success(donationService.findByCreator(userProfileService.getCurrentUser(),pageable));
        }
        return Response.success(donationService.findMyProByKeywordLike(userProfileService.getCurrentUser(),input,pageable));
    }



    /**************************查看项目受益人*****************************/
    @RequestMapping(value = "/benefit/{id}", method = RequestMethod.GET)
    public Response getBenefitMan(@PathVariable Long id) throws IOException {
        DonationDO donationDO = donationService.find(id);
        if (donationDO == null) {
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }
        Map<String, String> map = new HashMap();
        String resultKey = null;
        String data=null;
        String address= null;
        try {
            address = donationDO.getAddress().toUpperCase();
        } catch (Exception e) {
           logger.error("the address don't exists");
        }
        String object = HttpUtils.getDataPlatformResult(MessageFormat.format(benefitIp,address), map, resultKey);
        List<BenefitStudentVO> stuLists=new ArrayList<>();
        try {
            JSONObject jsonObject = new JSONObject(object);
            String result = jsonObject.getString("Result");

            if (result.equals("false")) {
                return Response.error(I18Utils.getMessage("Common.Response.Api.Error"));
            } else {
                data = jsonObject.getString("Data");
                System.out.println("data:"+data);
                String[] strArrays=data.split(";");
                String[] benefitAddress ;
                Set<String> strSets=new HashSet<>();
                for(String s:strArrays){
                    JSONObject json=new JSONObject(s);
                    strSets.add(json.getString("Output"));
                }
                for(String s:strSets){
                    UserProfileDO userProfileDO= null;
                    try {
                        userProfileDO = userProfileService.findByAddress(s);
                        if(userProfileDO==null)continue;
                    } catch (Exception e) {
                        logger.info("没有找到");
                    }
                    BenefitStudentVO svo=new BenefitStudentVO();
                    svo.setUserName(userProfileDO.getUserName());
                    CompareVO compareVO=new CompareVO(userProfileDO.getAge(),userProfileDO.getMajor(),userProfileDO.getRank(),userProfileDO.getGpa());
                    svo.setCompareVO(compareVO);
                    stuLists.add(svo);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }

        return Response.success(stuLists);
    }
}
