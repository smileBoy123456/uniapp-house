package com.ruoyi.system.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.HouseVillage;
import com.ruoyi.system.service.IHouseVillageService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 房源小区Controller
 *
 * @author ruoyi
 * @date 2021-07-12
 */
@Controller
@RequestMapping("/system/village")
public class HouseVillageController extends BaseController
{
    private String prefix = "system/village";

    @Autowired
    private IHouseVillageService houseVillageService;

    @RequiresPermissions("system:village:view")
    @GetMapping()
    public String village()
    {
        return prefix + "/village";
    }

    /**
     * 查询房源小区列表
     */
    @RequiresPermissions("system:village:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HouseVillage houseVillage)
    {
        startPage();
        List<HouseVillage> list = houseVillageService.selectHouseVillageList(houseVillage);
        return getDataTable(list);
    }

    /**
     * 导出房源小区列表
     */
    @RequiresPermissions("system:village:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HouseVillage houseVillage)
    {
        List<HouseVillage> list = houseVillageService.selectHouseVillageList(houseVillage);
        ExcelUtil<HouseVillage> util = new ExcelUtil<HouseVillage>(HouseVillage.class);
        return util.exportExcel(list, "village");
    }

    /**
     * 新增房源小区
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存房源小区
     */
    @RequiresPermissions("system:village:add")
    @Log(title = "房源小区", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HouseVillage houseVillage)
    {
        return toAjax(houseVillageService.insertHouseVillage(houseVillage));
    }

    /**
     * 修改房源小区
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        HouseVillage houseVillage = houseVillageService.selectHouseVillageById(id);
        mmap.put("houseVillage", houseVillage);
        return prefix + "/edit";
    }

    /**
     * 修改保存房源小区
     */
    @RequiresPermissions("system:village:edit")
    @Log(title = "房源小区", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HouseVillage houseVillage)
    {
        return toAjax(houseVillageService.updateHouseVillage(houseVillage));
    }

    /**
     * 删除房源小区
     */
    @RequiresPermissions("system:village:remove")
    @Log(title = "房源小区", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(houseVillageService.deleteHouseVillageByIds(ids));
    }
}
