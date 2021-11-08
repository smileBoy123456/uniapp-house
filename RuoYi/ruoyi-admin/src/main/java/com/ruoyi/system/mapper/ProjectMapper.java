package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.Project;
import java.util.List;

/**
 * 项目Mapper接口
 * 
 * @author ruoyi
 * @date 2021-03-05
 */
public interface ProjectMapper 
{
    /**
     * 查询项目
     * 
     * @param id 项目ID
     * @return 项目
     */
    public Project selectProjectById(String id);

    /**
     * 查询项目列表
     * 
     * @param project 项目
     * @return 项目集合
     */
    public List<Project> selectProjectList(Project project);

    /**
     * 新增项目
     * 
     * @param project 项目
     * @return 结果
     */
    public int insertProject(Project project);

    /**
     * 修改项目
     * 
     * @param project 项目
     * @return 结果
     */
    public int updateProject(Project project);

    /**
     * 删除项目
     * 
     * @param id 项目ID
     * @return 结果
     */
    public int deleteProjectById(String id);

    /**
     * 批量删除项目
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteProjectByIds(String[] ids);
}
