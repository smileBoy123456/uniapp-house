package com.ruoyi.framework.jwt.utils;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Date;

/**
 * jwt 工具类
 *
 * @author ruoyi
 */
public class JwtUtils
{
    //  2 *24 * 半小时过期，可以放在redis里，解决过期刷新问题
    private static final long EXPIRE_TIME = 30 * 60 * 1000 * 2 *24;

    private static final String CLAIM_NAME = "username";

    public static String createToken(String username, String password)
    {
        return createToken(username, password, EXPIRE_TIME);
    }

    public static String createToken(String username, String password, long expireTime)
    {
        Date date = new Date(System.currentTimeMillis() + expireTime);
        // 加密处理密码
        Algorithm algorithm = Algorithm.HMAC256(password);
        return JWT.create().withClaim(CLAIM_NAME, username).withExpiresAt(date).sign(algorithm);
    }

    public static void verify(String username, String dbPwd, String token)
    {
        Algorithm algorithm = Algorithm.HMAC256(dbPwd);
        JWTVerifier jwtVerifier = JWT.require(algorithm).withClaim(CLAIM_NAME, username).build();
        try
        {
            jwtVerifier.verify(token);
        }
        catch (TokenExpiredException e)
        {
            throw new TokenExpiredException("token已过期");
        }
        catch (JWTVerificationException e)
        {
            throw new JWTVerificationException("token验证失败");
        }
    }

    public static String getUserName(String token)
    {
        try
        {
            DecodedJWT jwt = JWT.decode(token);
            return jwt.getClaim(CLAIM_NAME).asString();
        }
        catch (JWTDecodeException e)
        {
            return null;
        }
    }
}
