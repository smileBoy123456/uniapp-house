package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.CodeUtil;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.HouseRoom;
import com.ruoyi.system.domain.HouseVillage;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.domain.vo.HouseFeature;
import com.ruoyi.system.domain.vo.HouseImage;
import com.ruoyi.system.domain.vo.User;
import com.ruoyi.system.mapper.HouseRoomMapper;
import com.ruoyi.system.service.IHouseRoomService;
import com.ruoyi.system.service.IHouseVillageService;
import com.ruoyi.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 房源详情Service业务层处理
 *
 * @author ruoyi
 * @date 2021-07-12
 */
@Service
@Transactional
public class HouseRoomServiceImpl implements IHouseRoomService
{

    @Autowired
    private ISysUserService userService;

    @Autowired
    private HouseRoomMapper houseRoomMapper;

    @Autowired
    private IHouseVillageService houseVillageService;

    /**
     * 查询房源详情
     *
     * @param id 房源详情ID
     * @return 房源详情
     */
    @Override
    public HouseRoom selectHouseRoomById(Long id)
    {
        return houseRoomMapper.selectHouseRoomById(id);
    }

    /**
     * 查询房源详情列表
     *
     * @param houseRoom 房源详情
     * @return 房源详情
     */
    @Override
    public List<HouseRoom> selectHouseRoomList(HouseRoom houseRoom)
    {
        return houseRoomMapper.selectHouseRoomList(houseRoom);
    }

    /**
     * 新增房源详情
     *
     * @param houseRoom 房源详情
     * @return 结果
     */
    @Override
    public int insertHouseRoom(HouseRoom houseRoom)
    {
        houseRoom.setCreateTime(DateUtils.getNowDate());
        houseRoom.setCreateName(ShiroUtils.getSysUser().getUserName());
        houseRoom.setPublishId(ShiroUtils.getUserId());
        if(StringUtils.isEmpty(houseRoom.getVillageName())){
            HouseVillage houseVillage = houseVillageService.selectHouseVillageById(houseRoom.getVillageId());
            houseRoom.setVillageName(houseVillage.getName());
        }
        if(StringUtils.isNull(houseRoom.getVillageId())){
            HouseVillage houseVillage = new HouseVillage();
            houseVillage.setName(houseRoom.getVillageName());
            houseVillage = houseVillageService.selectHouseVillage(houseVillage);
            houseRoom.setVillageId(houseVillage.getId());
        }
        houseRoom.setCode(CodeUtil.getCodeByUUId());
        return houseRoomMapper.insertHouseRoom(houseRoom);
    }

    /**
     * 修改房源详情
     *
     * @param houseRoom 房源详情
     * @return 结果
     */
    @Override
    public int updateHouseRoom(HouseRoom houseRoom)
    {
        houseRoom.setUpdateTime(DateUtils.getNowDate());
        houseRoom.setUpdateName(ShiroUtils.getSysUser().getUserName());
        houseRoom.setPublishId(ShiroUtils.getUserId());
        if(StringUtils.isNull(houseRoom.getCode())){
            houseRoom.setCode(CodeUtil.getCodeByUUId());
        }
        return houseRoomMapper.updateHouseRoom(houseRoom);
    }

    /**
     * 删除房源详情对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteHouseRoomByIds(String ids)
    {
        return houseRoomMapper.deleteHouseRoomByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除房源详情信息
     *
     * @param id 房源详情ID
     * @return 结果
     */
    public int deleteHouseRoomById(Long id)
    {
        return houseRoomMapper.deleteHouseRoomById(id);
    }


    /**
     * API新增房源详情
     *
     * @param houseRoom 房源详情
     * @return 结果
     */
    @Override
    public int apiInsertHouseRoom(HouseRoom houseRoom)
    {
        houseRoom.setCreateTime(DateUtils.getNowDate());
        if(StringUtils.isEmpty(houseRoom.getVillageName())){
            HouseVillage houseVillage = houseVillageService.selectHouseVillageById(houseRoom.getVillageId());
            houseRoom.setVillageName(houseVillage.getName());
        }
        if(StringUtils.isNull(houseRoom.getVillageId())){
            HouseVillage houseVillage = new HouseVillage();
            houseVillage.setName(houseRoom.getVillageName());
            houseVillage = houseVillageService.selectHouseVillage(houseVillage);
            houseRoom.setVillageId(houseVillage.getId());
        }
        if(StringUtils.isNull(houseRoom.getStartDate())){
            houseRoom.setStartDate(new Date());
        }
        houseRoom.setCode(CodeUtil.getCodeByUUId());
        houseRoomMapper.insertHouseRoom(houseRoom);
        houseRoomMapper.insertHouseFeature(houseRoom);
        houseRoomMapper.insertHouseImage(houseRoom);
        houseRoom.setFaceUrl(houseRoom.getImageList().get(0).getImageUrl());
        return houseRoomMapper.updateHouseRoom(houseRoom);
    }


    @Override
    public HouseRoom selectDetailHouseRoom(HouseRoom houseRoom) {
        List<HouseImage> houseImages = houseRoomMapper.selectHouseImage(houseRoom);
        List<HouseFeature> houseFeatures = houseRoomMapper.selectHouseFeature(houseRoom);
        houseRoom.setImageList(houseImages);
        houseRoom.setFeatureList(houseFeatures);
        houseRoom.setUser(new User(userService.selectUserById(houseRoom.getPublishId())));
        houseRoom.setVillage(houseVillageService.selectHouseVillageById(houseRoom.getVillageId()));
        return houseRoom;
    }
}
