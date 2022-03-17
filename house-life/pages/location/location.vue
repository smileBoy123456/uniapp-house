<template>
	<view>
		<view class="selected" >
			<view class="title">已选: 杭州市</view>
		</view>
		<view class="location" >
			<view class="title">当前定位</view>
			<view class="body">
				<view class="left">
					<image src="../../static/navigate.png" mode="widthFix" class="img"></image>
					杭州市
				</view>
				<view class="right">重新定位</view>
			</view>
		</view>
		<view class="hot" >
			<view class="title">热门城市</view>
			<view class="body">
				<view class="tag" v-for="(item,index) in hotList" :key="index">{{item}}</view>
			</view>
		</view>
	</view>
</template>
<script>
	export default {
		data() {
			return {
				keyword:"",
				hotList:['北京市','上海市','广州市','深圳市','成都市','杭州市','西安市','苏州市','武汉市','南京市','重庆市','郑州市']
			}
		},
		methods: {
			clickSearch(){
				if(this.keyword === ''){
					return uni.showToast({
						title: '关键词不能为空',
						icon: 'none'
					});
				}else{
					uni.hideKeyboard()
				}
			},
			// 自定义取消搜索事件
			cancelSearch(){
				uni.navigateBack({
					delta: 1
				})
			},
			clickSearchTag(item){
				this.keyword = item
				this.clickSearch()
			},
		}
	}
</script>

<style lang="scss" scoped>
	.selected{
		.title {
		    font-size: 30rpx;
		    color: $u-main-color;
			margin: 30rpx 20rpx;
			font-weight: 800;
		}
	}
	.location{
		background: #FFFFFF;
		border-radius: 18rpx;
		padding: 3rpx 0;
		margin: 20rpx;
		.title {
		    font-size: 22rpx;
		    color: $u-tips-color;
			margin: 30rpx 20rpx;
		}
		
		.body{
			margin: 30rpx 20rpx;
			display: flex;
			justify-content: space-between;
			.left{
				font-size: 32rpx;
				font-weight: 800;
				display: flex;
				justify-content: center;
				align-items: center;
				.img{
					width: 35rpx;
					margin-right: 12rpx;
				}
			}
			.right{
				color: #2979ff;
			};
		}
	}
	.hot{
		.title {
		    font-size: 30rpx;
		    color: $u-main-color;
			margin: 30rpx 20rpx;
			font-weight: 600;
		}
		
		.body{
			background: #FFFFFF;
			padding-bottom: 15rpx;
			border-radius: 18rpx;
			margin: 20rpx;
			.tag {
				display: inline-block;
				width: 135rpx;
				height: 60rpx;
				line-height: 60rpx;
			    font-size: 26rpx;
			    color: $u-content-color;
			    margin: 15rpx 20rpx 0 20rpx;
				padding: 5rpx 10rpx;
				text-align: center;
				background-color: $u-bg-color;
				border-radius: 8rpx;
			}
		}
	}
</style>
