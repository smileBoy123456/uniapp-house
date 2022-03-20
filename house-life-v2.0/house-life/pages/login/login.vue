<!-- 蓝色登录页面2 -->
<template>
	<view>
		<u-toast ref="uToast" />
		<view class="img-a">
			<view class="t-b" @click="goLogin3()">
				您好，
				<br />
				欢迎使用 开源字节
			</view>
		</view>
		<view class="login-view">
			<view class="t-login">
				<form class="cl">
					<view class="t-a">
						<text class="txt">手机号</text>
						<input type="number" name="phone" placeholder="请输入您的手机号" maxlength="11" v-model="username" />
					</view>
					<view class="t-a">
						<text class="txt">密码</text>
						<input type="password" name="code" maxlength="18" placeholder="请输入您的密码" v-model="password" />
					</view>
					<button @tap="login()">登 录</button>
					<view class="reg" @tap="reg()">短信登录</view>
				</form>
			</view>
		</view>
	</view>
</template>
<script>
export default {
	data() {
		return {
			username: '18720989281',
			password: '123456',
		}
	},
	methods: {
		login() {
			if(!this.$u.test.mobile(this.username)){
				return this.$refs.uToast.show({
					title: '手机号不正确',
					type: 'warning',
				})
			}
			if(!this.password){
				return this.$refs.uToast.show({
					title: '密码不能为空',
					type: 'warning',
				})
			}
			// 登录json参数，不同于表单参数
			let url = "/api/thirdLogin";
			this.$u.post(url,{
				username: this.username,
				password: this.password
			}).then(data => {
				// 登录成功初始化token与用户信息
				this.$u.vuex('vuex_token', data.token);
				this.$u.vuex('vuex_user', data.loginUser);
				uni.switchTab({
					url: '/pages/index/index'
				})
			});
		},
		reg(){
			this.$u.route({
				url: 'pages/login/account'
			})
		}
	}
};
</script>


<style>
page {
  background-color: #ffffff;
}
</style>
<style>
.txt {
	font-size: 32rpx;
	font-weight: bold;
	color: #333333;
}
.img-a {
	width: 100%;
	height: 450rpx;
	background-image: url(https://zhoukaiwen.com/img/loginImg/head.png);
	background-size: 100%;
}
.reg {
	font-size: 28rpx;
	color: #fff;
	height: 90rpx;
	line-height: 90rpx;
	border-radius: 50rpx;
	font-weight: bold;
	background: #f5f6fa;
	color: #000000;
	text-align: center;
	margin-top: 30rpx;
}

.login-view {
	width: 100%;
	position: relative;
	margin-top: -120rpx;
	background-color: #ffffff;
	border-radius: 8% 8% 0% 0;
}

.t-login {
	width: 600rpx;
	margin: 0 auto;
	font-size: 28rpx;
	padding-top: 80rpx;
}

.t-login button {
	font-size: 28rpx;
	background: #2796f2;
	color: #fff;
	height: 90rpx;
	line-height: 90rpx;
	border-radius: 50rpx;
	font-weight: bold;
}

.t-login input {
	height: 90rpx;
	line-height: 90rpx;
	margin-bottom: 50rpx;
	border-bottom: 1px solid #e9e9e9;
	font-size: 28rpx;
}

.t-login .t-a {
	position: relative;
}

.t-b {
	text-align: left;
	font-size: 42rpx;
	color: #ffffff;
	padding: 130rpx 0 0 70rpx;
	font-weight: bold;
	line-height: 70rpx;
}

.t-login .t-c {
	position: absolute;
	right: 22rpx;
	top: 22rpx;
	background: #5677fc;
	color: #fff;
	font-size: 24rpx;
	border-radius: 50rpx;
	height: 50rpx;
	line-height: 50rpx;
	padding: 0 25rpx;
}

.t-login .t-d {
	text-align: center;
	color: #999;
	margin: 80rpx 0;
}

.t-login .t-e {
	text-align: center;
	width: 250rpx;
	margin: 80rpx auto 0;
}

.t-login .t-g {
	float: left;
	width: 50%;
}

.t-login .t-e image {
	width: 50rpx;
	height: 50rpx;
}

.t-login .t-f {
	text-align: center;
	margin: 150rpx 0 0 0;
	color: #666;
}

.t-login .t-f text {
	margin-left: 20rpx;
	color: #aaaaaa;
	font-size: 27rpx;
}

.t-login .uni-input-placeholder {
	color: #aeaeae;
}

.cl {
	zoom: 1;
}

.cl:after {
	clear: both;
	display: block;
	visibility: hidden;
	height: 0;
	content: '\20';
}
</style>
