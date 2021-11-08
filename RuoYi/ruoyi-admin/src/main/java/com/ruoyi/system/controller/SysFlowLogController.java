package com.ruoyi.system.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.domain.SysFlowLog;
import com.ruoyi.system.service.ISysFlowLogService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 流量统计Controller
 *
 * @author ruoyi
 * @date 2021-04-07
 */
@Controller
@RequestMapping("/system/流量统计")
public class SysFlowLogController extends BaseController
{
    private String prefix = "system/流量统计";

    @Autowired
    private ISysFlowLogService sysFlowLogService;

    @RequiresPermissions("system:流量统计:view")
    @GetMapping()
    public String 流量统计()
    {
        return prefix + "/流量统计";
    }

    /**
     * 查询流量统计列表
     */
    @RequiresPermissions("system:流量统计:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysFlowLog sysFlowLog)
    {
        startPage();
        List<SysFlowLog> list = sysFlowLogService.selectSysFlowLogList(sysFlowLog);
        return getDataTable(list);
    }

    /**
     * 导出流量统计列表
     */
    @RequiresPermissions("system:流量统计:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysFlowLog sysFlowLog)
    {
        List<SysFlowLog> list = sysFlowLogService.selectSysFlowLogList(sysFlowLog);
        ExcelUtil<SysFlowLog> util = new ExcelUtil<SysFlowLog>(SysFlowLog.class);
        return util.exportExcel(list, "流量统计");
    }

    /**
     * 新增流量统计
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存流量统计
     */
    @RequiresPermissions("system:流量统计:add")
    @Log(title = "流量统计", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysFlowLog sysFlowLog)
    {
        return toAjax(sysFlowLogService.insertSysFlowLog(sysFlowLog));
    }

    /**
     * 修改流量统计
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysFlowLog sysFlowLog = sysFlowLogService.selectSysFlowLogById(id);
        mmap.put("sysFlowLog", sysFlowLog);
        return prefix + "/edit";
    }

    /**
     * 修改保存流量统计
     */
    @RequiresPermissions("system:流量统计:edit")
    @Log(title = "流量统计", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysFlowLog sysFlowLog)
    {
        return toAjax(sysFlowLogService.updateSysFlowLog(sysFlowLog));
    }

    /**
     * 删除流量统计
     */
    @RequiresPermissions("system:流量统计:remove")
    @Log(title = "流量统计", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysFlowLogService.deleteSysFlowLogByIds(ids));
    }
}
