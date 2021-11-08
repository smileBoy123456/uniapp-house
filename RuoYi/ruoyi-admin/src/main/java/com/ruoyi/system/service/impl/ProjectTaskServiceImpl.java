package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.ProjectTask;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.ProjectTaskMapper;
import com.ruoyi.system.service.IProjectTaskService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 任务表Service业务层处理
 *
 * @author ruoyi
 * @date 2021-03-28
 */
@Service
public class ProjectTaskServiceImpl implements IProjectTaskService
{
    @Autowired
    private ProjectTaskMapper projectTaskMapper;

    @Autowired
    private ISysUserService userService;

    /**
     * 查询任务表
     *
     * @param id 任务表ID
     * @return 任务表
     */
    @Override
    public ProjectTask selectProjectTaskById(Long id)
    {
        return projectTaskMapper.selectProjectTaskById(id);
    }

    /**
     * 查询任务表列表
     *
     * @param projectTask 任务表
     * @return 任务表
     */
    @Override
    public List<ProjectTask> selectProjectTaskList(ProjectTask projectTask)
    {
        return projectTaskMapper.selectProjectTaskList(projectTask);
    }

    /**
     * 新增任务表
     *
     * @param projectTask 任务表
     * @return 结果
     */
    @Override
    public int insertProjectTask(ProjectTask projectTask)
    {
        SysUser user = userService.selectUserById(projectTask.getUserId());
        projectTask.setCreateBy(user.getUserName());
        projectTask.setCreateTime(DateUtils.getNowDate());
        return projectTaskMapper.insertProjectTask(projectTask);
    }

    /**
     * 修改任务表
     *
     * @param projectTask 任务表
     * @return 结果
     */
    @Override
    public int updateProjectTask(ProjectTask projectTask)
    {
        projectTask.setUpdateBy(ShiroUtils.getSysUser().getUserName());
        projectTask.setUpdateTime(DateUtils.getNowDate());
        return projectTaskMapper.updateProjectTask(projectTask);
    }

    /**
     * 删除任务表对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteProjectTaskByIds(String ids)
    {
        return projectTaskMapper.deleteProjectTaskByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除任务表信息
     *
     * @param id 任务表ID
     * @return 结果
     */
    public int deleteProjectTaskById(Long id)
    {
        return projectTaskMapper.deleteProjectTaskById(id);
    }
}
