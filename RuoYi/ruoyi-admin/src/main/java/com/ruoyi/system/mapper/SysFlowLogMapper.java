package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysFlowLog;

import java.util.List;

/**
 * 流量统计Mapper接口
 *
 * @author ruoyi
 * @date 2021-04-07
 */
public interface SysFlowLogMapper
{
    /**
     * 查询流量统计
     *
     * @param id 流量统计ID
     * @return 流量统计
     */
    public SysFlowLog selectSysFlowLogById(Long id);

    /**
     * 查询流量统计列表
     *
     * @param sysFlowLog 流量统计
     * @return 流量统计集合
     */
    public List<SysFlowLog> selectSysFlowLogList(SysFlowLog sysFlowLog);

    /**
     * 新增流量统计
     *
     * @param sysFlowLog 流量统计
     * @return 结果
     */
    public int insertSysFlowLog(SysFlowLog sysFlowLog);

    /**
     * 修改流量统计
     *
     * @param sysFlowLog 流量统计
     * @return 结果
     */
    public int updateSysFlowLog(SysFlowLog sysFlowLog);

    /**
     * 删除流量统计
     *
     * @param id 流量统计ID
     * @return 结果
     */
    public int deleteSysFlowLogById(Long id);

    /**
     * 批量删除流量统计
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysFlowLogByIds(String[] ids);

    /**
     * 查询月流量
     *
     * @param sysFlowLog 流量统计
     * @return 流量统计集合
     */
    public SysFlowLog selectSysFlowLogByMonth();
}
