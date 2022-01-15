<template>
	<view>
		<u-collapse class="u-p-30">
			<u-collapse-item :title="item.head" v-for="(item, index) in itemList" :key="index" :open="item.open">
				{{item.body}}
			</u-collapse-item>
		</u-collapse>
		<view class="u-m-t-20">
			<u-button class="u-m-20" type="default" @click="download" plain>
				<u-icon name="download" color="#969799" size="38"></u-icon>
				下载APP
			</u-button>
			<view class="appUrl" v-if="appUrl">
				<text selectable="true">
					下载链接：{{url}}
				</text>
			</view>
		</view>
	</view>
</template>

<script>
export default {
	data() {
		return {
			appUrl: false,
			url: "http://8.136.213.245/profile/apk/yixin.apk",
			itemList: [
				{
					head: "初始密码是什么？",
					body: "初始密码默认为手机号码,为了您的账户安全,请进入个人中心进行修改。",
					open: false,
				},
				{
					head: "技术支持电话是多少？",
					body: "联系电话：18720989281",
					open: false,
				},
				{
					head: "关于我们",
					body: "我们传播开源的理念,推广开源项目,为 IT 开发者提供了一个发现、使用、并交流开源技术的契机。我们拥有敏捷的互联网产品思维，不断的去发现和创造更符合社会需要的产品，为了开源，理想和自由不懈努力。" ,
					open: true,
				},
				{
					head: "加入我们",
					body: "邮箱：261648947@qq.com",
					open: false,
				},
			],
		}
	},
	methods: {
		download(){
			this.DownLoadAndroid();
		},
		//判断是否微信登陆
		isWeiXinLogin() {
			// #ifdef H5
			let ua = window.navigator.userAgent.toLowerCase()
			if (ua.match(/MicroMessenger/i) == 'micromessenger') {
				return true;
			}
			// #endif
			return false;
		},
		//安卓下载
		DownLoadAndroid() {
			if (this.isWeiXinLogin()) {
				uni.showToast({
					icon:'none',
					title:'请复制链接，在浏览器中打开下载',
					duration:3000
				})
				this.appUrl = true;
				return;
			}
			var downloadUrl = 'http://8.136.213.245/profile/apk/yixin.apk'; // 下载地址
			var urlStr = encodeURI(downloadUrl)
			// #ifdef APP-PLUS
			plus.runtime.openURL(urlStr);
			return;
			// #endif
			// #ifdef H5 
			window.open(urlStr);
			// #endif
		},
	}
};
</script>

<style>
	page {
		background: #fff;
	}
	
	.appUrl{
		padding: 20rpx;
	}
</style>
