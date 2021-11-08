package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 房源小区对象 house_village
 * 
 * @author ruoyi
 * @date 2021-07-12
 */
public class HouseVillage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** 省 */
    @Excel(name = "省")
    private String province;

    /** 市 */
    @Excel(name = "市")
    private String city;

    /** 区 */
    @Excel(name = "区")
    private String area;

    /** 名称 */
    @Excel(name = "名称")
    private String name;

    /** 代号 */
    @Excel(name = "代号")
    private String code;

    /** 年份 */
    @Excel(name = "年份")
    private Integer year;

    /** 建筑类型 */
    @Excel(name = "建筑类型")
    private String type;

    /** 绿化率 */
    @Excel(name = "绿化率")
    private Double green;

    /** 介绍 */
    @Excel(name = "介绍")
    private String introduce;

    /** 靠近地铁 */
    @Excel(name = "靠近地铁")
    private Integer wayState;

    /** 地铁线路 */
    @Excel(name = "地铁线路")
    private String wayCode;

    /** 地铁距离 */
    @Excel(name = "地铁距离")
    private Integer waySpace;

    /** 经度 */
    @Excel(name = "经度")
    private Double lon;

    /** 纬度 */
    @Excel(name = "纬度")
    private Double lat;

    /** 状态 */
    @Excel(name = "状态")
    private Integer state;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setProvince(String province) 
    {
        this.province = province;
    }

    public String getProvince() 
    {
        return province;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setArea(String area) 
    {
        this.area = area;
    }

    public String getArea() 
    {
        return area;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setCode(String code) 
    {
        this.code = code;
    }

    public String getCode() 
    {
        return code;
    }
    public void setYear(Integer year) 
    {
        this.year = year;
    }

    public Integer getYear() 
    {
        return year;
    }
    public void setType(String type) 
    {
        this.type = type;
    }

    public String getType() 
    {
        return type;
    }
    public void setGreen(Double green) 
    {
        this.green = green;
    }

    public Double getGreen() 
    {
        return green;
    }
    public void setIntroduce(String introduce) 
    {
        this.introduce = introduce;
    }

    public String getIntroduce() 
    {
        return introduce;
    }
    public void setWayState(Integer wayState) 
    {
        this.wayState = wayState;
    }

    public Integer getWayState() 
    {
        return wayState;
    }
    public void setWayCode(String wayCode) 
    {
        this.wayCode = wayCode;
    }

    public String getWayCode() 
    {
        return wayCode;
    }
    public void setWaySpace(Integer waySpace) 
    {
        this.waySpace = waySpace;
    }

    public Integer getWaySpace() 
    {
        return waySpace;
    }
    public void setLon(Double lon) 
    {
        this.lon = lon;
    }

    public Double getLon() 
    {
        return lon;
    }
    public void setLat(Double lat) 
    {
        this.lat = lat;
    }

    public Double getLat() 
    {
        return lat;
    }
    public void setState(Integer state) 
    {
        this.state = state;
    }

    public Integer getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("province", getProvince())
            .append("city", getCity())
            .append("area", getArea())
            .append("name", getName())
            .append("code", getCode())
            .append("year", getYear())
            .append("type", getType())
            .append("green", getGreen())
            .append("introduce", getIntroduce())
            .append("wayState", getWayState())
            .append("wayCode", getWayCode())
            .append("waySpace", getWaySpace())
            .append("lon", getLon())
            .append("lat", getLat())
            .append("state", getState())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateTime", getUpdateTime())
            .append("updateBy", getUpdateBy())
            .append("remark", getRemark())
            .toString();
    }
}
