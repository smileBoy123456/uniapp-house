package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目对象 project
 *
 * @author ruoyi
 * @date 2021-03-05
 */
public class Project extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String name;

    /** 项目简介 */
    @Excel(name = "项目简介")
    private String introduce;

    /** 团队介绍 */
    @Excel(name = "团队介绍")
    private String team;

    /** 项目联系人 */
    @Excel(name = "项目联系人")
    private String linkman;

    /** 官网链接 */
    @Excel(name = "官网链接")
    private String webLink;

    /** 朋友圈文案 */
    @Excel(name = "朋友圈文案")
    private String wechat;

    /** 活动链接 */
    @Excel(name = "活动链接")
    private String activityLink;

    /** 是否有募资需求 */
    @Excel(name = "是否有募资需求")
    private Integer raise;

    /** 是否有活跃群聊氛围需求 */
    @Excel(name = "是否有活跃群聊氛围需求")
    private Integer chat;

    /** 是否需要志愿者客服 */
    @Excel(name = "是否需要志愿者客服")
    private Integer volunteer;

    /** 转发任务 */
    @Excel(name = "转发任务")
    private String relay;

    /** 注册任务 */
    @Excel(name = "注册任务")
    private String register;

    /** 关注订阅任务 */
    @Excel(name = "关注订阅任务")
    private String follow;

    /** 进群和添加任务 */
    @Excel(name = "进群和添加任务")
    private String jointask;

    /** 其它任务（可自行提出任务需求） */
    @Excel(name = "其它任务", readConverterExp = "可=自行提出任务需求")
    private String other;

    /** null */
    private String filed1;

    /** null */
    private String filed2;

    /** null */
    private String filed3;

    /** IP地址 */
    private String ipAddress;

    private String logoName;

    private String logoPath;

    private String bookName;

    private String bookPath;

    private String reportName;

    private String reportPath;

    private String bannerName1;

    private String bannerPath1;

    private String bannerName2;

    private String bannerPath2;

    private String bannerName3;

    private String bannerPath3;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setIntroduce(String introduce)
    {
        this.introduce = introduce;
    }

    public String getIntroduce()
    {
        return introduce;
    }
    public void setTeam(String team)
    {
        this.team = team;
    }

    public String getTeam()
    {
        return team;
    }
    public void setLinkman(String linkman)
    {
        this.linkman = linkman;
    }

    public String getLinkman()
    {
        return linkman;
    }
    public void setWebLink(String webLink)
    {
        this.webLink = webLink;
    }

    public String getWebLink()
    {
        return webLink;
    }
    public void setWechat(String wechat)
    {
        this.wechat = wechat;
    }

    public String getWechat()
    {
        return wechat;
    }
    public void setActivityLink(String activityLink)
    {
        this.activityLink = activityLink;
    }

    public String getActivityLink()
    {
        return activityLink;
    }
    public void setRaise(Integer raise)
    {
        this.raise = raise;
    }

    public Integer getRaise()
    {
        return raise;
    }
    public void setChat(Integer chat)
    {
        this.chat = chat;
    }

    public Integer getChat()
    {
        return chat;
    }
    public void setVolunteer(Integer volunteer)
    {
        this.volunteer = volunteer;
    }

    public Integer getVolunteer()
    {
        return volunteer;
    }
    public void setRelay(String relay)
    {
        this.relay = relay;
    }

    public String getRelay()
    {
        return relay;
    }
    public void setRegister(String register)
    {
        this.register = register;
    }

    public String getRegister()
    {
        return register;
    }
    public void setFollow(String follow)
    {
        this.follow = follow;
    }

    public String getFollow()
    {
        return follow;
    }
    public void setJointask(String jointask)
    {
        this.jointask = jointask;
    }

    public String getJointask()
    {
        return jointask;
    }
    public void setOther(String other)
    {
        this.other = other;
    }

    public String getOther()
    {
        return other;
    }
    public void setFiled1(String filed1)
    {
        this.filed1 = filed1;
    }

    public String getFiled1()
    {
        return filed1;
    }
    public void setFiled2(String filed2)
    {
        this.filed2 = filed2;
    }

    public String getFiled2()
    {
        return filed2;
    }
    public void setFiled3(String filed3)
    {
        this.filed3 = filed3;
    }

    public String getFiled3()
    {
        return filed3;
    }
    public void setIpAddress(String ipAddress)
    {
        this.ipAddress = ipAddress;
    }

    public String getIpAddress()
    {
        return ipAddress;
    }

    public String getLogoName() {
        return logoName;
    }

    public void setLogoName(String logoName) {
        this.logoName = logoName;
    }

    public String getLogoPath() {
        return logoPath;
    }

    public void setLogoPath(String logoPath) {
        this.logoPath = logoPath;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookPath() {
        return bookPath;
    }

    public void setBookPath(String bookPath) {
        this.bookPath = bookPath;
    }

    public String getReportName() {
        return reportName;
    }

    public void setReportName(String reportName) {
        this.reportName = reportName;
    }

    public String getReportPath() {
        return reportPath;
    }

    public void setReportPath(String reportPath) {
        this.reportPath = reportPath;
    }

    public String getBannerName1() {
        return bannerName1;
    }

    public void setBannerName1(String bannerName1) {
        this.bannerName1 = bannerName1;
    }

    public String getBannerPath1() {
        return bannerPath1;
    }

    public void setBannerPath1(String bannerPath1) {
        this.bannerPath1 = bannerPath1;
    }

    public String getBannerName2() {
        return bannerName2;
    }

    public void setBannerName2(String bannerName2) {
        this.bannerName2 = bannerName2;
    }

    public String getBannerPath2() {
        return bannerPath2;
    }

    public void setBannerPath2(String bannerPath2) {
        this.bannerPath2 = bannerPath2;
    }

    public String getBannerName3() {
        return bannerName3;
    }

    public void setBannerName3(String bannerName3) {
        this.bannerName3 = bannerName3;
    }

    public String getBannerPath3() {
        return bannerPath3;
    }

    public void setBannerPath3(String bannerPath3) {
        this.bannerPath3 = bannerPath3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("introduce", getIntroduce())
            .append("team", getTeam())
            .append("linkman", getLinkman())
            .append("webLink", getWebLink())
            .append("wechat", getWechat())
            .append("activityLink", getActivityLink())
            .append("raise", getRaise())
            .append("chat", getChat())
            .append("volunteer", getVolunteer())
            .append("relay", getRelay())
            .append("register", getRegister())
            .append("follow", getFollow())
            .append("jointask", getJointask())
            .append("other", getOther())
            .append("filed1", getFiled1())
            .append("filed2", getFiled2())
            .append("filed3", getFiled3())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("ipAddress", getIpAddress())
            .append("remark", getRemark())
            .toString();
    }
}
