package com.ruoyi.framework.jwt.auth;

import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * 自定义登录Token
 *
 * @author ruoyi
 */
public class JwtToken extends UsernamePasswordToken
{
    private static final long serialVersionUID = 1L;

    private String token;

    public JwtToken()
    {
    }

    public JwtToken(String username, String password, boolean rememberMe)
    {
        super(username, password, rememberMe);
    }

    public JwtToken(String username, String password)
    {
        super(username, password, false);
    }

    public JwtToken(String token)
    {
        super("", "", false);
        this.token = token;
    }

    public String getToken()
    {
        return token;
    }

    public void setToken(String token)
    {
        this.token = token;
    }
}
