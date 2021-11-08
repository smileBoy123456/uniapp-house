package com.ruoyi.system.service;

import com.ruoyi.system.domain.ProjectTask;

import java.util.List;

/**
 * 任务表Service接口
 *
 * @author ruoyi
 * @date 2021-03-28
 */
public interface IProjectTaskService
{
    /**
     * 查询任务表
     *
     * @param id 任务表ID
     * @return 任务表
     */
    public ProjectTask selectProjectTaskById(Long id);

    /**
     * 查询任务表列表
     *
     * @param projectTask 任务表
     * @return 任务表集合
     */
    public List<ProjectTask> selectProjectTaskList(ProjectTask projectTask);

    /**
     * 新增任务表
     *
     * @param projectTask 任务表
     * @return 结果
     */
    public int insertProjectTask(ProjectTask projectTask);

    /**
     * 修改任务表
     *
     * @param projectTask 任务表
     * @return 结果
     */
    public int updateProjectTask(ProjectTask projectTask);

    /**
     * 批量删除任务表
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteProjectTaskByIds(String ids);

    /**
     * 删除任务表信息
     *
     * @param id 任务表ID
     * @return 结果
     */
    public int deleteProjectTaskById(Long id);
}
