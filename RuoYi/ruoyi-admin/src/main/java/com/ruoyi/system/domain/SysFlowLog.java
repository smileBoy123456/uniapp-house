package com.ruoyi.system.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 流量统计对象 sys_flow_log
 *
 * @author ruoyi
 * @date 2021-04-07
 */
public class SysFlowLog extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long id;

    /** PV流量 */
    @Excel(name = "PV流量")
    private Long pvNum;

    /** UV流量 */
    @Excel(name = "UV流量")
    private Long uvNum;

    /** IP流量 */
    @Excel(name = "IP流量")
    private Long ipNum;

    /** 备用1 */
    @Excel(name = "备用1")
    private Long filed1;

    /** 备用2 */
    @Excel(name = "备用2")
    private Long filed2;

    /** 备用3 */
    @Excel(name = "备用3")
    private Long filed3;

    /*日志记录日期**/
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date flowDate;

    private String uvCode;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setPvNum(Long pvNum)
    {
        this.pvNum = pvNum;
    }

    public Long getPvNum()
    {
        return pvNum;
    }
    public void setUvNum(Long uvNum)
    {
        this.uvNum = uvNum;
    }

    public Long getUvNum()
    {
        return uvNum;
    }
    public void setIpNum(Long ipNum)
    {
        this.ipNum = ipNum;
    }

    public Long getIpNum()
    {
        return ipNum;
    }
    public void setFiled1(Long filed1)
    {
        this.filed1 = filed1;
    }

    public Long getFiled1()
    {
        return filed1;
    }
    public void setFiled2(Long filed2)
    {
        this.filed2 = filed2;
    }

    public Long getFiled2()
    {
        return filed2;
    }
    public void setFiled3(Long filed3)
    {
        this.filed3 = filed3;
    }

    public Long getFiled3()
    {
        return filed3;
    }

    public Date getFlowDate() {
        return flowDate;
    }

    public void setFlowDate(Date flowDate) {
        this.flowDate = flowDate;
    }

    public String getUvCode() {
        return uvCode;
    }

    public void setUvCode(String uvCode) {
        this.uvCode = uvCode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pvNum", getPvNum())
            .append("uvNum", getUvNum())
            .append("ipNum", getIpNum())
            .append("filed1", getFiled1())
            .append("filed2", getFiled2())
            .append("filed3", getFiled3())
            .append("remark", getRemark())
                .append("flowDate", getFlowDate())
            .toString();
    }
}
