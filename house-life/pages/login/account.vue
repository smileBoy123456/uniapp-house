<template>
	<view>
		<view class="loginForm">
			<u-toast ref="uToast" />
			<view>
				<u-cell-group>
					<u-field
						v-model="username"
						label="手机号"
						placeholder="请填写手机号"
						icon="account"
						iconColor="#d5d5d5"
					>
					</u-field>
					<u-field
						v-model="password"
						label="密码"
						placeholder="请填写密码"
						icon="lock"
						iconColor="#d5d5d5"
						password
					>
					</u-field>
				</u-cell-group>
			</view>
		</view>
		<u-button class="u-m-20 loginBtn" type="primary" @tap="login">登录</u-button>
		<view class="version">
			版本号为：{{vuex_version}}
		</view>
	</view>
</template>

<script>
export default {
	data() {
		return {
			// username: '18758268181',
			// password: '123456',
			username: '',
			password: '',
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
			let url = "/web/thirdLogin";
			this.$u.post(url,{
				loginName: this.username,
				password: this.password
			}).then(data => {
				// 登录成功初始化token与用户信息
				this.$u.vuex('vuex_token', data.jwtToken);
				this.$u.vuex('vuex_user', data);
				uni.switchTab({
					url: '/pages/index/index'
				})
			});
		},
	}
};
</script>

<style>
	page{
		overflow: hidden;
	}
</style>
<style lang="scss" scoped>
	.loginForm {
		text-align: center;
		margin: 20rpx 20rpx;
	}

	.version {
		position:fixed;
		bottom:0;
		width: 100%;
		text-align: center;
		padding: 20rpx;
		color: #ccc;
	}
	
	.loginBtn {
		font-size: 30rpx;
		padding: 12rpx 0;
	}
</style>
