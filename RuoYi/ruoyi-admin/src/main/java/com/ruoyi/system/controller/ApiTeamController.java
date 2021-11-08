package com.ruoyi.system.controller;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.CodeUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 个人信息 业务处理
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/api/team")
public class ApiTeamController extends BaseController
{
    private static final Logger log = LoggerFactory.getLogger(ApiTeamController.class);

    @Autowired
    private ISysUserService userService;

    @Autowired
    private SysPasswordService passwordService;

    /**
     * @Description: 提交实名认证
     * @date: 0330
     * @Return: AjaxResult
     */
    @PostMapping("/checkIdCardAuth")
    @ResponseBody
    public AjaxResult getIdCardAuth(SysUser user)
    {
        SysUser sysUser = userService.selectUserById(user.getUserId());
        if(StringUtils.isNotNull(sysUser)){
            sysUser.setCountry(user.getCountry());
            sysUser.setType(user.getType());
            sysUser.setRealName(user.getRealName());
            sysUser.setIdCard(user.getIdCard());
            sysUser.setIdCardPath(user.getIdCardPath());
            sysUser.setLinkAddress(user.getLinkAddress());
            sysUser.setAuthStatus(UserConstants.AURH_CHECK);
            userService.updateUserInfo(sysUser);
            AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"身份认证提交审核成功",sysUser);
            return ajaxResult;
        }
        return error("身份认证提交审核失败");
    }

    /**
    * @Description: 获取邀请码
    * @date: 0330
    * @Return: AjaxResult
    */
    @GetMapping("/getInviterCode")
    @ResponseBody
    public AjaxResult getInviterCode(String loginName,String code,Long userId)
    {
        SysUser sysUser = userService.selectUserById(userId);
        if(StringUtils.isEmpty(code) && StringUtils.isEmpty(sysUser.getCode())){
            // 邀请码不存在，则生成邀请码
            String genCode = genInviterCode();
            sysUser.setCode(genCode);
            userService.updateUserInfo(sysUser);
            AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"邀请码生成成功",sysUser);
            return ajaxResult;
        }
        return error("邀请码不允许修改");
    }

    /**
    * @Description: 递归返回唯一的邀请码
    * @author: zy
    * @date: 0330
    * @Return: code
    */
    private  String genInviterCode(){
        String code = CodeUtil.getCodeByUUId();
        code = code.substring(4);
        SysUser sysUser = userService.selectUserByPcode(code);
        if(StringUtils.isNotNull(sysUser)){
            // 生成以后去校验是否存在，如果不存在则返回，如果存在则重新生成
            genInviterCode();
        }
        return code;
    }

}
