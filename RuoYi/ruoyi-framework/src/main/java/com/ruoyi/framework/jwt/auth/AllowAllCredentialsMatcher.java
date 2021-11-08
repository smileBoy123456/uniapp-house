package com.ruoyi.framework.jwt.auth;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;

/**
 * 无需验证密码
 * 
 * @author ruoyi
 */
public class AllowAllCredentialsMatcher extends SimpleCredentialsMatcher
{
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info)
    {
        return true;
    }
}
