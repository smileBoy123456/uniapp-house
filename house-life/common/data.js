//0.0.4版本起 返回结果将有两部分组成:
/*
{
	index:[],	//旧版本的下标数组形式
	value:[]	//菜单中的valve,结构和下标结果数组一样,只是把下标替换成了value而已
}
*/
// 以下演示数据中,我故意把value设置成跟name一样,只是为了方便演示,使示例更加易懂,实际使用时候value应该是一个标识,给后台识别所用的.
// 数据较长，请仔细查看。
export default [{
    "name": '位置',
    "type": 'hierarchy',
    "submenu": [{
                    "name": "不限",
                    "value": "不限"
                },{
                    "name": "500米",
                    "value": "500米"
                },
                {
                    "name": "1000米",
                    "value": "1000米"
                },
                {
                    "name": "2000米",
                    "value": "2000米"
                },
                {
                    "name": "5000米",
                    "value": "5000米"
                }]
},
    {
        "name": '方式',
        "type": 'hierarchy',
        "submenu": [
            {
                "name": "不限",
                "value": "不限"
            },
            {
                "name": "整租",
                "value": "整租"
            },
            {
                "name": "合租",
                "value": "合租"
            }
        ]
    },
    {
        "name": '租金',
        "type": 'hierarchy',
        "submenu": [
            {
                "name": "不限",
                "value": "不限"
            },
            {
                "name": "<1000元",
                "value": "<1000元"
            },
            {
                "name": "1000-1500元",
                "value": "1000-1500元"
            },
            {
                "name": "1500-2000元",
                "value": "1500-2000元"
            },
            {
                "name": "2000-3000元",
                "value": "2000-3000元"
            },
            {
                "name": "3000-4500元",
                "value": "3000-4500元"
            },
            {
                "name": ">4500元",
                "value": ">4500元"
            }
        ]
    },
    {
        name: '筛选',
        "type": 'filter',
        "submenu": [{
				"name": "户型",
				"submenu": [{
					"name": "一居",
					"value": "一居"
				},
				{
					"name": "二居",
					"value": "二居"
				},
				{
					"name": "三居",
					"value": "三居"
				},
				{
					"name": "四居",
					"value": "四居享"
				}
            ]
        },
            {
                "name": "朝向",
                "submenu": [
					{
                    "name": "东",
                    "value": "东",
					},
                    {
                        "name": "南",
                        "value": "南",
                    },
                    {
                        "name": "西",
                        "value": "西"
                    },
                    {
                        "name": "北",
                        "value": "北"
                    }
                ]
            },
            {
                "name": "房屋亮点",
                "submenu": [
					{
                    "name": "近地铁",
                    "value": "近地铁"
					},
					{
						"name": "独卫",
						"value": "独卫"
					},
					{
						"name": "独立阳台",
						"value": "独立阳台"
					},
					{
						"name": "精装修",
						"value": "精装修"
					},
					{
						"name": "可短租",
						"value": "可短租"
					},
					{
						"name": "首次出租",
						"value": "首次出租"
					},
					{
						"name": "免物业费",
						"value": "免物业费"
					},
					{
						"name": "民用水电",
						"value": "民用水电"
					},
                ]
            }
        ]
    }
]

