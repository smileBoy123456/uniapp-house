package com.ruoyi.system.controller;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.system.domain.Project;
import com.ruoyi.system.service.IProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
* @Description: api 项目信息控制类
* @author: zy
* @Return:
*/
@RestController
@RequestMapping("/api/project")
public class ApiProjectController extends BaseController
{
    @Autowired
    private IProjectService projectService;

    @GetMapping("/list")
    public AjaxResult list(Project project)
    {
        startPage();
        String msg = "项目数据";
        List<Project> list = projectService.selectProjectList(project);
        AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,list);
        return ajaxResult;
    }
}
