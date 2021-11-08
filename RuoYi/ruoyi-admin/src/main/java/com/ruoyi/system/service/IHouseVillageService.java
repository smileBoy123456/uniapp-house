package com.ruoyi.system.service;

import com.ruoyi.system.domain.HouseVillage;
import java.util.List;

/**
 * 房源小区Service接口
 *
 * @author ruoyi
 * @date 2021-07-12
 */
public interface IHouseVillageService
{
    /**
     * 查询房源小区
     *
     * @param id 房源小区ID
     * @return 房源小区
     */
    public HouseVillage selectHouseVillageById(Long id);

    /**
     * 查询房源小区列表
     *
     * @param houseVillage 房源小区
     * @return 房源小区集合
     */
    public List<HouseVillage> selectHouseVillageList(HouseVillage houseVillage);

    /**
     * 通过小区名称查询房源小区
     *
     * @param houseVillage 房源小区
     * @return 房源小区集合
     */
    public HouseVillage selectHouseVillage(HouseVillage houseVillage);

    /**
     * 新增房源小区
     *
     * @param houseVillage 房源小区
     * @return 结果
     */
    public int insertHouseVillage(HouseVillage houseVillage);

    /**
     * 修改房源小区
     *
     * @param houseVillage 房源小区
     * @return 结果
     */
    public int updateHouseVillage(HouseVillage houseVillage);

    /**
     * 批量删除房源小区
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteHouseVillageByIds(String ids);

    /**
     * 删除房源小区信息
     *
     * @param id 房源小区ID
     * @return 结果
     */
    public int deleteHouseVillageById(Long id);
}
