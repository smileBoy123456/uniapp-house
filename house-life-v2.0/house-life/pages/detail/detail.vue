<template>
    <view class="u-margin-left-20 u-margin-right-20">
        <view>
            <u-swiper :list="swiperlist" :height="750" mode="number" effect3d effect3d-previous-margin="30" :interval="5000" @click="clickImg"></u-swiper>
        </view>
		<view class="item">
			<view class="item-title">{{room.villageName}} {{room.type == '整租' ? room.houseNum + room.houseHall + room.toiletNum : room.roomType+'-朝'+room.direction}}</view>
			<view class="item-price">￥{{room.price}}/月</view>
		</view>
		<u-cell-group>
			<u-cell-item title="服务费另计,详情咨询管家" value="联系管家" @click="clickItem"></u-cell-item>
		</u-cell-group>
		<view class="item">
			<u-tag :text="item.title" mode="light" type="primary"
			 v-for="(item,index) in tagList" :key="index"
			 style="margin:10rpx;"/>
		</view>
		<view v-if="village.wayState == 1">
			<u-gap height="1" bg-color="#f8f8f8"></u-gap>
			<view class="wayClass">
				小区距地铁站步行{{village.waySpace}}米
			</view>
		</view>
		<view v-if="room.introduce">
			<u-gap height="1" bg-color="#f8f8f8"></u-gap>
			<u-card title="房源介绍" :border="false" :head-border-bottom="false" padding="0" title-size="38">
				<view class="u-padding-top-45 item" slot="body">
					{{room.introduce}}
				</view>
			</u-card>
		</view>
		<u-gap height="1" bg-color="#f8f8f8"></u-gap>
		<view style="position: relative;">
			<u-card title="小区介绍" :border="false" :head-border-bottom="false" padding="0" title-size="38">
				<view class="u-padding-top-45" slot="body">
					<view class="u-flex" style="justify-content: space-between;">
						<view class="item">
							<view style="color: $u-tips-color">建筑年份：{{village.year}}</view>
							<view class="color: $u-tips-color">建筑类型：{{village.type}}</view>
							<view class="color: $u-tips-color">绿化率：{{village.green}}%</view>
						</view>
						<image src="https://img11.360buyimg.com/n7/jfs/t1/94448/29/2734/524808/5dd4cc16E990dfb6b/59c256f85a8c3757.jpg" mode="widthFix" 
						style="width: 250rpx;height: 200rpx;"></image>
					</view>
				</view>
			</u-card>
			<!-- <view class="arrow-right"  @click="clickItem">
				小区详情<u-icon name="arrow-right"></u-icon>
			</view> -->
		</view>
		<u-gap height="1" bg-color="#f8f8f8"></u-gap>
		<view style="position: relative;">
			<u-card title="周边交通" :border="false" :head-border-bottom="false" padding="0" title-size="38">
				<view class="u-padding-top-45" slot="body">
					<image src="http://api.map.baidu.com/staticimage/v2?ak=CB9b776692623d30a148b5c5dc2b75a6&mcode=666666&center=120.213023,30.300046&width=800&height=360&zoom=18&markers=120.213023,30.300046&markerStyles=-1,http://api.map.baidu.com/images/marker_red.png,-1,23,25"
					style="width: 750rpx;height: 300rpx;"></image>
				</view>
			</u-card>
		</view>
		<u-gap height="1" bg-color="#f8f8f8"></u-gap>
		<view style="position: relative;">
			<u-card title="服务介绍" :border="false" :head-border-bottom="false" padding="0" title-size="38">
				<view class="u-padding-top-45" slot="body">
					<u-cell-group :border="false">
						<u-cell-item icon="heart" title="承诺-四大租住承诺，安心有保障" :arrow="false" hover-class="none" :border-bottom="false"></u-cell-item>
						<u-cell-item icon="level" title="品质-两类品质保障，入住更无忧" :arrow="false" hover-class="none" :border-bottom="false"></u-cell-item>
						<u-cell-item icon="star" title="服务-两项日常服务，生活超便捷" :arrow="false" hover-class="none" :border-bottom="false"></u-cell-item>
						<u-cell-item icon="rmb" title="付款-多种付款方式，支付更灵活" :arrow="false" hover-class="none" :border-bottom="false"></u-cell-item>
					</u-cell-group>
				</view>
			</u-card>
		</view>
		<u-gap height="1" bg-color="#f8f8f8"></u-gap>
		<view style="position: relative;">
			<u-card title="您的管家" :border="false" :head-border-bottom="false" padding="0" title-size="38">
				<view class="u-padding-top-45" slot="body">
					<view class="u-flex">
					    <view class="u-m-r-10">
					        <u-avatar :src="user.avatar" size="80"></u-avatar>
					    </view>
					    <view class="u-flex-1">
					        <view class="u-font-16 u-p-b-20">{{user.userName}}</view>
					    </view>
					</view>
					<view class="item">
						{{user.remark}}
					</view>
				</view>
			</u-card>
			<view class="arrow-right">
				<u-button type="primary" :plain="true" size="mini"  @click="clickItem">联系管家</u-button>
			</view>
			<view class="item">
				<u-divider>一心房产为您服务</u-divider>
			</view>
		</view>
    </view>
</template>

<script>
	import config from "@/common/config.js" // 全局配置文件
    export default {
        data() {
            return {
                keyword: '',
				room: {},
                swiperlist: [],
                tagList: [],
				village: {},
				user: {}
            }
        },
		onLoad: function (option) {
			let houseId = option.houseId //上个页面传递的参数。
			// 渲染当前房源信息
			this.findHouseById(houseId);
		},
        methods: {
            clickItem() {
                //拨打固定电话
                uni.makePhoneCall({
                	phoneNumber: this.room.user.phonenumber,
                });
            },
			findHouseById(houseId){
				let url = "api/houseApi/findHouseById";
				this.$u.get(url, {
					id: houseId
				}).then(result => {
					let room = result.data
					if(room.type == 0){
						room.type = '整租'
					}else if(room.type == 1){
						room.type = '合租'
					}
					if(room.roomType == 1){
						room.roomType = '主卧'
					}else if(room.roomType == 2){
						room.roomType = '次卧'
					}else{
						room.roomType = '未知'
					}
					
					if(this.$u.test.isEmpty(room.houseNum)){
						room.houseNum = ''
					}
					if(this.$u.test.isEmpty(room.houseHall)){
						room.houseHall = ''
					}
					if(this.$u.test.isEmpty(room.toiletNum)){
						room.toiletNum = ''
					}
					if(this.$u.test.isEmpty(room.floor)){
						room.floor = ''
					}else{
						room.floor = room.floor + '层'
					}
					this.swiperlist = room.imageList.map(val=>{
						return {
							title: val.imageName,
							image: val.imgUrl
						}
					})
					this.tagList = room.featureList.map(val=>{
						return {
							title: val.feature,
						}
					})
					room.user.avatar = config.baseUrl + room.user.avatar
					this.user = room.user
					this.village = room.village
					this.room = room
				});
			},
			clickImg(index){
				let imgArr = this.swiperlist.map(val=>{
					return val.image
				})
				console.log(imgArr);
				 // 预览图片
				uni.previewImage({
					current: index,
					urls: imgArr
				});
			}
        }
    }
</script>

<style>
    /* page不能写带scope的style标签中，否则无效 */
    page {
        background-color: rgb(255, 255, 255);
    }
</style>


<style lang="scss" scoped>
	.item{
		padding: 25rpx;
		line-height: 50rpx;
	}
	
    .item-title {
        font-size: 42rpx;
        color: $u-main-color;
        font-weight: bold;
    }

    .item-price {
        font-weight: normal;
        font-size: 45rpx;
        color: $u-type-warning;
        margin-top: 13rpx;
    }

    .item-desc {
        font-weight: normal;
        font-size: 36rpx;
        color: $u-tips-color;
    }
	
	.arrow-right{
		position: absolute;
		top: 0rpx;
		right: 28rpx;
		font-weight: normal;
		font-size: 28rpx;
		color: $u-tips-color;
	}
	
	.wayClass{
		color: #606266;
		padding: 30rpx;
		line-height: 50rpx;
	}

</style>
