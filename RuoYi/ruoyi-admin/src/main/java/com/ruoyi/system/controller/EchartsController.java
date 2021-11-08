package com.ruoyi.system.controller;

import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.Tool;
import com.github.abel533.echarts.json.GsonOption;
import com.github.abel533.echarts.series.Line;
import com.ruoyi.system.domain.vo.IndexFlowModel;
import com.ruoyi.system.service.ISysFlowLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Description: echarts线图-Controller
 * @author: zy
 */
@Controller
@RequestMapping("/echarts")
public class EchartsController {


    @Autowired
    private ISysFlowLogService sysFlowLogService;

    /**
     * 折线图的 首页流量展示
     * @return
     */
    @GetMapping("/flowLine")
    @ResponseBody
    public String flowLine(){
        String title = "Last 7 days";
        String type = "IP";

        List<IndexFlowModel> indexFlowModelList = sysFlowLogService.getIndexFlowModelList();

        // 当天ip访问数
        String[] weeks = new String[7];
        Long[] datas = new Long[7];
        for (int i = 0; i < 7; i++) {
            weeks[i] = indexFlowModelList.get(i).getFlowDate();
            datas[i] = indexFlowModelList.get(i).getIpFlowDay();
        }
        Option option = new GsonOption();
        option.title().text(title).x("left");
        option.legend().data(type).x("center");
        option.tooltip().show(false);
        option.toolbox().show(false).feature(Tool.magicType,Tool.dataZoom);
        CategoryAxis categoryAxis = new CategoryAxis();
        categoryAxis.data(weeks);
        option.xAxis(categoryAxis);
        option.yAxis(new ValueAxis());
        //创建line对象
        Line line = new Line();
        line.name(type);
        for(int i = 0; i<datas.length;i++){
            line.data(datas[i]);
        }
        option.series(line);
        return option.toString();
    }
}
