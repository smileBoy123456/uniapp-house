(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-search-searchList"],{"05ef":function(e,t,n){"use strict";(function(e){var i=n("4ea4");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var s=i(n("55a1")),a=i(n("78fb")),u={components:{filterDropdown:s.default},data:function(){return{indexArr:[],valueArr:[],defaultSelected:[],filterData:[],value1:1,value2:2,options1:[{label:"小于500米",value:1},{label:"小于1000米",value:2},{label:"小于2000米",value:3}],options2:[{label:"1000",value:1},{label:"2000",value:2}],pageNum:1,pageSize:20,scrollTop:0,houseList:[],loadStatus:"loadmore",flowList:[]}},onLoad:function(){var e=this;setTimeout((function(){e.filterData=a.default,e.defaultSelected=[[null],[null],[null],[null]]}),100),this.findHouseList()},onPageScroll:function(e){this.scrollTop=e.scrollTop},onReachBottom:function(){this.loadStatus="loading",this.findHouseList()},onPullDownRefresh:function(){this.pageNum=1,this.flowList=[],this.$refs.uWaterfall.clear(),this.findHouseList(),uni.stopPullDownRefresh()},methods:{findHouseList:function(){var t=this;e("log",this.pageNum," at pages/search/searchList.vue:118");var n="api/house/findHouseList";this.$u.get(n,{pageNum:this.pageNum,pageSize:this.pageSize,orderByColumn:"update_time,create_time",isAsc:"desc"}).then((function(e){if(t.pageNum>1&&e.length<t.pageSize)return t.loadStatus="nomore";t.houseList=e;for(var n=0;n<t.houseList.length;n++){var i=t.houseList[n];i.image=i.faceUrl,0==i.type?i.type="整租":1==i.type&&(i.type="合租"),1==i.roomType?i.roomType="主卧":2==i.roomType?i.roomType="次卧":i.roomType="未知",t.$u.test.isEmpty(i.houseNum)&&(i.houseNum=""),t.$u.test.isEmpty(i.houseHall)&&(i.houseHall=""),t.$u.test.isEmpty(i.toiletNum)&&(i.toiletNum=""),t.$u.test.isEmpty(i.floor)?i.floor="":i.floor=i.floor+"层",t.flowList.push(i)}++t.pageNum,t.loadStatus="loadmore"}))},clickImage:function(e){this.$u.route({url:"/pages/detail/detail",params:{houseId:e}})},confirm:function(t){this.indexArr=t.index,e("log",this.indexArr," at pages/search/searchList.vue:178"),this.valueArr=t.value,e("log",this.valueArr," at pages/search/searchList.vue:180"),e("log",t," at pages/search/searchList.vue:181")},code:function(){this.$mytip.toast("请咨询技术支持")}}};t.default=u}).call(this,n("0de9")["log"])},2086:function(e,t,n){"use strict";n.r(t);var i=n("5296"),s=n("9e65");for(var a in s)"default"!==a&&function(e){n.d(t,e,(function(){return s[e]}))}(a);n("2438");var u,r=n("f0c5"),o=Object(r["a"])(s["default"],i["b"],i["c"],!1,null,"60df715b",null,!1,i["a"],u);t["default"]=o.exports},2438:function(e,t,n){"use strict";var i=n("8fa1"),s=n.n(i);s.a},"404d":function(e,t,n){"use strict";n.r(t);var i=n("d850"),s=n.n(i);for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);t["default"]=s.a},"4e1b":function(e,t,n){"use strict";var i;n.d(t,"b",(function(){return s})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return i}));var s=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{},[n("v-uni-view",{staticClass:"u-sticky-wrap",class:[e.elClass],style:{height:e.fixed?e.height+"px":"auto",backgroundColor:e.bgColor}},[n("v-uni-view",{staticClass:"u-sticky",style:{position:e.fixed?"fixed":"static",top:e.stickyTop+"px",left:e.left+"px",width:"auto"==e.width?"auto":e.width+"px",zIndex:e.uZIndex}},[e._t("default")],2)],1)],1)},a=[]},5296:function(e,t,n){"use strict";n.d(t,"b",(function(){return s})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return i}));var i={uSticky:n("dbb5").default,uWaterfall:n("4bdd").default,uLazyLoad:n("8088").default,uLoadmore:n("072c").default,uBackTop:n("fd79").default,uNoNetwork:n("1962").default},s=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",[n("u-sticky",{attrs:{"offset-top":"0"}},[n("v-uni-view",{staticClass:"sticky"},[n("filterDropdown",{attrs:{menuTop:0,filterData:e.filterData,defaultSelected:e.defaultSelected,updateMenuName:!0,dataFormat:"Object"},on:{confirm:function(t){arguments[0]=t=e.$handleEvent(t),e.confirm.apply(void 0,arguments)}}})],1)],1),n("v-uni-view",{staticClass:"u-p-l-10 u-p-r-10 waterfall"},[n("u-waterfall",{ref:"uWaterfall",scopedSlots:e._u([{key:"left",fn:function(t){var i=t.leftList;return e._l(i,(function(t,i){return n("v-uni-view",{key:i,staticClass:"demo-warter"},[n("u-lazy-load",{attrs:{threshold:"300","border-radius":"12",image:t.image,index:i},on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.clickImage(t.id)}}}),n("v-uni-view",{staticClass:"item-title"},[e._v(e._s(t.villageName)+" "+e._s("整租"==t.type?t.houseNum+t.houseHall+t.toiletNum:t.roomType+"-朝"+t.direction))]),n("v-uni-view",{staticClass:"item-price"},[e._v("￥"+e._s(t.price))]),n("v-uni-view",{staticClass:"item-desc"},[e._v(e._s(t.type)+" | "+e._s("整租"==t.type?t.houseArea:t.roomArea)+"㎡ "+e._s(t.floor))])],1)}))}},{key:"right",fn:function(t){var i=t.rightList;return e._l(i,(function(t,i){return n("v-uni-view",{key:i,staticClass:"demo-warter"},[n("u-lazy-load",{attrs:{threshold:"-450","border-radius":"10",image:t.image,index:i},on:{click:function(n){arguments[0]=n=e.$handleEvent(n),e.clickImage(t.id)}}}),n("v-uni-view",{staticClass:"item-title"},[e._v(e._s(t.villageName)+" "+e._s("整租"==t.type?t.houseNum+t.houseHall+t.toiletNum:t.roomType+"-朝"+t.direction))]),n("v-uni-view",{staticClass:"item-price"},[e._v("￥"+e._s(t.price))]),n("v-uni-view",{staticClass:"item-desc"},[e._v(e._s(t.type)+" | "+e._s("整租"==t.type?t.houseArea:t.roomArea)+"㎡ "+e._s(t.floor))])],1)}))}}]),model:{value:e.flowList,callback:function(t){e.flowList=t},expression:"flowList"}}),n("u-loadmore",{attrs:{"bg-color":"rgb(240, 240, 240)",status:e.loadStatus},on:{loadmore:function(t){arguments[0]=t=e.$handleEvent(t),e.findHouseList.apply(void 0,arguments)}}}),n("u-back-top",{attrs:{"scroll-top":e.scrollTop,top:"1000"}}),n("u-no-network")],1)],1)},a=[]},"545c":function(e,t,n){"use strict";var i=n("58dc"),s=n.n(i);s.a},"55a1":function(e,t,n){"use strict";n.r(t);var i=n("b204"),s=n("edd8");for(var a in s)"default"!==a&&function(e){n.d(t,e,(function(){return s[e]}))}(a);n("d43b");var u,r=n("f0c5"),o=Object(r["a"])(s["default"],i["b"],i["c"],!1,null,"0c4bbdfc",null,!1,i["a"],u);t["default"]=o.exports},"58dc":function(e,t,n){var i=n("8ed2");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var s=n("4f06").default;s("124f0d22",i,!0,{sourceMap:!1,shadowMode:!1})},"597e":function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\r\n/**\r\n * 下方引入的为uView UI的集成样式文件，为scss预处理器，其中包含了一些"u-"开头的自定义变量\r\n * uView自定义的css类名和scss变量，均以"u-"开头，不会造成冲突，请放心使用 \r\n */.HMfilterDropdown[data-v-0c4bbdfc]{flex-shrink:0;width:100%;position:absolute;z-index:997;flex-wrap:nowrap;display:flex;flex-direction:row;top:var(--window-top);overflow-y:hidden}.HMfilterDropdown.setDropdownBottom[data-v-0c4bbdfc]{height:%?1500?%}.HMfilterDropdown uni-view[data-v-0c4bbdfc]{display:flex;flex-wrap:nowrap}.region[data-v-0c4bbdfc]{flex:1;height:44px}.nav[data-v-0c4bbdfc]{width:100%;height:44px;border-bottom:solid %?1?% #eee;z-index:12;background-color:#fff;flex-direction:row}.nav .first-menu[data-v-0c4bbdfc]{width:100%;font-size:15px;color:#757575;flex-direction:row;align-items:center;justify-content:center;transition:color .2s linear}.nav .first-menu.on[data-v-0c4bbdfc]{color:#ec652b}.nav .first-menu.on .iconfont[data-v-0c4bbdfc]{color:#ec652b}.nav .first-menu .name[data-v-0c4bbdfc]{height:20px;text-align:center;text-overflow:clip;overflow:hidden}.nav .first-menu .iconfont[data-v-0c4bbdfc]{width:13px;height:13px;align-items:center;justify-content:center;transition:color .2s linear,-webkit-transform .2s linear;transition:transform .2s linear,color .2s linear;transition:transform .2s linear,color .2s linear,-webkit-transform .2s linear}.sub-menu-class[data-v-0c4bbdfc]{width:100%;position:absolute;left:0;-webkit-transform:translate3d(0,-100%,0);transform:translate3d(0,-100%,0);max-height:345px;background-color:#fff;z-index:11;box-shadow:0 5px 5px rgba(0,0,0,.1);overflow:hidden;flex-direction:row;transition:-webkit-transform .15s linear;transition:transform .15s linear;transition:transform .15s linear,-webkit-transform .15s linear}.sub-menu-class.hide[data-v-0c4bbdfc]{display:none}.sub-menu-class.show[data-v-0c4bbdfc]{-webkit-transform:translate3d(0,calc(44px + %?1?%),0);transform:translate3d(0,calc(44px + %?1?%),0)}.sub-menu-list[data-v-0c4bbdfc]{width:100%;height:345px;flex-direction:column}.sub-menu-list .sub-menu[data-v-0c4bbdfc]{min-height:44px;font-size:13px;flex-direction:column;padding-right:15px}.sub-menu-list .sub-menu > .menu-name[data-v-0c4bbdfc]{padding-left:20px;height:44px;flex-direction:row;align-items:center;justify-content:space-between}.sub-menu-list .sub-menu > .menu-name > .iconfont[data-v-0c4bbdfc]{display:none;font-size:18px;color:#ec652b}.sub-menu-list.first[data-v-0c4bbdfc]{flex-shrink:0;width:%?236?%;background-color:#f0f0f0}.sub-menu-list.first .sub-menu[data-v-0c4bbdfc]{padding-left:15px}.sub-menu-list.first .sub-menu.on[data-v-0c4bbdfc]{background-color:#fff}.sub-menu-list.alone[data-v-0c4bbdfc]{max-height:345px;min-height:170px;height:auto}.sub-menu-list.alone .sub-menu[data-v-0c4bbdfc]{min-height:calc(44px - %?1?%);margin-left:15px;border-bottom:solid %?1?% #e5e5e5}.sub-menu-list.alone .sub-menu.on[data-v-0c4bbdfc]{color:#ec652b}.sub-menu-list.alone .sub-menu.on > .menu-name > .iconfont[data-v-0c4bbdfc]{display:block}.sub-menu-list.not-first .sub-menu[data-v-0c4bbdfc]{min-height:calc(44px - %?1?%);margin-left:15px;border-bottom:solid %?1?% #e5e5e5}.sub-menu-list.not-first .sub-menu > .menu-name[data-v-0c4bbdfc]{height:calc(44px - %?1?%)}.sub-menu-list.not-first .sub-menu > .menu-name > .iconfont[data-v-0c4bbdfc]{display:none;font-size:18px;color:#ec652b}.sub-menu-list.not-first .sub-menu.on[data-v-0c4bbdfc]{color:#ec652b}.sub-menu-list.not-first .sub-menu.on > .menu-name > .iconfont[data-v-0c4bbdfc]{display:block}.sub-menu-list.not-first .sub-menu .more-sub-menu[data-v-0c4bbdfc]{flex-direction:row;flex-wrap:wrap;padding-bottom:9px}.sub-menu-list.not-first .sub-menu .more-sub-menu > uni-text[data-v-0c4bbdfc]{height:30px;border-radius:3px;background-color:#f5f5f5;color:#9b9b9b;margin-bottom:6px;margin-right:6px;text-align:center;line-height:30px;border:solid #f5f5f5 %?1?%;flex:0 0 calc(33.33% - 6px);overflow:hidden;font-size:12px}.sub-menu-list.not-first .sub-menu .more-sub-menu > uni-text[data-v-0c4bbdfc]:nth-child(3n){margin-right:0}.sub-menu-list.not-first .sub-menu .more-sub-menu > uni-text.on[data-v-0c4bbdfc]{border-color:#f6c8ac;color:#ec652b}.sub-menu-list.not-first .sub-menu .more-sub-menu > uni-text .iconfont[data-v-0c4bbdfc]{color:#9b9b9b}.filter[data-v-0c4bbdfc]{width:100%;height:345px;display:flex;flex-direction:column;justify-content:space-between;align-items:center}.filter .menu-box[data-v-0c4bbdfc]{width:%?698?%;height:calc(345px - 75px);flex-shrink:1}.filter .menu-box .box[data-v-0c4bbdfc]{width:100%;margin-top:16px;flex-direction:column}.filter .menu-box .box .title[data-v-0c4bbdfc]{width:100%;font-size:13px;color:#888}.filter .menu-box .box .labels[data-v-0c4bbdfc]{flex-direction:row;flex-wrap:wrap}.filter .menu-box .box .labels .on[data-v-0c4bbdfc]{border-color:#ec652b;background-color:#ec652b;color:#fff}.filter .menu-box .box .labels > uni-view[data-v-0c4bbdfc]{width:%?148?%;height:30px;border:solid %?1?% #adadad;border-radius:2px;margin-right:15px;margin-top:8px;font-size:12px;flex-direction:row;justify-content:center;align-items:center}.filter .menu-box .box .labels > uni-view[data-v-0c4bbdfc]:nth-child(4n){margin-right:0}.filter .btn-box[data-v-0c4bbdfc]{flex-shrink:0;width:%?698?%;height:75px;flex-direction:row!important;align-items:center;justify-content:space-between}.filter .btn-box > uni-view[data-v-0c4bbdfc]{width:%?320?%;height:40px;border-radius:40px;border:%?2?% solid #ec652b;align-items:center;justify-content:center}.filter .btn-box .reset[data-v-0c4bbdfc]{color:#ec652b}.filter .btn-box .submit[data-v-0c4bbdfc]{color:#fff;background-color:#ec652b}.mask[data-v-0c4bbdfc]{z-index:10;position:fixed;top:0;left:0;right:0;bottom:0;background-color:transparent;transition:background-color .15s linear}.mask.show[data-v-0c4bbdfc]{background-color:rgba(0,0,0,.5)}.mask.hide[data-v-0c4bbdfc]{display:none}\r\n/* 字体图标 */@font-face{font-family:HM-FD-font;src:url("data:application/x-font-woff2;charset=utf-8;base64,d09GMgABAAAAAALAAAsAAAAABpQAAAJzAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHEIGVgCDBgp4gQIBNgIkAwwLCAAEIAWEbQc5G8sFERWMIbIfCbbzqA4hp7InSBibVsYGb4J42o82b3e/nJlHMw/NHbGOlwKJRCRpwzPtpAECCOZubdqxjYpQLMlVg+70/08edrgQOtx2ukpVyApZn+dyehPoQObHo3O85rYx9vOjXoBxQIHugW2yIkqIW2QXcScu4jwE8CSWbKSmrqUHFwOaJoCsLM5P4haSGIxRcRHshrUGucLCVcfqI3AZfV/+USguKCwNmtsxVztDxU/n55C+3W0Z4QQpEOTNFqCBbMCAjDUWB9CIwWk87aa70cYgqLkyd3dEmm+18R8eKATEBrV7A5CulBT8dKiWOYZk412XNcDdKSEKSGODnyKIDl+dmVt9/Dx4pu/xyeutkMlHISGPTsPCnoTNP9nOT6wTtDdlO6dPr47efvj942lkYuQzrhMKEjq9N6y98P3340gmlJ/RStUD6F31CAEEPtUW94/7rf+7XgaAz57X0ZHXAGsFFwVgw38yALuMb0IBbVyNamFYEw4oKMDTj3AHRQP5Pt4dci9VwSVkRNQh5r7CLskZadhsWHhRDBsXczk8ZYk3ewnCxmQeQKa3BOHvA8XXO2j+vqRhf7CE+sPmn4anvoL29JLa4qqaUQkmoK+QG2osCckq7txi2leK86aIPyJ3eQZ8xytXYmyQ51jQndJAxIJlqiGSLsOqImiZCjTiZCJt6Lq26U2OoXqwUo0hRaAE0K5AziANy/uLVeXzWyjVqyjcoeupjxDr5MMDn8MDkLG9Aenu5ZrOSSoghAUsRmogkkahSoWAtnlUARnCkY3It0Iu7mWhdmd9Z/19BwBP6GidEi0G56opckXTGZVSPxgAAAA=")}.iconfont[data-v-0c4bbdfc]{font-family:HM-FD-font!important;font-size:13px;font-style:normal;color:#757575}.iconfont.triangle[data-v-0c4bbdfc]:before{content:"\\e65a"}.iconfont.selected[data-v-0c4bbdfc]:before{content:"\\e607"}',""]),e.exports=t},"78a4":function(e,t,n){var i=n("597e");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var s=n("4f06").default;s("044d2c3c",i,!0,{sourceMap:!1,shadowMode:!1})},"78fb":function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i=[{name:"位置",type:"hierarchy",submenu:[{name:"不限",value:"不限"},{name:"500米",value:"500米"},{name:"1000米",value:"1000米"},{name:"2000米",value:"2000米"},{name:"5000米",value:"5000米"}]},{name:"方式",type:"hierarchy",submenu:[{name:"不限",value:"不限"},{name:"整租",value:"整租"},{name:"合租",value:"合租"}]},{name:"租金",type:"hierarchy",submenu:[{name:"不限",value:"不限"},{name:"<1000元",value:"<1000元"},{name:"1000-1500元",value:"1000-1500元"},{name:"1500-2000元",value:"1500-2000元"},{name:"2000-3000元",value:"2000-3000元"},{name:"3000-4500元",value:"3000-4500元"},{name:">4500元",value:">4500元"}]},{name:"筛选",type:"filter",submenu:[{name:"户型",submenu:[{name:"一居",value:"一居"},{name:"二居",value:"二居"},{name:"三居",value:"三居"},{name:"四居",value:"四居享"}]},{name:"朝向",submenu:[{name:"东",value:"东"},{name:"南",value:"南"},{name:"西",value:"西"},{name:"北",value:"北"}]},{name:"房屋亮点",submenu:[{name:"近地铁",value:"近地铁"},{name:"独卫",value:"独卫"},{name:"独立阳台",value:"独立阳台"},{name:"精装修",value:"精装修"},{name:"可短租",value:"可短租"},{name:"首次出租",value:"首次出租"},{name:"免物业费",value:"免物业费"},{name:"民用水电",value:"民用水电"}]}]}];t.default=i},"8b71":function(e,t,n){"use strict";n("4160"),n("c975"),n("4e82"),n("a434"),n("a9e3"),n("e25e"),n("159b"),Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i={data:function(){return{subData:[],menu:[],showPage:-1,pageState:[],activeMenuArr:[],shadowActiveMenuArr:[],defaultActive:[],triangleDeg:[],isShowMask:!1,maskVisibility:!1,firstScrollInto:0,secondScrollInto:0,componentTop:0,isReadNewSelect:!1}},props:{menuTop:{value:Number,default:!1},filterData:{value:Array,default:[]},defaultSelected:{value:Array,default:[]},updateMenuName:{value:Boolean,default:!0},dataFormat:{value:String,default:"Array"}},watch:{filterData:{handler:function(){this.initMenu()},immediate:!0},defaultSelected:function(e){0!=e.length&&(this.defaultActive=JSON.parse(JSON.stringify(e)),this.activeMenuArr=JSON.parse(JSON.stringify(e)),this.shadowActiveMenuArr=JSON.parse(JSON.stringify(e)),this.updateMenuName&&this.setMenuName())}},methods:{initMenu:function(){for(var e=[],t=[],n=0;n<this.filterData.length;n++){var i=this.filterData[n];t.push({name:i.name||("filter"==i.type?"筛选":i.submenu[0].name),type:i.type}),e.push(this.processActive(i)),this.triangleDeg.push(0),this.pageState.push(!1),i=this.processSubMenu(i),this.filterData[n]=i}this.menu=t,e=this.defaultActive.length>0?this.defaultActive:this.activeMenuArr.length>0?this.activeMenuArr:e,this.defaultActive=[],this.activeMenuArr=JSON.parse(JSON.stringify(e)),this.shadowActiveMenuArr=JSON.parse(JSON.stringify(e)),this.subData=this.filterData,this.updateMenuName&&this.setMenuName()},setMenuName:function(){for(var e=0;e<this.activeMenuArr.length;e++){var t=this.activeMenuArr[e];if("hierarchy"==this.subData[e].type)if("number"==typeof t[0]){var n=this.subData[e].submenu[t[0]];t.length>1&&(n=n.submenu[t[1]],t.length>2&&(n=n.submenu[t[2]])),this.menu[e].name=n.name}else this.menu[e].name=this.subData[e].name}},showMoreSub:function(e){this.subData[this.showPage].submenu[this.activeMenuArr[this.showPage][0]].submenu[e].showAllSub=!0,this.$forceUpdate()},selectHierarchyMenu:function(e,t,n,i){if(null!=t&&null==n&&null==i&&this.shadowActiveMenuArr[e][0]==t?this.activeMenuArr.splice(e,1,JSON.parse(JSON.stringify(this.shadowActiveMenuArr[e]))):(this.activeMenuArr[e].splice(0,1,t),(null!=n||this.activeMenuArr[e].length>=2)&&this.activeMenuArr[e].splice(1,1,n)||this.activeMenuArr[e].splice(1,1),(null!=i||this.activeMenuArr[e].length>=3)&&this.activeMenuArr[e].splice(2,1,i)||this.activeMenuArr[e].splice(2,1)),null!=i||null!=n||null!=t&&0==this.subData[e].submenu[t].submenu.length){var s=this.subData[e].submenu[t].submenu[n];this.updateMenuName&&(this.menu[e].name=null!=i&&s.submenu[i].name||null!=n&&s.name||this.subData[e].submenu[t].name),this.shadowActiveMenuArr[e]=JSON.parse(JSON.stringify(this.activeMenuArr[e])),this.togglePage(this.showPage)}},setFilterData:function(e){this.shadowActiveMenuArr[e]=JSON.parse(JSON.stringify(this.activeMenuArr[e])),this.togglePage(this.showPage)},resetFilterData:function(e){var t=[],n=this.shadowActiveMenuArr[e].length;while(n>0){t.push([]);for(var i=this.subData[e].submenu[n-1].submenu,s=0;s<i.length;s++)this.subData[e].submenu[n-1].submenu[s].selected=!1;n--}this.activeMenuArr[e]=JSON.parse(JSON.stringify(t)),this.$forceUpdate()},selectFilterLabel:function(e,t,n){var i=this.activeMenuArr[e][t].indexOf(n);i>-1?(this.activeMenuArr[e][t].splice(i,1),this.subData[e].submenu[t].submenu[n].selected=!1):(this.activeMenuArr[e][t].push(n),this.subData[e].submenu[t].submenu[n].selected=!0),this.$forceUpdate()},selectRadioLabel:function(e,t,n){var i=this.activeMenuArr[e][t][0];i==n?(this.subData[e].submenu[t].submenu[i].selected=!1,this.activeMenuArr[e][t][0]=null):(null!=i&&i<this.subData[e].submenu[t].submenu.length&&(this.subData[e].submenu[t].submenu[i].selected=!1),this.subData[e].submenu[t].submenu[n].selected=!0,this.activeMenuArr[e][t][0]=n),this.$forceUpdate()},togglePage:function(e){e==this.showPage?(this.hidePageLayer(!0),this.hideMask(),this.showPage=-1):(this.showPage>-1&&this.hidePageLayer(!1),this.showPageLayer(e),this.showMask())},hideMask:function(){var e=this;this.isShowMask=!1,setTimeout((function(){e.maskVisibility=!1}),200)},showMask:function(){var e=this;this.maskVisibility=!0,this.$nextTick((function(){setTimeout((function(){e.isShowMask=!0}),0)}))},hidePageLayer:function(e){var t=this;this.triangleDeg[this.showPage]=0;var n=this.showPage;e?(setTimeout((function(){t.pageState.splice(n,1,!1)}),200),this.confirm()):this.pageState.splice(n,1,!1),this.firstScrollInto=null,this.secondScrollInto=null},confirm:function(){var e=this,t=JSON.parse(JSON.stringify(this.shadowActiveMenuArr)),n=JSON.parse(JSON.stringify(this.shadowActiveMenuArr));t.forEach((function(i,s){if("object"==typeof i[0])i.forEach((function(a,u){null!=a&&(a.sort((function(e,t){return e-t})),i[u]=a,a.forEach((function(i,a){n[s][u][a]=null==i||i>=e.subData[s].submenu[u].submenu.length?null:e.subData[s].submenu[u].submenu[i].value,"radio"==e.subData[s].type&&null==n[s][u][a]&&(n[s][u]=[],t[s][u]=[])})))}));else{var a=e.subData[s].submenu[i[0]];n[s][0]=a.value,n[s].length>=2&&null!=i[1]&&(a.submenu.length>0?(a=a.submenu[i[1]],n[s][1]=a.hasOwnProperty("value")?a.value:null):n[s][1]=null,n[s].length>=3&&null!=i[2]&&(a.submenu.length>0?(a=a.submenu[i[2]],n[s][2]=a.hasOwnProperty("value")?a.value:null):n[s][2]=null))}t[s]=i})),this.$emit("confirm",{index:t,value:n})},showPageLayer:function(e){var t=this;this.processPage(e),this.pageState.splice(e,1,!0),this.$nextTick((function(){setTimeout((function(){t.showPage=e}),0)})),this.triangleDeg[e]=180},reloadActiveMenuArr:function(){for(var e=0;e<this.filterData.length;e++){var t=this.filterData[e],n=this.processActive(t);t=this.processSubMenu(t),this.activeMenuArr[e].length!=n.length&&(this.filterData[e]=t,this.activeMenuArr.splice(e,1,JSON.parse(JSON.stringify(n))),this.shadowActiveMenuArr.splice(e,1,JSON.parse(JSON.stringify(n))))}this.subData=this.filterData,this.$forceUpdate()},processPage:function(e){var t=this;if(this.reloadActiveMenuArr(),this.activeMenuArr.splice(e,1,JSON.parse(JSON.stringify(this.shadowActiveMenuArr[e]))),"filter"==this.menu[e].type)for(var n=this.shadowActiveMenuArr[e].length,i=0;i<n;i++)for(var s=this.subData[e].submenu[i].submenu,a=0;a<s.length;a++)this.shadowActiveMenuArr[e][i].indexOf(a)>-1?this.subData[e].submenu[i].submenu[a].selected=!0:this.subData[e].submenu[i].submenu[a].selected=!1;else if("hierarchy"==this.menu[e].type)this.$nextTick((function(){setTimeout((function(){t.firstScrollInto=parseInt(t.activeMenuArr[e][0]),t.secondScrollInto=parseInt(t.activeMenuArr[e][1])}),0)}));else if("radio"==this.menu[e].type)for(var u=this.shadowActiveMenuArr[e].length,r=0;r<u;r++)for(var o=this.subData[e].submenu[r].submenu,l=0;l<o.length;l++)this.shadowActiveMenuArr[e][r].indexOf(l)>-1?this.subData[e].submenu[r].submenu[l].selected=!0:this.subData[e].submenu[r].submenu[l].selected=!1},processActive:function(e){var t=[];if("hierarchy"==e.type&&e.hasOwnProperty("submenu")&&e.submenu.length>0){var n=this.getMaxFloor(e.submenu);while(n>0)t.push(null),n--}else if("filter"==e.type){var i=e.submenu.length;while(i>0)t.push([]),i--}else if("radio"==e.type){var s=e.submenu.length;while(s>0)t.push([]),s--}return t},processSubMenu:function(e){if(e.hasOwnProperty("submenu")&&e.submenu.length>0)for(var t=0;t<e.submenu.length;t++)e.submenu[t]=this.processSubMenu(e.submenu[t]);else e.submenu=[];return e},getMaxFloor:function(e){var t=0;function n(e,i){e.forEach((function(e){t=i>t?i:t,e.hasOwnProperty("submenu")&&e.submenu.length>0&&n(e.submenu,i+1)}))}return n(e,1),t},discard:function(){}}};t.default=i},"8ed2":function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\r\n/**\r\n * 下方引入的为uView UI的集成样式文件，为scss预处理器，其中包含了一些"u-"开头的自定义变量\r\n * uView自定义的css类名和scss变量，均以"u-"开头，不会造成冲突，请放心使用 \r\n */.u-sticky[data-v-31e37409]{z-index:9999999999}',""]),e.exports=t},"8fa1":function(e,t,n){var i=n("f0cc");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var s=n("4f06").default;s("0fc16ebc",i,!0,{sourceMap:!1,shadowMode:!1})},"9e65":function(e,t,n){"use strict";n.r(t);var i=n("05ef"),s=n.n(i);for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);t["default"]=s.a},b204:function(e,t,n){"use strict";var i;n.d(t,"b",(function(){return s})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return i}));var s=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{staticClass:"HMfilterDropdown",class:{setDropdownBottom:e.maskVisibility},style:{top:e.menuTop+"rpx"},on:{touchmove:function(t){t.stopPropagation(),t.preventDefault(),arguments[0]=t=e.$handleEvent(t),e.discard.apply(void 0,arguments)},click:function(t){t.stopPropagation(),arguments[0]=t=e.$handleEvent(t),e.discard.apply(void 0,arguments)}}},[n("v-uni-view",{staticClass:"nav"},[e._l(e.menu,(function(t,i){return[n("v-uni-view",{key:i+"_0",staticClass:"first-menu",class:{on:e.showPage==i},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.togglePage(i)}}},[n("v-uni-text",{staticClass:"name"},[e._v(e._s(t.name))]),n("v-uni-text",{staticClass:"iconfont triangle",style:"transform:rotate("+e.triangleDeg[i]+"deg);"})],1)]}))],2),n("v-uni-view",{staticClass:"mask",class:{show:e.isShowMask,hide:1!=e.maskVisibility},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.togglePage(e.showPage)}}}),e._l(e.subData,(function(t,i){return[n("v-uni-view",{key:i+"_0",staticClass:"sub-menu-class",class:{show:e.showPage==i,hide:1!=e.pageState[i]}},["hierarchy"==t.type&&t.submenu.length>0?[n("v-uni-scroll-view",{staticClass:"sub-menu-list",class:[e.activeMenuArr[i].length>1?"first":"alone"],attrs:{"scroll-y":!0,"scroll-into-view":"first_id"+e.firstScrollInto}},[e._l(t.submenu,(function(t,s){return[n("v-uni-view",{key:s+"_0",staticClass:"sub-menu",class:{on:e.activeMenuArr[i][0]==s},attrs:{id:"first_id"+s},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.selectHierarchyMenu(i,s,null,null)}}},[n("v-uni-view",{staticClass:"menu-name"},[n("v-uni-text",[e._v(e._s(t.name))]),n("v-uni-text",{staticClass:"iconfont selected"})],1)],1)]}))],2),e._l(t.submenu,(function(t,s){return[e.activeMenuArr[i][0]==s&&t.submenu.length>0?n("v-uni-scroll-view",{key:s+"_0",staticClass:"sub-menu-list not-first",attrs:{"scroll-y":!0,"scroll-into-view":"second_id"+e.secondScrollInto}},[e._l(t.submenu,(function(s,a){return[n("v-uni-view",{key:a+"_0",staticClass:"sub-menu",class:{on:e.activeMenuArr[i][1]==a},attrs:{id:"second_id"+a}},[n("v-uni-view",{staticClass:"menu-name",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.selectHierarchyMenu(i,e.activeMenuArr[i][0],a,null)}}},[n("v-uni-text",[e._v(e._s(s.name))]),n("v-uni-text",{staticClass:"iconfont selected"})],1),s.submenu&&t.submenu.length>0&&s.submenu.length>0?n("v-uni-view",{staticClass:"more-sub-menu"},[e._l(s.submenu,(function(t,u){return[s.showAllSub||u<8?n("v-uni-text",{key:u+"_0",class:{on:e.activeMenuArr[i][1]==a&&e.activeMenuArr[i][2]==u},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.selectHierarchyMenu(i,e.activeMenuArr[i][0],a,u)}}},[e._v(e._s(t.name))]):e._e(),1!=s.showAllSub&&8==u&&s.submenu.length>9?n("v-uni-text",{key:u+"_1",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.showMoreSub(a)}}},[e._v("更多"),n("v-uni-text",{staticClass:"iconfont triangle"})],1):e._e()]}))],2):e._e()],1)]}))],2):e._e()]}))]:e._e(),"filter"==t.type?[n("v-uni-view",{staticClass:"filter"},[n("v-uni-scroll-view",{staticClass:"menu-box",attrs:{"scroll-y":!0}},e._l(t.submenu,(function(t,s){return n("v-uni-view",{key:s,staticClass:"box"},[n("v-uni-view",{staticClass:"title"},[e._v(e._s(t.name))]),n("v-uni-view",{staticClass:"labels"},e._l(t.submenu,(function(t,a){return n("v-uni-view",{key:a,class:{on:t.selected},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.selectFilterLabel(i,s,a)}}},[e._v(e._s(t.name))])})),1)],1)})),1),n("v-uni-view",{staticClass:"btn-box"},[n("v-uni-view",{staticClass:"reset",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.resetFilterData(i)}}},[e._v("重置")]),n("v-uni-view",{staticClass:"submit",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.setFilterData(i)}}},[e._v("确定")])],1)],1)]:e._e(),"radio"==t.type?[n("v-uni-view",{staticClass:"filter"},[n("v-uni-scroll-view",{staticClass:"menu-box",attrs:{"scroll-y":!0}},e._l(t.submenu,(function(t,s){return n("v-uni-view",{key:s,staticClass:"box"},[n("v-uni-view",{staticClass:"title"},[e._v(e._s(t.name))]),n("v-uni-view",{staticClass:"labels"},e._l(t.submenu,(function(t,a){return n("v-uni-view",{key:a,class:{on:t.selected},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.selectRadioLabel(i,s,a)}}},[e._v(e._s(t.name))])})),1)],1)})),1),n("v-uni-view",{staticClass:"btn-box"},[n("v-uni-view",{staticClass:"reset",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.resetFilterData(i)}}},[e._v("重置")]),n("v-uni-view",{staticClass:"submit",on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.setFilterData(i)}}},[e._v("确定")])],1)],1)]:e._e()],2)]}))],2)},a=[]},d43b:function(e,t,n){"use strict";var i=n("78a4"),s=n.n(i);s.a},d850:function(e,t,n){"use strict";n("a9e3"),Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i={name:"u-sticky",props:{offsetTop:{type:[Number,String],default:0},index:{type:[Number,String],default:""},enable:{type:Boolean,default:!0},h5NavHeight:{type:[Number,String],default:44},bgColor:{type:String,default:"#ffffff"},zIndex:{type:[Number,String],default:""}},data:function(){return{fixed:!1,height:"auto",stickyTop:0,elClass:this.$u.guid(),left:0,width:"auto"}},watch:{offsetTop:function(e){this.initObserver()},enable:function(e){0==e?(this.fixed=!1,this.disconnectObserver("contentObserver")):this.initObserver()}},computed:{uZIndex:function(){return this.zIndex?this.zIndex:this.$u.zIndex.sticky}},mounted:function(){this.initObserver()},methods:{initObserver:function(){var e=this;this.enable&&(this.stickyTop=0!=this.offsetTop?uni.upx2px(this.offsetTop)+this.h5NavHeight:this.h5NavHeight,this.disconnectObserver("contentObserver"),this.$uGetRect("."+this.elClass).then((function(t){e.height=t.height,e.left=t.left,e.width=t.width,e.$nextTick((function(){e.observeContent()}))})))},observeContent:function(){var e=this;this.disconnectObserver("contentObserver");var t=this.createIntersectionObserver({thresholds:[.95,.98,1]});t.relativeToViewport({top:-this.stickyTop}),t.observe("."+this.elClass,(function(t){e.enable&&e.setFixed(t.boundingClientRect.top)})),this.contentObserver=t},setFixed:function(e){var t=e<this.stickyTop;t?this.$emit("fixed",this.index):this.fixed&&this.$emit("unfixed",this.index),this.fixed=t},disconnectObserver:function(e){var t=this[e];t&&t.disconnect()}},beforeDestroy:function(){this.disconnectObserver("contentObserver")}};t.default=i},dbb5:function(e,t,n){"use strict";n.r(t);var i=n("4e1b"),s=n("404d");for(var a in s)"default"!==a&&function(e){n.d(t,e,(function(){return s[e]}))}(a);n("545c");var u,r=n("f0c5"),o=Object(r["a"])(s["default"],i["b"],i["c"],!1,null,"31e37409",null,!1,i["a"],u);t["default"]=o.exports},edd8:function(e,t,n){"use strict";n.r(t);var i=n("8b71"),s=n.n(i);for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);t["default"]=s.a},f0cc:function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\r\n/**\r\n * 下方引入的为uView UI的集成样式文件，为scss预处理器，其中包含了一些"u-"开头的自定义变量\r\n * uView自定义的css类名和scss变量，均以"u-"开头，不会造成冲突，请放心使用 \r\n */.waterfall[data-v-60df715b]{padding-top:%?85?%}.nomore[data-v-60df715b]{background-color:#f3f4f6}.search[data-v-60df715b]{width:54px;height:44px}.search[data-v-60df715b]:active{background-color:#f3f4f6}.rowClass[data-v-60df715b]{border-radius:8px;background-color:#fff;margin-top:%?10?%}.hoverClass[data-v-60df715b]{background-color:#e4e7ed}.tabName[data-v-60df715b]{font-size:%?28?%;color:#303133}.demo-warter[data-v-60df715b]{border-radius:8px;margin-top:3px;background-color:#fff;padding:3px;position:relative}.u-close[data-v-60df715b]{position:absolute;top:%?20?%;right:%?20?%}.item-cover[data-v-60df715b]{font-size:%?55?%;color:#f90}.item-title[data-v-60df715b]{font-size:%?28?%;color:#303133;font-weight:700;padding-top:%?5?%;padding-left:%?10?%}.item-price[data-v-60df715b]{font-weight:400;font-size:%?32?%;color:#f90}.item-desc[data-v-60df715b]{font-weight:400;font-size:%?26?%;color:#909399;padding-bottom:%?5?%;padding-left:%?10?%}.item-tag[data-v-60df715b]{font-size:%?24?%;color:#909399;margin-top:3px}',""]),e.exports=t}}]);