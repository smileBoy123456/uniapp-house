package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.CodeUtil;
import com.ruoyi.common.utils.IpUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.Project;
import com.ruoyi.system.domain.ProjectTask;
import com.ruoyi.system.service.IProjectService;
import com.ruoyi.system.service.IProjectTaskService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 任务表Controller
 *
 * @author ruoyi
 * @date 2021-03-28
 */
@Controller
@RequestMapping("/system/task")
public class ProjectTaskController extends BaseController
{
    private String prefix = "system/task";

    @Autowired
    private IProjectTaskService projectTaskService;

    @Autowired
    private IProjectService projectService;

    @RequiresPermissions("system:task:view")
    @GetMapping()
    public String task()
    {
        return prefix + "/task";
    }

    /**
     * 查询任务表列表
     */
    @RequiresPermissions("system:task:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ProjectTask projectTask)
    {
        startPage();
        List<ProjectTask> list = projectTaskService.selectProjectTaskList(projectTask);
        return getDataTable(list);
    }

    /**
     * 导出任务表列表
     */
    @RequiresPermissions("system:task:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ProjectTask projectTask)
    {
        List<ProjectTask> list = projectTaskService.selectProjectTaskList(projectTask);
        ExcelUtil<ProjectTask> util = new ExcelUtil<ProjectTask>(ProjectTask.class);
        return util.exportExcel(list, "task");
    }

    /**
     * 新增任务表
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        mmap.put("projectList", projectService.selectProjectList(new Project()));
        return prefix + "/add";
    }

    /**
     * 新增保存任务表
     */
    @RequiresPermissions("system:task:add")
    @Log(title = "任务表", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ProjectTask projectTask, HttpServletRequest request)
    {
        Project project = projectService.selectProjectById(projectTask.getProjectId().toString());
        projectTask.setProjectName(project.getName());
        if(StringUtils.isNull(projectTask.getUserId())){
            projectTask.setUserId(ShiroUtils.getUserId());
        }
        projectTask.setIpAddress(IpUtils.getIpAddr(request));
        projectTask.setTaskNo(CodeUtil.getCodeByUUId());
        return toAjax(projectTaskService.insertProjectTask(projectTask));
    }

    /**
     * 修改任务表
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ProjectTask projectTask = projectTaskService.selectProjectTaskById(id);
        mmap.put("projectTask", projectTask);
        return prefix + "/edit";
    }

    /**
     * 修改保存任务表
     */
    @RequiresPermissions("system:task:edit")
    @Log(title = "任务表", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ProjectTask projectTask)
    {
        return toAjax(projectTaskService.updateProjectTask(projectTask));
    }

    /**
     * 删除任务表
     */
    @RequiresPermissions("system:task:remove")
    @Log(title = "任务表", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(projectTaskService.deleteProjectTaskByIds(ids));
    }

    /**
     * 任务审核
     */
    @Log(title = "任务审核", businessType = BusinessType.UPDATE)
    @RequiresPermissions("system:task:edit")
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(ProjectTask projectTask)
    {
        ProjectTask project = projectTaskService.selectProjectTaskById(projectTask.getId());
        project.setStatus(projectTask.getStatus());
        return toAjax(projectTaskService.updateProjectTask(project));
    }
}
