package com.ruoyi.system.controller;

import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.system.domain.HouseVillage;
import com.ruoyi.system.service.IHouseVillageService;
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
import com.ruoyi.system.domain.HouseRoom;
import com.ruoyi.system.service.IHouseRoomService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 房源详情Controller
 *
 * @author ruoyi
 * @date 2021-07-12
 */
@Controller
@RequestMapping("/system/room")
public class HouseRoomController extends BaseController
{
    private String prefix = "system/room";

    @Autowired
    private IHouseRoomService houseRoomService;

    @Autowired
    private IHouseVillageService houseVillageService;

    @RequiresPermissions("system:room:view")
    @GetMapping()
    public String room()
    {
        return prefix + "/room";
    }

    /**
     * 查询房源详情列表
     */
    @RequiresPermissions("system:room:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(HouseRoom houseRoom)
    {
        startPage();
        List<HouseRoom> list = houseRoomService.selectHouseRoomList(houseRoom);
        return getDataTable(list);
    }

    /**
     * 导出房源详情列表
     */
    @RequiresPermissions("system:room:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(HouseRoom houseRoom)
    {
        List<HouseRoom> list = houseRoomService.selectHouseRoomList(houseRoom);
        ExcelUtil<HouseRoom> util = new ExcelUtil<HouseRoom>(HouseRoom.class);
        return util.exportExcel(list, "room");
    }

    /**
     * 新增房源详情
     */
    @GetMapping("/add")
    public String add(ModelMap mmap)
    {
        List<HouseVillage> list = houseVillageService.selectHouseVillageList(new HouseVillage());
        mmap.put("villageList", list);
        return prefix + "/add";
    }

    /**
     * 新增保存房源详情
     */
    @RequiresPermissions("system:room:add")
    @Log(title = "房源详情", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(HouseRoom houseRoom)
    {
        return toAjax(houseRoomService.insertHouseRoom(houseRoom));
    }

    /**
     * 修改房源详情
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        HouseRoom houseRoom = houseRoomService.selectHouseRoomById(id);
        mmap.put("houseRoom", houseRoom);
        List<HouseVillage> list = houseVillageService.selectHouseVillageList(new HouseVillage());
        mmap.put("villageList", list);
        return prefix + "/edit";
    }

    /**
     * 修改保存房源详情
     */
    @RequiresPermissions("system:room:edit")
    @Log(title = "房源详情", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(HouseRoom houseRoom)
    {
        return toAjax(houseRoomService.updateHouseRoom(houseRoom));
    }

    /**
     * 删除房源详情
     */
    @RequiresPermissions("system:room:remove")
    @Log(title = "房源详情", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(houseRoomService.deleteHouseRoomByIds(ids));
    }
}
