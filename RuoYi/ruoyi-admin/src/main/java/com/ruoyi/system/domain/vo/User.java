package com.ruoyi.system.domain.vo;

import com.ruoyi.system.domain.SysUser;

/**
 * @Description: 传递到前端的用户信息
 * @author: zy
 * @date: 2021年07月24日 13:19
 */
public class User {

    private String userName;

    private String phonenumber;

    private String remark;

    /** 用户头像 */
    private String avatar;

    public User(SysUser sysUser) {
        this.userName = sysUser.getUserName();
        this.phonenumber = sysUser.getPhonenumber();
        this.avatar = sysUser.getAvatar();
        this.remark = sysUser.getRemark();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getAvatar()
    {
        return avatar;
    }

    public void setAvatar(String avatar)
    {
        this.avatar = avatar;
    }

}
