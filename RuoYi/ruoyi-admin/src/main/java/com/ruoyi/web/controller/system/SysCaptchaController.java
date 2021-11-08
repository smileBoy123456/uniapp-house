package com.ruoyi.web.controller.system;

import com.alibaba.fastjson.JSONObject;
import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.utils.CodeUtil;
import com.ruoyi.common.utils.RedisUtil;
import com.ruoyi.common.utils.sms.DySmsUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * 图片验证码（支持算术形式）
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/captcha")
@CrossOrigin
public class SysCaptchaController extends BaseController
{
    private final static Logger logger= LoggerFactory.getLogger(SysCaptchaController.class);

    @Resource(name = "captchaProducer")
    private Producer captchaProducer;

    @Resource(name = "captchaProducerMath")
    private Producer captchaProducerMath;

    @Autowired
    private RedisUtil redisUtil;

    /**
     * 验证码生成
     */
    @GetMapping(value = "/captchaImage")
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response)
    {
        ServletOutputStream out = null;
        try
        {
            HttpSession session = request.getSession();
            response.setDateHeader("Expires", 0);
            response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
            response.addHeader("Cache-Control", "post-check=0, pre-check=0");
            response.setHeader("Pragma", "no-cache");
            response.setContentType("image/jpeg");

            String type = request.getParameter("type");
            String capStr = null;
            String code = null;
            BufferedImage bi = null;
            if ("math".equals(type))
            {
                String capText = captchaProducerMath.createText();
                capStr = capText.substring(0, capText.lastIndexOf("@"));
                code = capText.substring(capText.lastIndexOf("@") + 1);
                bi = captchaProducerMath.createImage(capStr);
            }
            else if ("char".equals(type))
            {
                capStr = code = captchaProducer.createText();
                bi = captchaProducer.createImage(capStr);
            }
            session.setAttribute(Constants.KAPTCHA_SESSION_KEY, code);
            out = response.getOutputStream();
            ImageIO.write(bi, "jpg", out);
            out.flush();

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                if (out != null)
                {
                    out.close();
                }
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return null;
    }


    /**
     * 获取发送手机验证码
     */
    @GetMapping(value = "/captchaSms")
    @ResponseBody
    public boolean captchaSms(String loginName)
    {
        // 当验证码失效才进行操作
        if(redisUtil.get(loginName) == null){
            String code = CodeUtil.getCapthCode();
            // 将验证码限制参数放到缓存里 10分钟过期，10分钟后才能再次发短信
            redisUtil.set(loginName, code , 60 * 10 * 10);
            JSONObject obj = new JSONObject();
            obj.put("code", code);
            logger.info("短信验证码==>"+code);
            // 云信短信
            DySmsUtil.sendSms(loginName, obj);
            return true;
        }else{
            logger.info("短信验证码==>"+redisUtil.get(loginName));
            return false;
        }
    }

    /**
     * 获取发送手机验证码
     */
    /*@GetMapping(value = "/captchaSms")
    @ResponseBody
    public boolean captchaSms(String loginName)
    {
        // 当验证码失效才进行操作
        if(redisUtil.get(loginName) == null){
            try {
                String code = null;
                code = captchaProducer.createText();
                // 将验证码限制参数放到缓存里 1分钟过期，1分钟后才能再次发短信
                redisUtil.set(loginName, code , 60);
                // try {
                JSONObject obj = new JSONObject();
                obj.put("code", code);
                logger.info("短信验证码==>"+code);
                // 阿里短信
                DySmsHelper.sendSms(loginName, obj, DySmsEnum.LOGIN_TEMPLATE_CODE);
            } catch (com.aliyuncs.exceptions.ClientException e) {
                if (com.ruoyi.common.utils.StringUtils.isNotEmpty(e.getMessage()))
                {
                    logger.error(e.getMessage());
                }
                return false;
            }
        }
        return false;
    }*/

}
