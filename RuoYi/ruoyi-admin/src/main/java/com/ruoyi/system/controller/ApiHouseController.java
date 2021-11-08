package com.ruoyi.system.controller;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.CodeUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.HouseRoom;
import com.ruoyi.system.domain.HouseVillage;
import com.ruoyi.system.domain.Project;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.domain.vo.User;
import com.ruoyi.system.service.IHouseRoomService;
import com.ruoyi.system.service.IHouseVillageService;
import com.ruoyi.system.service.ISysUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 个人信息 业务处理
 *
 * @author ruoyi
 */
@Controller
@RequestMapping("/api/house")
public class ApiHouseController extends BaseController
{
    private static final Logger log = LoggerFactory.getLogger(ApiHouseController.class);

    @Autowired
    private IHouseVillageService houseVillageService;

    @Autowired
    private IHouseRoomService houseRoomService;

    /**
     * @Description: 获取小區信息
     * @date: 0714
     * @Return: AjaxResult
     */
    @GetMapping("/findVillageList")
    @ResponseBody
    public AjaxResult findVillageList(HouseVillage houseVillage)
    {
        startPage();
        String msg = "小區列表";
        List<HouseVillage> list = houseVillageService.selectHouseVillageList(houseVillage);
        AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,list);
        return ajaxResult;
    }

    /**
    * @Description: 获取房源信息
    * @date: 0714
    * @Return: AjaxResult
    */
    @GetMapping("/findHouseList")
    @ResponseBody
    public AjaxResult findHouseList(HouseRoom houseRoom)
    {
        startPage();
        String msg = "房源列表";
        List<HouseRoom> list = houseRoomService.selectHouseRoomList(houseRoom);
        AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,list);
        return ajaxResult;
    }


    /**
     * @Description: 获取房源信息
     * @date: 0714
     * @Return: AjaxResult
     */
    @PostMapping("/saveHouse")
    @ResponseBody
    public AjaxResult saveHouse(@RequestBody HouseRoom houseRoom)
    {
        startPage();
        String msg = "房源添加成功";
        houseRoomService.apiInsertHouseRoom(houseRoom);
        AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,houseRoom);
        return ajaxResult;
    }


    /**
     * @Description: 获取房源信息by id
     * @date: 0714
     * @Return: AjaxResult
     */
    @GetMapping("/findHouseById")
    @ResponseBody
    public AjaxResult findHouseById(@RequestParam Long id)
    {
        String msg = "房源查找成功";
        HouseRoom houseRoom = houseRoomService.selectHouseRoomById(id);
        houseRoom = houseRoomService.selectDetailHouseRoom(houseRoom);
        AjaxResult ajaxResult = new AjaxResult(AjaxResult.Type.SUCCESS,msg,houseRoom);
        return ajaxResult;
    }


}
