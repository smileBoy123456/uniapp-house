<template>
	<view>
		<view class="wrap">
			<view class="u-tabs-box">
				<u-tabs-swiper ref="tabs" :list="tabList" :current="current" @change="change" :is-scroll="false" swiperWidth="750" bar-width="120"></u-tabs-swiper>
			</view>
			<swiper class="swiper-box" :current="swiperCurrent" @transition="transition" @animationfinish="animationfinish">
				<swiper-item class="swiper-item">
					<add-all-house :model="model"></add-all-house>
				</swiper-item>
				<swiper-item class="swiper-item">
					<add-sub-house :model="model"></add-sub-house>
				</swiper-item>
			</swiper>
		</view>
	</view>
</template>

<script>

import addAllHouse from '@/components/zy/addAllHouse.vue' 
import addSubHouse from '@/components/zy/addSubHouse.vue' 
export default {
	components: {
	  addAllHouse,addSubHouse
	},
	data() {
		return {
			tabList: [{name: '整租'},{name: '合租'}],
			current: 0,
			swiperCurrent: 0,
			tabsHeight: 0,
			// 房源对象
			model: null,
		};
	},
	onLoad: function (option) {
		this.model = JSON.parse(option.room)
	},
	methods: {
		// tab栏切换
		change(index) {
			this.swiperCurrent = index;
		},
		transition({ detail: { dx } }) {
			this.$refs.tabs.setDx(dx);
		},
		animationfinish({ detail: { current } }) {
			this.$refs.tabs.setFinishCurrent(current);
			this.swiperCurrent = current;
			this.current = current;
			this.model.type = current;
			console.log(this.model.type);
		}
	}
};
</script>
<style>
	page{
		background-color: #FFFFFF;
	}
</style>
<style lang="scss" scoped>
.tabSwiper {
	width: 710rpx;
	background-color: #ffffff;
	margin: 20rpx auto;
	border-radius: 20rpx;
	box-sizing: border-box;
	padding: 20rpx;
	font-size: 28rpx;
	.top {
		display: flex;
		justify-content: space-between;
		.left {
			display: flex;
			align-items: center;
			.title {
				margin: 0 10rpx;
				font-size: 32rpx;
				font-weight: bold;
			}
		}
		.right {
			color: $u-tips-color;
		}
	}
	.item {
		display: flex;
		margin: 20rpx 0 0;
		.left {
			margin-right: 20rpx;
			image {
				width: 200rpx;
				height: 200rpx;
				border-radius: 10rpx;
			}
		}
		.content {
			.title {
				font-size: 28rpx;
				line-height: 50rpx;
			}
		}
		.right {
			margin-left: 10rpx;
			padding-top: 20rpx;
			text-align: right;
		}
	}
}
.wrap {
	display: flex;
	flex-direction: column;
	height: calc(100vh - var(--window-top));
	width: 100%;
}
.swiper-box {
	flex: 1;
}
.swiper-item {
	height: 100%;
}

</style>
