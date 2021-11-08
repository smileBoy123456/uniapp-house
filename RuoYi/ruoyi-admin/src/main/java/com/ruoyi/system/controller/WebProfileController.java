package com.ruoyi.system.controller;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.jwt.utils.JwtUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 个人信息 业务处理
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/api/user/profile")
@CrossOrigin
public class WebProfileController extends BaseController
{
    private static final Logger log = LoggerFactory.getLogger(WebProfileController.class);

    @Autowired
    private ISysUserService userService;

    @Autowired
    private SysPasswordService passwordService;

    @GetMapping("/checkPassword")
    @ResponseBody
    public boolean checkPassword(SysUser user)
    {
        SysUser sysUser = userService.selectUserByLoginName(user.getLoginName());
        if (passwordService.matches(sysUser, user.getPassword()))
        {
            return true;
        }
        return false;
    }

    @PostMapping("/resetPwd")
    @ResponseBody
    public AjaxResult resetPwd(String loginName,String oldPassword, String newPassword)
    {
        SysUser user = userService.selectUserByLoginName(loginName);
        if (StringUtils.isNotEmpty(newPassword) && passwordService.matches(user, oldPassword))
        {
            user.setSalt(ShiroUtils.randomSalt());
            user.setPassword(passwordService.encryptPassword(user.getLoginName(), newPassword, user.getSalt()));
            if (userService.resetUserPwd(user) > 0)
            {
                // 获取token
                String jwtToken = JwtUtils.createToken(user.getLoginName(),user.getPassword());
                user.setJwtToken(jwtToken);
                AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"修改密码成功",user);
                return ajaxResult;
            }
            return error();
        }
        else
        {
            return error("修改密码失败，旧密码错误");
        }
    }

    /**
     * 修改用户
     */
    @PostMapping("/update")
    @ResponseBody
    public AjaxResult update(SysUser user)
    {
        SysUser currentUser = userService.selectUserByLoginName(user.getLoginName());
        if(StringUtils.isNotNull(currentUser)){
            currentUser.setUserName(user.getUserName());
            currentUser.setEmail(user.getEmail());
            currentUser.setSex(user.getSex());
            if(StringUtils.isEmpty(currentUser.getCode())){
                currentUser.setCode(user.getCode());
            }
            currentUser.setAddress(user.getAddress());
            if (userService.updateUserInfo(currentUser) > 0)
            {
                AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"登录成功",currentUser);
                return ajaxResult;
            }
        }
        return error();
    }

}
