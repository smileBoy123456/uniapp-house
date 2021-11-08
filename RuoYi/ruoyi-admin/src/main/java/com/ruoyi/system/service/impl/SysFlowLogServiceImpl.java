package com.ruoyi.system.service.impl;

import com.google.common.collect.Lists;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.RedisUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.SysFlowLog;
import com.ruoyi.system.domain.vo.IndexFlowModel;
import com.ruoyi.system.mapper.SysFlowLogMapper;
import com.ruoyi.system.service.ISysFlowLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;

/**
 * 流量统计Service业务层处理
 *
 * @author ruoyi
 * @date 2021-04-07
 */
@Service
public class SysFlowLogServiceImpl implements ISysFlowLogService
{

    @Autowired
    private RedisUtil redisUtil;

    @Autowired
    private SysFlowLogMapper sysFlowLogMapper;

    /**
     * 查询流量统计
     *
     * @param id 流量统计ID
     * @return 流量统计
     */
    @Override
    public SysFlowLog selectSysFlowLogById(Long id)
    {
        return sysFlowLogMapper.selectSysFlowLogById(id);
    }

    /**
     * 查询流量统计列表
     *
     * @param sysFlowLog 流量统计
     * @return 流量统计
     */
    @Override
    public List<SysFlowLog> selectSysFlowLogList(SysFlowLog sysFlowLog)
    {
        return sysFlowLogMapper.selectSysFlowLogList(sysFlowLog);
    }

    /**
     * 新增流量统计
     *
     * @param sysFlowLog 流量统计
     * @return 结果
     */
    @Override
    public int insertSysFlowLog(SysFlowLog sysFlowLog)
    {
        return sysFlowLogMapper.insertSysFlowLog(sysFlowLog);
    }

    /**
     * 修改流量统计
     *
     * @param sysFlowLog 流量统计
     * @return 结果
     */
    @Override
    public int updateSysFlowLog(SysFlowLog sysFlowLog)
    {
        return sysFlowLogMapper.updateSysFlowLog(sysFlowLog);
    }

    /**
     * 删除流量统计对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysFlowLogByIds(String ids)
    {
        return sysFlowLogMapper.deleteSysFlowLogByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除流量统计信息
     *
     * @param id 流量统计ID
     * @return 结果
     */
    public int deleteSysFlowLogById(Long id)
    {
        return sysFlowLogMapper.deleteSysFlowLogById(id);
    }

    /**
    * @Description: 首页获取流量model
    * @author: zy
    * @Return: IndexFlowModel
    */
    @Override
    public IndexFlowModel getIndexFlowModel() {
        // 定义pv.uv.ip标识，如果redis中存在，则加1，否则初始1
        String pvFlow = "pvFlow:"+ DateUtils.getDate();
        String uvFlow = "uvFlow:"+ DateUtils.getDate();
        String ipFlow = "ipFlow:"+ DateUtils.getDate();
        // pvFlow进行累计操作
        Long pvFlowNum = 0L;
        if(StringUtils.isNotNull(redisUtil.get(pvFlow))){
            pvFlowNum = Long.valueOf(redisUtil.get(pvFlow).toString());
        }
        // uvFlow进行cookie去重
        HashSet uvSet = new HashSet<>();
        if(StringUtils.isNotNull(redisUtil.get(uvFlow))){
            uvSet = ((HashSet) redisUtil.get(uvFlow));
        }
        // ipFlow进行ip去重
        HashSet ipSet = new HashSet<>();
        // 判断IP键是否存在
        if(StringUtils.isNotNull(redisUtil.get(ipFlow))){
            ipSet = ((HashSet) redisUtil.get(ipFlow));
        }

        IndexFlowModel indexFlowModel = new IndexFlowModel();
        indexFlowModel.setIpFlowDay((long) ipSet.size());
        // indexFlowModel.setIpFlowWeek(-1L);
        // indexFlowModel.setIpFlowMonth(-1L);
        indexFlowModel.setUvFlowDay((long) uvSet.size());
        // indexFlowModel.setUvFlowWeek(-1L);
        // indexFlowModel.setUvFlowMonth(-1L);
        indexFlowModel.setPvFlowDay(pvFlowNum);
        // indexFlowModel.setPvFlowWeek(-1L);
        // indexFlowModel.setPvFlowMonth(-1L);
        // 设置月流量，从数据库读取
        SysFlowLog sysFlowLog = sysFlowLogMapper.selectSysFlowLogByMonth();
        indexFlowModel.setIpFlowMonth(sysFlowLog.getIpNum());
        indexFlowModel.setUvFlowMonth(sysFlowLog.getUvNum());
        indexFlowModel.setPvFlowMonth(sysFlowLog.getPvNum());
        return indexFlowModel;
    }


    /**
     * @Description: 首页获取最近7天流量model
     * @author: zy
     * @Return: list<IndexFlowModel>
     */
    @Override
    public List<IndexFlowModel> getIndexFlowModelList() {
        List<IndexFlowModel> list = Lists.newArrayList();
        for (int i = 6; i >= 0; i--) {
            // 定义pv.uv.ip标识
            String dataStr = DateUtils.getPreViewDateStrByNum(i);
            String pvFlow = "pvFlow:"+ dataStr;
            String uvFlow = "uvFlow:"+ dataStr;
            String ipFlow = "ipFlow:"+ dataStr;
            // pvFlow进行累计操作
            Long pvFlowNum = 0L;
            if(StringUtils.isNotNull(redisUtil.get(pvFlow))){
                pvFlowNum = Long.valueOf(redisUtil.get(pvFlow).toString());
            }
            // uvFlow进行cookie去重
            HashSet uvSet = new HashSet<>();
            if(StringUtils.isNotNull(redisUtil.get(uvFlow))){
                uvSet = ((HashSet) redisUtil.get(uvFlow));
            }
            // ipFlow进行ip去重
            HashSet ipSet = new HashSet<>();
            // 判断IP键是否存在
            if(StringUtils.isNotNull(redisUtil.get(ipFlow))){
                ipSet = ((HashSet) redisUtil.get(ipFlow));
            }
            IndexFlowModel indexFlowModel = new IndexFlowModel();
            indexFlowModel.setIpFlowDay((long) ipSet.size());
            indexFlowModel.setFlowDate(dataStr);

            list.add(indexFlowModel);
        }
        return list;
    }
}
