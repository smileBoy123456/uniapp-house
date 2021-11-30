package com.ruoyi.common.utils.sms;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.http.HttpUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @Description: 云信短信接口
 * @author: zy
 * @date: 2021年03月30日 11:43
 */
public class DySmsUtil {

    private final static Logger logger= LoggerFactory.getLogger(DySmsUtil.class);

    public static boolean sendSms(String phone, JSONObject paramJson){
        boolean result = true;
        // 换成自己的
        String url = "http://api.sms.cn/sms";
        try {
            String str = HttpUtils.sendPost(url,
                    "ac=send&uid=hw8888&pwd=2179a6c986c9e62e9621c0ad224abb07" +
                    "&template=547158&mobile="+phone+"&content="+paramJson);
            logger.info("短信接口返回的数据----------------"+str);
        }catch (Exception e){
            result = true;
            logger.info("短信接口返回异常----------------"+e.getMessage());
        }
        return result;
    }

    public static void main(String[] args) {
        JSONObject obj = new JSONObject();
        obj.put("code", "1234");
        sendSms("18720989281", obj);
    }

}
