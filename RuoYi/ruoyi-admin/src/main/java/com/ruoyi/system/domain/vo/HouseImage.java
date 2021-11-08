package com.ruoyi.system.domain.vo;

/**
 * @Description: 房源图片
 * @author: zy
 * @date: 2021年07月19日 20:48
 */
public class HouseImage {

    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    private Long  houseId;

    private String imageName;

    private String imagePath;

    private String imageUrl;

    private String imageSize;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getImageSize() {
        return imageSize;
    }

    public void setImageSize(String imageSize) {
        this.imageSize = imageSize;
    }

    public Long getHouseId() {
        return houseId;
    }

    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }
}
