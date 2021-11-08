package com.ruoyi.common.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * 订单号生成工具
 */
public class CodeUtil {
    /**
     * 锁对象，可以为任意对象
     */
    private static Object lockObj = "lockerOrder";
    /**
     * 订单号生成计数器
     */
    public static long codeNumCount = 0L;
    /**
     * 每毫秒生成订单号数量最大值
     */
    public static int maxPerMSECSize=1000;
    /**
     * 生成非重复订单号，理论上限1毫秒1000个，可扩展
     */
    public static String getCode() {
        String finCodeNum = "";
        try {
            // 最终生成的订单号
            synchronized (lockObj) {
                // 取系统当前时间作为订单号变量前半部分，精确到毫秒
                long nowLong = Long.parseLong(new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date()));
                // 计数器到最大值归零，可扩展更大，目前1毫秒处理峰值1000个，1秒100万
                if (codeNumCount > maxPerMSECSize) {
                    codeNumCount = 0L;
                }
                //组装订单号
                String countStr=maxPerMSECSize +codeNumCount+"";
                finCodeNum=nowLong+countStr.substring(1);
                codeNumCount++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return finCodeNum;
    }

    /**
     * 根据UUID生成单号
     * @return
     *
     * getCode生成的订单编号过长，如果需要绝对唯一可以使用方法一，当前方法高并发情况下，小小小的概率重复
     */
    public static String getCodeByUUId()
    {
        int value = UUID.randomUUID().toString().hashCode();
        if (value < 0) {
            value = -value;
        }
        //0代表前面补充0，10代表长度，d代表正整数
        String orderId = String.format("%010d", value);
        return orderId;
    }


    /**
     * 根据UUID生成4位随机验证码
     * @return
     *
     */
    public static String getCapthCode()
    {
        return getCodeByUUId().substring(6);
    }

    public static void main(String[] args) {
        for (int i = 0; i < 1; i++) {
            String a  =  getCodeByUUId();
            System.out.println(a);
            System.out.println(a.substring(6));
        }
    }

}

