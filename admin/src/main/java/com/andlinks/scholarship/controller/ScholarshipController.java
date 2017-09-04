package com.andlinks.scholarship.controller;

import com.andlinks.scholarship.Response;
import com.andlinks.scholarship.entity.DonationDO;
import com.andlinks.scholarship.entity.ScholarshipInfoDO;
import com.andlinks.scholarship.entity.UserProfileDO;
import com.andlinks.scholarship.entity.vo.CompareVO;
import com.andlinks.scholarship.service.DonationService;
import com.andlinks.scholarship.service.ScholarshipService;
import com.andlinks.scholarship.service.UserProfileService;
import com.andlinks.scholarship.util.HttpUtils;
import com.andlinks.scholarship.util.I18Utils;
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
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.*;

/**
 * Created by 陈亚兰 on 2017/8/29.
 */
@RequestMapping("/api/sch")
@RestController
public class ScholarshipController {

    private static Logger logger= LoggerFactory.getLogger(ScholarshipInfoDO.class);

    @Autowired
    private ScholarshipService scholarshipService;

    @Autowired
    private DonationService donationService;

    @Autowired
    private UserProfileService userProfileService;

    @Value("${student.applyDonationn.ip}")
    private String applyIp;

    @Value("${accountMoney.ip}")
    private String balanceIp;

    @Authority(name="applyDonate")
    @RequestMapping(value = "{id}",method = RequestMethod.POST)
    public Response findById(@PathVariable Long id) throws IOException {
        DonationDO donationDO=donationService.find(id);
        if(donationDO==null){
            return Response.error(I18Utils.getMessage("Common.Response.Error.Id"));
        }

        //以下做判断，如果已经申请则不能再次申请
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        List<ScholarshipInfoDO> schLists=scholarshipService.findByApplyerIdAndPId(userProfileDO,id);
        if(schLists.size()!=0){
            return Response.error(I18Utils.getMessage("Common.Response.HaveApplayed"));
        }
        //判断over
        String projectAddress=donationDO.getAddress();
        String studentAddress=userProfileDO.getAddress();
        Map<String,String> map=new HashMap<>();
        String resultKey=null;
        ScholarshipInfoDO sch=new ScholarshipInfoDO();
        Object object = HttpUtils.getDataPlatformResult(MessageFormat.format(applyIp,studentAddress,projectAddress), map, resultKey);
        try {
            JSONObject jsonObject=new JSONObject(object.toString());
            String result=jsonObject.getString("Result");

            sch.setApplyerId(userProfileService.getCurrentUser());
            try {
                sch.setProjectName(donationDO.getProjectName());
            } catch (Exception e) {
                e.printStackTrace();
            }
            //拼条件
            CompareVO compareVO=new CompareVO(donationDO.getMaxAge(),donationDO.getMajor(),donationDO.getRank(),donationDO.getMinGPA());
            sch.setAuthCondition(compareVO.toString());
            sch.setKeyWord(donationDO.getKeyword());
            sch.setpId(donationDO.getId());
            sch.setDonationId(donationDO);
            sch.setCompareVO(compareVO);
            if("false".equals(result)){
                sch.setStatus(ScholarshipInfoDO.Status.failure);
            }else{
                sch.setStatus(ScholarshipInfoDO.Status.success);
                sch.setBenefit(donationDO.getUnitPrice());
                //数据库项目余额   学生总额
                Object ob = HttpUtils.getDataPlatformResult(MessageFormat.format(balanceIp,donationDO.getAddress()), map, resultKey);
                Object stuMoney = HttpUtils.getDataPlatformResult(MessageFormat.format(balanceIp,studentAddress), map, resultKey);

                logger.info(object.toString());
                String res=null,stures=null;
                try {
                    JSONObject json=new JSONObject(ob.toString());
                    JSONObject jsonStu=new JSONObject(stuMoney.toString());
                    res = json.getString("Result");
                    stures=jsonStu.getString("Result");
                    if(res.equals("false")||stures.equals("false")){
                        return Response.error(I18Utils.getMessage("Common.Response.Api.Error"));
                    }
                    String data =json.getString("Data");
                    String studata=json.getString("Data");
                    int  bal=Integer.parseInt(data);
                    int  stubal=Integer.parseInt(studata);
                    donationDO.setTotalDonation(bal);
                    userProfileDO.setMoney(stubal);
                    donationService.update(donationDO);
                    userProfileService.update(userProfileDO);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                //项目余额结束
            }
            sch.setVerifyPassTime(new Date());
        } catch (JSONException e) {
                logger.error("==========转换错误============");
        }
        return Response.success(scholarshipService.save(sch));
    }

    /*****学生查询自己申请的奖学金(项目),status不输入默认是查询全部，status输入是success****************/
    @RequestMapping(value="/stuSearch",method = RequestMethod.GET)
    public Response findByApplyId(@PageableDefault(value=10,sort={"verifyPassTime"},direction = Sort.Direction.DESC)
            Pageable pageable,  @RequestParam(value = "status", defaultValue = "all") String status){
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        if("all".equals(status)){
            return Response.success(scholarshipService.findByApplyerId(userProfileDO,pageable));
        }
        return Response.success(scholarshipService.findByApplyerIdAndAndStatus(userProfileDO, ScholarshipInfoDO.Status.success,pageable));
    }

    /****************************未申请的项目************************/
    @RequestMapping(value = "/noApply",method = RequestMethod.GET)
    public Response findNoApply(@PageableDefault(value=10,sort={"id"},direction = Sort.Direction.DESC)
                                            Pageable pageable){
        UserProfileDO userProfileDO=userProfileService.getCurrentUser();
        List<ScholarshipInfoDO> schList=scholarshipService.findByApplyerId(userProfileDO);
        List<DonationDO> donList=new ArrayList<>();
        for(ScholarshipInfoDO sch:schList){
            DonationDO donationDO=scholarshipService.findDonation(sch.getpId());//根据pid查询到donation
            donList.add(donationDO);
        }
        List<Long> idList=new ArrayList<>();
        for(DonationDO donationDO:donList){
            idList.add(donationDO.getId());
        }
        //如果一个项目也没有申请要判断，否则就会返回空
        if(idList.size()==0){
            return Response.success(donationService.findPage(pageable));
        }
        return Response.success(donationService.findByIdNotIn(idList,pageable));
    }

}
