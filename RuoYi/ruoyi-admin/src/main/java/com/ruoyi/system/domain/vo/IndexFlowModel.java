package com.ruoyi.system.domain.vo;

/**
 * @Description: 首页展示流量模型
 * @author: zy
 */
public class IndexFlowModel {

    // ip日流量
    private Long ipFlowDay;

    // ip周流量
    private Long ipFlowWeek;

    // ip月流量
    private Long ipFlowMonth;

    private Long uvFlowDay;

    private Long uvFlowWeek;

    private Long uvFlowMonth;

    private Long pvFlowDay;

    private Long pvFlowWeek;

    private Long pvFlowMonth;

    private String flowDate;

    public Long getIpFlowDay() {
        return ipFlowDay;
    }

    public void setIpFlowDay(Long ipFlowDay) {
        this.ipFlowDay = ipFlowDay;
    }

    public Long getIpFlowWeek() {
        return ipFlowWeek;
    }

    public void setIpFlowWeek(Long ipFlowWeek) {
        this.ipFlowWeek = ipFlowWeek;
    }

    public Long getIpFlowMonth() {
        return ipFlowMonth;
    }

    public void setIpFlowMonth(Long ipFlowMonth) {
        this.ipFlowMonth = ipFlowMonth;
    }

    public Long getUvFlowDay() {
        return uvFlowDay;
    }

    public void setUvFlowDay(Long uvFlowDay) {
        this.uvFlowDay = uvFlowDay;
    }

    public Long getUvFlowWeek() {
        return uvFlowWeek;
    }

    public void setUvFlowWeek(Long uvFlowWeek) {
        this.uvFlowWeek = uvFlowWeek;
    }

    public Long getUvFlowMonth() {
        return uvFlowMonth;
    }

    public void setUvFlowMonth(Long uvFlowMonth) {
        this.uvFlowMonth = uvFlowMonth;
    }

    public Long getPvFlowDay() {
        return pvFlowDay;
    }

    public void setPvFlowDay(Long pvFlowDay) {
        this.pvFlowDay = pvFlowDay;
    }

    public Long getPvFlowWeek() {
        return pvFlowWeek;
    }

    public void setPvFlowWeek(Long pvFlowWeek) {
        this.pvFlowWeek = pvFlowWeek;
    }

    public Long getPvFlowMonth() {
        return pvFlowMonth;
    }

    public void setPvFlowMonth(Long pvFlowMonth) {
        this.pvFlowMonth = pvFlowMonth;
    }

    public String getFlowDate() {
        return flowDate;
    }

    public void setFlowDate(String flowDate) {
        this.flowDate = flowDate;
    }
}
