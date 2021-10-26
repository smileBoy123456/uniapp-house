<template>
	<view>
		<u-navbar :is-back="true" title="设置" :border-bottom="false">
		</u-navbar>
		<view>
			<u-cell-group>
				<u-cell-item title="个人信息" @click="profile"></u-cell-item>
			</u-cell-group>
			<u-cell-group class="u-m-t-20">
				<u-cell-item title="修改密码" @click="changePassword"></u-cell-item>
			</u-cell-group>
		</view>
		
		<view class="u-m-t-20">
			<u-button class="u-m-20" type="default" @tap="logout" plain>退出登录</u-button>
		</view>
		
		<view class="version">Version {{vuex_version}}</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				
			}
		},
		onLoad() {
			
		},
		methods: {
			profile(){
				this.$u.route('/pages/profile/profile')
			},
			logout() {
				// 登录成功修改token与用户信息
				this.$u.vuex('vuex_token', '');
				this.$u.vuex('vuex_user', {});
				return uni.reLaunch({
					url:'../index/index'
				})
			},
			changePassword(){
				this.$u.route('/pages/profile/password')
			}
		}
	}
</script>

<style lang="scss">
	.loginBtn {
		margin: 15rpx;
	}
	
	.version {
		position: absolute;
		bottom: 15rpx;
		width: 100%;
		text-align: center;
	}
</style>