package com.ruoyi.system.domain.vo;

/**
 * @Description: 房源图片
 * @author: zy
 * @date: 2021年07月19日 20:48
 */
public class HouseFeature {

    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    private Long  houseId;

    private String feature;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getHouseId() {
        return houseId;
    }

    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }
}
