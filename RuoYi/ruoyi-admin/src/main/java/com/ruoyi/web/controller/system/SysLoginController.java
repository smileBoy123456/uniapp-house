package com.ruoyi.web.controller.system;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.enums.UserStatus;
import com.ruoyi.framework.jwt.utils.JwtUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.ServletUtils;
import com.ruoyi.common.utils.StringUtils;

/**
 * 登录验证
 *
 * @author ruoyi
 */
@Controller
public class SysLoginController extends BaseController
{

    @Autowired
    private ISysUserService userService;

    @Autowired
    private SysPasswordService passwordService;

    @GetMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response)
    {
        // 如果是Ajax请求，返回Json字符串。
        if (ServletUtils.isAjaxRequest(request))
        {
            return ServletUtils.renderString(response, "{\"code\":\"1\",\"msg\":\"未登录或登录超时。请重新登录\"}");
        }

        return "system/login";
    }

    @PostMapping("/login")
    @ResponseBody
    public AjaxResult ajaxLogin(String username, String password, Boolean rememberMe)
    {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try
        {
            subject.login(token);
            SysUser sysUser = ShiroUtils.getSysUser();
            sysUser.setPassword(password);
            AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"登录成功",sysUser);
            return ajaxResult;
        }
        catch (AuthenticationException e)
        {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage()))
            {
                msg = e.getMessage();
            }
            return error(msg);
        }
    }

    @PostMapping("/jwt/login")
    @ResponseBody
    public AjaxResult jwtLogin(String username, String password)
    {
        if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password))
        {
            return AjaxResult.error("账号和密码不能为空!");
        }

        SysUser user = userService.selectUserByLoginName(username);
        if (user == null)
        {
            return AjaxResult.error("用户不存在/密码错误!");
        }

        if (UserStatus.DELETED.getCode().equals(user.getDelFlag()))
        {
            return AjaxResult.error("对不起，您的账号已被删除!");
        }

        if (UserStatus.DISABLE.getCode().equals(user.getStatus()))
        {
            return AjaxResult.error("用户已封禁，请联系管理员!");
        }

        if (!passwordService.matches(user, password))
        {
            return AjaxResult.error("用户不存在/密码错误!");
        }

        String token = JwtUtils.createToken(username, user.getPassword());
        return AjaxResult.success("登录成功,请妥善保管您的token信息").put("token", token);
    }


    @GetMapping("/unauth")
    public String unauth()
    {
        return "error/unauth";
    }

}
