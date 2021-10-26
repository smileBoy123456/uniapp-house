<template>
	<view class="wrap">
		<view class="content">
			<view class="title">欢迎登录</view>
			<input class="u-border-bottom" type="number" v-model="loginName" placeholder="请输入手机号" />
			<view class="tips">未注册的手机号验证后自动创建账号</view>
			<u-button @tap="submit" :style="[inputStyle]" class="getCaptcha">获取短信验证码</u-button>
			<view class="alternative">
				<view class="account" @click="accountLogin">密码登录</view>
				<view class="issue" @click="problem">遇到问题</view>
			</view>
		</view>
		<view class="buttom">
			<view class="loginType">
				<view class="wechat item">
					<view class="icon"><u-icon size="70" name="weixin-fill" color="rgb(83,194,64)" @click="wxLogin"></u-icon></view>
					微信
				</view>
			</view>
		</view>
	</view>
</template>

<script>
export default {
	data() {
		return {
			loginName: ''
		}
	},
	computed: {
		inputStyle() {
			let style = {};
			if(this.loginName && this.$u.test.mobile(this.loginName)) {
				style.color = "#fff";
				style.backgroundColor = this.$u.color['primary'];
			}
			return style;
		}
	},
	methods: {
		submit() {
			if(this.$u.test.mobile(this.loginName)) {
				this.$u.route({
					url: 'pages/login/code',
					params: {
						loginName: this.loginName
					}
				})
			}
		},
		accountLogin(){
			this.$u.route({
				url: 'pages/login/account'
			})
		},
		problem(){
			this.$u.route({
				url: 'pages/login/problem'
			})
		},
		wxLogin(){
			this.$mytip.toast('请使用密码登录')
		}
	}
};
</script>

<style>
	page {
		overflow: hidden;
	}
</style>
<style lang="scss" scoped>
.wrap {
	font-size: 28rpx;
	.content {
		width: 600rpx;
		margin: 80rpx auto 0;

		.title {
			text-align: left;
			font-size: 60rpx;
			font-weight: 500;
			margin-bottom: 100rpx;
		}
		input {
			text-align: left;
			margin-bottom: 10rpx;
			padding-bottom: 6rpx;
		}
		.tips {
			color: $u-type-info;
			margin-bottom: 60rpx;
			margin-top: 8rpx;
		}
		.getCaptcha {
			background-color: rgba(0, 0, 0,.1);
			color: $u-tips-color;
			border: none;
			font-size: 30rpx;
			padding: 12rpx 0;
			
			&::after {
				border: none;
			}
		}
		.alternative {
			color: $u-tips-color;
			display: flex;
			justify-content: space-between;
			margin-top: 30rpx;
			.account {
				&:active{
					background-color: #ededed;
				}
			}
		}
	}
	.buttom {
		.loginType {
			display: flex;
			padding: 350rpx 150rpx 150rpx 150rpx;
			justify-content:center;
			
			.item {
				display: flex;
				flex-direction: column;
				align-items: center;
				color: $u-content-color;
				font-size: 28rpx;
			}
		}
	}
}
</style>
