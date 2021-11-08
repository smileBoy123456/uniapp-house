package com.ruoyi.system.task;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.RedisUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysFlowLog;
import com.ruoyi.system.service.ISysFlowLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.HashSet;

/**
 * 定时任务调度
 *
 * @author zy
 */
@Component("sysTask")
public class SysTask
{
    @Autowired
    private ISysFlowLogService sysFlowLogService;

    @Autowired
    private RedisUtil redisUtil;

    /**
    * @Description: 流量统计持久化
    * @author: zy
    */
    public void sysFlowLog()
    {
        SysFlowLog sysFlowLog = new SysFlowLog();
        // 定义pv.uv.ip标识
        String pvFlow = "pvFlow:"+ DateUtils.getPreViewDateStr();
        String uvFlow = "uvFlow:"+ DateUtils.getPreViewDateStr();
        String ipFlow = "ipFlow:"+ DateUtils.getPreViewDateStr();
        // String pvFlow = "pvFlow:"+ DateUtils.getDate();
        // String uvFlow = "uvFlow:"+ DateUtils.getDate();
        // String ipFlow = "ipFlow:"+ DateUtils.getDate();
        if(StringUtils.isNotNull(redisUtil.get(pvFlow))){
            sysFlowLog.setPvNum(Long.valueOf(redisUtil.get(pvFlow).toString()));
            HashSet uvSet = (HashSet) redisUtil.get(uvFlow);
            HashSet ipSet = (HashSet) redisUtil.get(ipFlow);
            sysFlowLog.setUvNum(Long.valueOf(uvSet.size()));
            sysFlowLog.setIpNum(Long.valueOf(ipSet.size()));
            sysFlowLog.setFlowDate(DateUtils.getPreViewDate());
            sysFlowLogService.insertSysFlowLog(sysFlowLog);
            // 后续将本周，本月数据统计放入redis

            // 统计最近7天的流量放入redis
        }
    }

}
