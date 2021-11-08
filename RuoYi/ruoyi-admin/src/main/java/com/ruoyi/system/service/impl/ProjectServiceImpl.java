package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.ProjectMapper;
import com.ruoyi.system.domain.Project;
import com.ruoyi.system.service.IProjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 项目Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-03-05
 */
@Service
public class ProjectServiceImpl implements IProjectService 
{
    @Autowired
    private ProjectMapper projectMapper;

    /**
     * 查询项目
     * 
     * @param id 项目ID
     * @return 项目
     */
    @Override
    public Project selectProjectById(String id)
    {
        return projectMapper.selectProjectById(id);
    }

    /**
     * 查询项目列表
     * 
     * @param project 项目
     * @return 项目
     */
    @Override
    public List<Project> selectProjectList(Project project)
    {
        return projectMapper.selectProjectList(project);
    }

    /**
     * 新增项目
     * 
     * @param project 项目
     * @return 结果
     */
    @Override
    public int insertProject(Project project)
    {
        project.setCreateTime(DateUtils.getNowDate());
        return projectMapper.insertProject(project);
    }

    /**
     * 修改项目
     * 
     * @param project 项目
     * @return 结果
     */
    @Override
    public int updateProject(Project project)
    {
        project.setUpdateTime(DateUtils.getNowDate());
        return projectMapper.updateProject(project);
    }

    /**
     * 删除项目对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteProjectByIds(String ids)
    {
        return projectMapper.deleteProjectByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除项目信息
     * 
     * @param id 项目ID
     * @return 结果
     */
    public int deleteProjectById(String id)
    {
        return projectMapper.deleteProjectById(id);
    }
}
