package com.ruoyi.system.domain;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 任务表对象 project_task
 *
 * @author ruoyi
 * @date 2021-03-28
 */
public class ProjectTask extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    private Long id;

    /** 用户id */
    private Long userId;

    /** 项目id */
    private Long projectId;

    /** 项目名称 */
    @Excel(name = "项目名称")
    private String projectName;

    /** 任务单号 */
    @Excel(name = "任务单号")
    private String taskNo;

    /** 转发任务 */
    @Excel(name = "转发任务")
    private String relayName;

    /** 转发路径 */
    private String relayPath;

    /** 注册任务 */
    @Excel(name = "注册任务")
    private String registerName;

    /** 注册路径 */
    private String registerPath;

    /** 关注任务 */
    @Excel(name = "关注任务")
    private String followName;

    /** 关注路径 */
    private String followPath;

    /** 进群任务 */
    @Excel(name = "进群任务")
    private String addGroup;

    /** 进群路径 */
    private String addPath;

    /** 其他任务 */
    @Excel(name = "其他任务")
    private String otherName;

    /** 其他路径 */
    private String otherPath;

    /** 状态 0默认，1已审核 */
    @Excel(name = "状态 0默认，1已审核")
    private Integer status;

    /** IP地址 */
    private String ipAddress;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUserId(Long userId)
    {
        this.userId = userId;
    }

    public Long getUserId()
    {
        return userId;
    }
    public void setProjectId(Long projectId)
    {
        this.projectId = projectId;
    }

    public Long getProjectId()
    {
        return projectId;
    }
    public void setProjectName(String projectName)
    {
        this.projectName = projectName;
    }

    public String getProjectName()
    {
        return projectName;
    }
    public void setTaskNo(String taskNo)
    {
        this.taskNo = taskNo;
    }

    public String getTaskNo()
    {
        return taskNo;
    }
    public void setRelayName(String relayName)
    {
        this.relayName = relayName;
    }

    public String getRelayName()
    {
        return relayName;
    }
    public void setRelayPath(String relayPath)
    {
        this.relayPath = relayPath;
    }

    public String getRelayPath()
    {
        return relayPath;
    }
    public void setRegisterName(String registerName)
    {
        this.registerName = registerName;
    }

    public String getRegisterName()
    {
        return registerName;
    }
    public void setRegisterPath(String registerPath)
    {
        this.registerPath = registerPath;
    }

    public String getRegisterPath()
    {
        return registerPath;
    }
    public void setFollowName(String followName)
    {
        this.followName = followName;
    }

    public String getFollowName()
    {
        return followName;
    }
    public void setFollowPath(String followPath)
    {
        this.followPath = followPath;
    }

    public String getFollowPath()
    {
        return followPath;
    }
    public void setAddGroup(String addGroup)
    {
        this.addGroup = addGroup;
    }

    public String getAddGroup()
    {
        return addGroup;
    }
    public void setAddPath(String addPath)
    {
        this.addPath = addPath;
    }

    public String getAddPath()
    {
        return addPath;
    }
    public void setOtherName(String otherName)
    {
        this.otherName = otherName;
    }

    public String getOtherName()
    {
        return otherName;
    }
    public void setOtherPath(String otherPath)
    {
        this.otherPath = otherPath;
    }

    public String getOtherPath()
    {
        return otherPath;
    }
    public void setStatus(Integer status)
    {
        this.status = status;
    }

    public Integer getStatus()
    {
        return status;
    }
    public void setIpAddress(String ipAddress)
    {
        this.ipAddress = ipAddress;
    }

    public String getIpAddress()
    {
        return ipAddress;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("projectId", getProjectId())
            .append("projectName", getProjectName())
            .append("taskNo", getTaskNo())
            .append("relayName", getRelayName())
            .append("relayPath", getRelayPath())
            .append("registerName", getRegisterName())
            .append("registerPath", getRegisterPath())
            .append("followName", getFollowName())
            .append("followPath", getFollowPath())
            .append("addGroup", getAddGroup())
            .append("addPath", getAddPath())
            .append("otherName", getOtherName())
            .append("otherPath", getOtherPath())
            .append("status", getStatus())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("ipAddress", getIpAddress())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("remark", getRemark())
            .toString();
    }
}
