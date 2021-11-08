package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.HouseVillageMapper;
import com.ruoyi.system.domain.HouseVillage;
import com.ruoyi.system.service.IHouseVillageService;
import com.ruoyi.common.core.text.Convert;

/**
 * 房源小区Service业务层处理
 *
 * @author ruoyi
 * @date 2021-07-12
 */
@Service
public class HouseVillageServiceImpl implements IHouseVillageService
{
    @Autowired
    private HouseVillageMapper houseVillageMapper;

    /**
     * 查询房源小区
     *
     * @param id 房源小区ID
     * @return 房源小区
     */
    @Override
    public HouseVillage selectHouseVillageById(Long id)
    {
        return houseVillageMapper.selectHouseVillageById(id);
    }

    /**
     * 查询房源小区列表
     *
     * @param houseVillage 房源小区
     * @return 房源小区
     */
    @Override
    public List<HouseVillage> selectHouseVillageList(HouseVillage houseVillage)
    {
        return houseVillageMapper.selectHouseVillageList(houseVillage);
    }

    /**
     * 查询房源小区
     *
     * @param houseVillage 房源小区
     * @return 房源小区
     */
    @Override
    public HouseVillage selectHouseVillage(HouseVillage houseVillage)
    {
        return houseVillageMapper.selectHouseVillage(houseVillage);
    }


    /**
     * 新增房源小区
     *
     * @param houseVillage 房源小区
     * @return 结果
     */
    @Override
    public int insertHouseVillage(HouseVillage houseVillage)
    {
        houseVillage.setCreateTime(DateUtils.getNowDate());
        return houseVillageMapper.insertHouseVillage(houseVillage);
    }

    /**
     * 修改房源小区
     *
     * @param houseVillage 房源小区
     * @return 结果
     */
    @Override
    public int updateHouseVillage(HouseVillage houseVillage)
    {
        houseVillage.setUpdateTime(DateUtils.getNowDate());
        return houseVillageMapper.updateHouseVillage(houseVillage);
    }

    /**
     * 删除房源小区对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteHouseVillageByIds(String ids)
    {
        return houseVillageMapper.deleteHouseVillageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除房源小区信息
     *
     * @param id 房源小区ID
     * @return 结果
     */
    public int deleteHouseVillageById(Long id)
    {
        return houseVillageMapper.deleteHouseVillageById(id);
    }
}
