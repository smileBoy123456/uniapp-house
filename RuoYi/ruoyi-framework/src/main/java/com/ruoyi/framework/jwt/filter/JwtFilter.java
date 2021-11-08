package com.ruoyi.framework.jwt.filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMethod;
import com.alibaba.fastjson.JSON;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.jwt.auth.JwtToken;

/**
 * jwt 自定义拦截器
 *
 * @author ruoyi
 */
public class JwtFilter extends AccessControlFilter
{
    private static final Logger LOGGER = LoggerFactory.getLogger(JwtFilter.class);

    private static final String AUTHZ_HEADER = "token";

    private final ThreadLocal<String> MSG_HOLDER = new ThreadLocal<>();

    @Override
    public boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception
    {
        return super.onPreHandle(request, response, mappedValue);
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception
    {
        return this.executeLogin(request, response);
    }

    /**
     * 执行登录方法（UserRealm判断，异常返回false）
     */
    protected boolean executeLogin(ServletRequest request, ServletResponse response) throws Exception
    {
        String token = WebUtils.toHttp(request).getHeader(AUTHZ_HEADER);
        if (StringUtils.isEmpty(token))
        {
            MSG_HOLDER.set("消息头不正确，header需要携带token参数");
            return false;
        }
        try
        {
            // 断是否有权限
            JwtToken jwtToken = new JwtToken(token);
            this.getSubject(request, response).login(jwtToken);
            return true;
        }
        catch (AuthenticationException e)
        {
            if (e.getCause() instanceof TokenExpiredException)
            {
                MSG_HOLDER.set("token已过期");
            }
            else if (e.getCause() instanceof JWTVerificationException)
            {
                MSG_HOLDER.set("用户密码错误");
            }
            else
            {
                MSG_HOLDER.set("用户信息验证失败：" + e.getMessage());
            }
            return false;
        }
    }

    /**
     * 请求前处理,处理跨域
     */
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception
    {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        httpServletResponse.setHeader("Access-control-Allow-Origin", httpServletRequest.getHeader("Origin"));
        httpServletResponse.setHeader("Access-Control-Allow-Methods", "GET,POST,OPTIONS,PUT,DELETE");
        httpServletResponse.setHeader("Access-Control-Allow-Headers", httpServletRequest.getHeader("Access-Control-Request-Headers"));
        // 跨域时,option请求直接返回正常状态
        if (httpServletRequest.getMethod().equals(RequestMethod.OPTIONS.name()))
        {
            httpServletResponse.setStatus(HttpStatus.OK.value());
            return false;
        }
        return super.preHandle(request, response);
    }

    /**
     * 异常处理
     */
    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception
    {
        this.jwtFail(request, response, 401, "对不起,您无权限进行操作!");
        return false;
    }

    /**
     * 认证失败，异常返回
     */
    protected void jwtFail(ServletRequest request, ServletResponse response, int code, String message)
    {
        HttpServletResponse httpResponse = WebUtils.toHttp(response);
        String contentType = "application/json;charset=UTF-8";
        httpResponse.setStatus(401);
        httpResponse.setContentType(contentType);
        try
        {
            String msg = StringUtils.isNotEmpty(MSG_HOLDER.get()) ? MSG_HOLDER.get() : message;
            AjaxResult ajaxResult = new AjaxResult().put(AjaxResult.CODE_TAG, code).put(AjaxResult.MSG_TAG, msg);
            PrintWriter printWriter = httpResponse.getWriter();
            printWriter.append(JSON.toJSONString(ajaxResult));
        }
        catch (IOException e)
        {
            LOGGER.error("sendChallenge error,can not resolve httpServletResponse");
        }
    }
}
