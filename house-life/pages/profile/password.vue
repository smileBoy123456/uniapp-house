<template>
	<view>
		<view class="u-m-20">
			<u-toast ref="uToast" />
			<view>
				<u-cell-group>
					<u-field
						v-model="oldpassword"
						label="旧密码"
						placeholder="请填写旧密码"
						icon="lock"
						iconColor="#d5d5d5"
						label-width = "180"
						password
						focus
					>
					</u-field>
					<u-field
						v-model="newpassword"
						label="新密码"
						placeholder="请填写新密码"
						icon="lock"
						iconColor="#d5d5d5"
						label-width = "180"
						password
					>
					</u-field>
					<u-field
						v-model="password"
						label="确认密码"
						placeholder="请再次填写密码"
						icon="lock-fill"
						iconColor="#d5d5d5"
						label-width = "180"
						password
					>
					</u-field>
				</u-cell-group>
			</view>
		</view>
		<u-button class="u-m-20" type="primary" @tap="changePasswold">提交</u-button>
	</view>
</template>

<script>
export default {
	data() {
		return {
			oldpassword: '',
			newpassword: '',
			password: '',
		}
	},
	methods: {
		changePasswold() {
			this.$mytip.toast('修改成功')
			uni.switchTab({
				url: '/pages/center/center'
			})
		},
	}
};
</script>

<style lang="scss" scoped>
	page{
		overflow: hidden;
	}
	
	.logo{
		display: flex;
		justify-content: center;
		align-items: center;
		width: 100%;
		height: 550rpx;
		img {
			text-align: center;
		}
	}

	.version {
		position:fixed;
		bottom:0;
		width: 100%;
		text-align: center;
		padding: 15rpx;
	}
</style>
