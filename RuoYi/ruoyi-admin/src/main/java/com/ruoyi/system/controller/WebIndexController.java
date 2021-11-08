package com.ruoyi.system.controller;

import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.*;
import com.ruoyi.framework.jwt.utils.JwtUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.framework.shiro.service.SysShiroService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysFlowLog;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.IWebIndexService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashSet;

@Controller
@RequestMapping("/web")
@CrossOrigin
public class WebIndexController extends BaseController {

	@Autowired
	private IWebIndexService webIndexService;

	@Autowired
	private ISysUserService userService;

	@Autowired
	private SysPasswordService passwordService;

	@Autowired
	private SysShiroService sysShiroService;

	@Autowired
	private RedisUtil redisUtil;

	/**
	 * 校验用户名
	 */
	@PostMapping("/checkLoginNameUnique")
	@ResponseBody
	public String checkLoginNameUnique(SysUser user)
	{
		return userService.checkLoginNameUnique(user.getLoginName());
	}

	/**
	 * 密码登录 Json参数
	 */
	@PostMapping("/thirdLogin")
	@ResponseBody
	public AjaxResult ajaxThridLogin(HttpServletRequest request,
									 @RequestBody SysUser user)
	{
		String msg = "用户不存在/密码错误";
		// 判断是不是手机号码
		if (!user.getLoginName().matches(UserConstants.MOBILE_PHONE_NUMBER_PATTERN) || StringUtils.isEmpty(user.getPassword()))
		{
			return error(msg);
		}
		UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginName(), user.getPassword());
		Subject subject = SecurityUtils.getSubject();
		try
		{
			subject.login(token);
			SysUser sysUser = ShiroUtils.getSysUser();
			// 获取token
			String jwtToken = JwtUtils.createToken(sysUser.getLoginName(),sysUser.getPassword());
			sysUser.setJwtToken(jwtToken);
			AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,"登录成功",sysUser);
			return ajaxResult;
		}
		catch (AuthenticationException e)
		{
			if (com.ruoyi.common.utils.StringUtils.isNotEmpty(e.getMessage()))
			{
				msg = e.getMessage();
			}
			return error(msg);
		}
	}


    /**
     * 手机注册/登录
     */
    @PostMapping("/thirdRegister")
    @ResponseBody
    public AjaxResult thirdRegister(HttpServletRequest request,
									@RequestBody SysUser user)
    {
        String msg = "登录成功";
        if (StringUtils.isEmpty(user.getLoginName()) || StringUtils.isEmpty(user.getCaptcha())){
			msg = "用户名/验证码不能为空";
        	return error(msg);
		}
        // 首先验证验证码是否正确
		if(redisUtil.get(user.getLoginName()) == null || !redisUtil.get(user.getLoginName()).equals(user.getCaptcha())){
			msg = "验证码过期/错误";
			return error(msg);
		}
		// 验证码正确则判断是否为新用户
		SysUser sysUser = userService.selectUserByLoginName(user.getLoginName());
		// 不是新用户，创建用户
		if(sysUser == null){
			sysUser = new SysUser();
			sysUser.setPcode(user.getPcode());
			sysUser.setLoginName(user.getLoginName());
			sysUser.setUserName(user.getLoginName());
			sysUser.setPassword(user.getLoginName());
			sysUser.setPhonenumber(user.getLoginName());
			sysUser.setSalt(ShiroUtils.randomSalt());
			sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), sysUser.getPassword(), sysUser.getSalt()));
			webIndexService.registerSave(sysUser);
		}
		// 获取token
		String jwtToken = JwtUtils.createToken(sysUser.getLoginName(),sysUser.getPassword());
		sysUser.setJwtToken(jwtToken);
		AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,sysUser);
		return ajaxResult;
    }

    /**
    * @Description: 保存流量信息
    * @author: zy
    * @Return: 返回uv标识
    */
	@PostMapping("/saveSysFlowInfo")
	@ResponseBody
    public String saveSysFlowInfo(HttpServletRequest request, HttpServletResponse response){
		// 定义pv.uv.ip标识，如果redis中存在，则加1，否则初始1
		String pvFlow = "pvFlow:"+ DateUtils.getDate();
		String uvFlow = "uvFlow:"+ DateUtils.getDate();
		String ipFlow = "ipFlow:"+ DateUtils.getDate();
		// pvFlow进行累计操作
		Long pvFlowNum = 1L;
		if(StringUtils.isNull(redisUtil.get(pvFlow))){
			redisUtil.set(pvFlow,pvFlowNum, Constants.SYS_FLOW_TIME);
		}else {
			redisUtil.set(pvFlow,redisUtil.incr(pvFlow,1), Constants.SYS_FLOW_TIME);
		}

		// uvFlow进行cookie去重
		HashSet uvSet = new HashSet<>();
		if(StringUtils.isNotNull(redisUtil.get(uvFlow))){
			uvSet = ((HashSet) redisUtil.get(uvFlow));
		}
		String uvCode = request.getParameter("uvCode");
		if(StringUtils.isEmpty(uvCode)){
			uvCode = CodeUtil.getCode();
		}
		uvSet.add(uvCode);
		redisUtil.set(uvFlow,uvSet, Constants.SYS_FLOW_TIME);

		// ipFlow进行ip去重
		String ipAddr = IpUtils.getIpAddr(request);
		HashSet ipSet = new HashSet<>();
		// 判断IP键是否存在
		if(StringUtils.isNotNull(redisUtil.get(ipFlow))){
			ipSet = ((HashSet) redisUtil.get(ipFlow));
		}
		ipSet.add(ipAddr);
		redisUtil.set(ipFlow,ipSet, Constants.SYS_FLOW_TIME);
		return uvCode;
	}

	/**
	 * @Description: 保存流量信息
	 * @author: zy
	 * @Return: 返回uv标识
	 */
	@PostMapping("/appSysFlowInfo")
	@ResponseBody
	public AjaxResult appSysFlowInfo(HttpServletRequest request, @RequestBody SysFlowLog sysFlowLog){
		String msg = "流量累积中";
		// 定义pv.uv.ip标识，如果redis中存在，则加1，否则初始1
		String pvFlow = "pvFlow:"+ DateUtils.getDate();
		String uvFlow = "uvFlow:"+ DateUtils.getDate();
		String ipFlow = "ipFlow:"+ DateUtils.getDate();
		// pvFlow进行累计操作
		Long pvFlowNum = 1L;
		if(StringUtils.isNull(redisUtil.get(pvFlow))){
			redisUtil.set(pvFlow,pvFlowNum, Constants.SYS_FLOW_TIME);
		}else {
			redisUtil.set(pvFlow,redisUtil.incr(pvFlow,1), Constants.SYS_FLOW_TIME);
		}

		// uvFlow进行cookie去重
		HashSet uvSet = new HashSet<>();
		if(StringUtils.isNotNull(redisUtil.get(uvFlow))){
			uvSet = ((HashSet) redisUtil.get(uvFlow));
		}
		String uvCode = sysFlowLog.getUvCode();
		if(StringUtils.isEmpty(uvCode)){
			uvCode = CodeUtil.getCode();
		}
		uvSet.add(uvCode);
		redisUtil.set(uvFlow,uvSet, Constants.SYS_FLOW_TIME);

		// ipFlow进行ip去重
		String ipAddr = IpUtils.getIpAddr(request);
		HashSet ipSet = new HashSet<>();
		// 判断IP键是否存在
		if(StringUtils.isNotNull(redisUtil.get(ipFlow))){
			ipSet = ((HashSet) redisUtil.get(ipFlow));
		}
		ipSet.add(ipAddr);
		redisUtil.set(ipFlow,ipSet, Constants.SYS_FLOW_TIME);
		AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,uvCode);
		return ajaxResult;
	}
}
