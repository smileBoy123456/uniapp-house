<template>
    <view>
        <u-sticky offset-top="0">
            <view class="sticky">
                <filterDropdown :menuTop="0" :filterData="filterData" :defaultSelected="defaultSelected"
                                :updateMenuName="true" @confirm="confirm" dataFormat="Object"></filterDropdown>
            </view>
        </u-sticky>
       <view class="u-p-l-10 u-p-r-10 waterfall">
		   <u-waterfall v-model="flowList" ref="uWaterfall">
		       <template v-slot:left="{leftList}">
		           <view class="demo-warter" v-for="(item, index) in leftList" :key="index">
		               <!-- 警告：微信小程序中需要hx2.8.11版本才支持在template中结合其他组件，比如下方的lazy-load组件 -->
		               <u-lazy-load threshold="300" border-radius="12" :image="item.image" :index="index"
		                           @click="clickImage(item.id)"></u-lazy-load>
		               <view class="item-title">{{item.villageName}} {{item.type == '整租' ? item.houseNum + item.houseHall + item.toiletNum : item.roomType+'-朝'+item.direction}}</view>
		   			<view class="item-price">￥{{item.price}}</view>
		               <view class="item-desc">{{item.type}} | {{item.type == '整租' ? item.houseArea : item.roomArea}}㎡ {{item.floor}}</view>
		           </view>
		       </template>
		       <template v-slot:right="{rightList}">
		           <view class="demo-warter" v-for="(item, index) in rightList" :key="index">
		               <u-lazy-load threshold="-450" border-radius="10" :image="item.image" :index="index"
		                           @click="clickImage(item.id)"></u-lazy-load>
		               <view class="item-title">{{item.villageName}} {{item.type == '整租' ? item.houseNum + item.houseHall + item.toiletNum : item.roomType+'-朝'+item.direction}}</view>
		               <view class="item-price">￥{{item.price}}</view>
		   			<view class="item-desc">{{item.type}} | {{item.type == '整租' ? item.houseArea : item.roomArea}}㎡ {{item.floor}}</view>
		           </view>
		       </template>
		   </u-waterfall>
		   <u-loadmore bg-color="rgb(240, 240, 240)" :status="loadStatus" @loadmore="findHouseList"></u-loadmore>
		   <u-back-top :scroll-top="scrollTop" top="1000"></u-back-top>
		   <u-no-network></u-no-network>
	   </view>
    </view>
</template>

<script>
    import filterDropdown from '@/components/zy/filterDropdown.vue';
    import data from '@/common/data.js';//筛选菜单数据
    export default {
        components: {
            filterDropdown
        },
        data() {
            return {
				indexArr: [],
				valueArr: [],
                defaultSelected: [],
                filterData: [],
                value1: 1,
                value2: 2,
                options1: [
					{
                    label: '小于500米',
                    value: 1,
					},
                    {
                        label: '小于1000米',
                        value: 2,
                    },
                    {
                        label: '小于2000米',
                        value: 3,
                    }
                ],
                options2: [{
                    label: '1000',
                    value: 1,
                },
                    {
                        label: '2000',
                        value: 2,
                    },
                ],
				pageNum: 1,
				pageSize: 20,
				scrollTop: 0,
				houseList: [],
                loadStatus: 'loadmore',
                flowList: [],
            }
        },
        onLoad() {
            //定时器模拟ajax异步请求数据
            setTimeout(() => {
                this.filterData = data;
                this.defaultSelected = [
                    [null],				//第0个菜单选中 一级菜单的第1项，二级菜单的第1项，三级菜单的第3项
                    [null],			//第1个菜单选中 都不选中
                    [null],					//第2个菜单选中 一级菜单的第1项
                    [null],	 // [[0], [1, 2, 7], [1, 0]],	//筛选菜单选中 第一个筛选的第0项，第二个筛选的第1,2,7项，第三个筛选的第1,0项
                ];
            }, 100);
            // 获取数据
            this.findHouseList();
        },
        onPageScroll(e) {
            this.scrollTop = e.scrollTop;
        },
        onReachBottom() {
            this.loadStatus = 'loading';
            // 获取数据
        	this.findHouseList()
        },
        // 下拉刷新
        onPullDownRefresh() {
        	this.pageNum = 1
        	this.flowList = []
        	this.$refs.uWaterfall.clear();
        	// 获取数据
        	this.findHouseList();
        	// 关闭刷新
        	uni.stopPullDownRefresh();
        },
        methods: {
            findHouseList() {
            	console.log(this.pageNum);
            	let url = "api/house/findHouseList";
            	this.$u.get(url, {
            		pageNum: this.pageNum,
            		pageSize: this.pageSize,
            		orderByColumn: 'update_time,create_time',
            		isAsc: 'desc'
            	}).then(data => {
            		if(this.pageNum>1 && data.length < this.pageSize){
            			return this.loadStatus = 'nomore';
            		}
            		this.houseList = data;
            		for (let i = 0; i < this.houseList.length; i++) {
            		    // 先转成字符串再转成对象，避免数组对象引用导致数据混乱
            		    let item = this.houseList[i]
            			item.image = item.faceUrl
            			if(item.type == 0){
            				item.type = '整租'
            			}else if(item.type == 1){
            				item.type = '合租'
            			}
            			if(item.roomType == 1){
            				item.roomType = '主卧'
            			}else if(item.roomType == 2){
            				item.roomType = '次卧'
            			}else{
            				item.roomType = '未知'
            			}
            			
            			if(this.$u.test.isEmpty(item.houseNum)){
            				item.houseNum = ''
            			}
            			if(this.$u.test.isEmpty(item.houseHall)){
            				item.houseHall = ''
            			}
            			if(this.$u.test.isEmpty(item.toiletNum)){
            				item.toiletNum = ''
            			}
            			if(this.$u.test.isEmpty(item.floor)){
            				item.floor = ''
            			}else{
            				item.floor = item.floor + '层'
            			}
            		    this.flowList.push(item);
            		}
            		++ this.pageNum 
            		this.loadStatus = 'loadmore';
            	});
            },
			clickImage(houseId) {
			    this.$u.route({
			    	url: '/pages/detail/detail',
			    	params: {
			    		houseId: houseId
			    	}
			    })
			},
			//接收菜单结果
			confirm(e) {
			    this.indexArr = e.index;
				console.log(this.indexArr );
			    this.valueArr = e.value;
				console.log(this.valueArr);
				console.log(e);
			},
			code(){
				this.$mytip.toast('请咨询技术支持')
			}
        }
    }
</script>

<style lang="scss" scoped>
	.waterfall{
		padding-top: 85rpx;
	}
	
	.nomore {
		background-color: $u-bg-color;
	}
	
	.search{
		width: 54px;
		height: 44px;
		
		&:active{
			background-color: $u-bg-color;
		}
	}
	
	.rowClass{
		border-radius: 8px;
		background-color: rgb(255, 255, 255);
		margin-top: 10rpx;
	}
	
	.hoverClass{
		background-color: #E4E7ED;
	}
	
	.tabName{
		font-size: 28rpx;
		color: $u-main-color;
	}
	
	.demo-warter {
	    border-radius: 8px;
	    margin-top: 3px;
	    background-color: #ffffff;
	    padding: 3px;
	    position: relative;
	}
	
	.u-close {
	    position: absolute;
	    top: 20rpx;
	    right: 20rpx;
	}
	
	.item-cover {
	    font-size: 55rpx;
	    color: $u-type-warning;
	}
	
	.item-title {
	    font-size: 28rpx;
	    color: $u-main-color;
	    font-weight: bold;
		padding-top: 5rpx;
		padding-left: 10rpx;
	}
	
	.item-price {
	    font-weight: normal;
	    font-size: 32rpx;
	    color: $u-type-warning;
	}
	
	.item-desc {
	    font-weight: normal;
	    font-size: 26rpx;
	    color: $u-tips-color;
		padding-bottom: 5rpx;
		padding-left: 10rpx;
	}
	
	.item-tag {
	    font-size: 24rpx;
	    color: $u-tips-color;
	    margin-top: 3px;
	}
</style>
