<template>
	<view class="u-m-20">
		<u-navbar :is-back="true" title="个人信息" :border-bottom="false">
		</u-navbar>
		<view>
			<u-cell-group>
				<u-cell-item title="用户名" :arrow="false" hover-class="none">{{vuex_user.userName}}</u-cell-item>
				<u-cell-item title="手机号" :arrow="false" hover-class="none">{{vuex_user.phonenumber}}</u-cell-item>
				<u-cell-item title="真实姓名" :arrow="false" hover-class="none">{{vuex_user.realName}}</u-cell-item>
				<u-cell-item title="身份证号" :arrow="false" hover-class="none">{{vuex_user.idCard}}</u-cell-item>
				<u-cell-item title="地址" @click="value = true">{{address}}</u-cell-item>
			</u-cell-group>
			<u-cell-group>
				<u-cell-item title="邀请码"></u-cell-item>
			</u-cell-group>
		</view>
		
		<view class="u-m-t-20">
			<u-button type="primary" @click="subProfile">提交</u-button>
		</view>
		<city-select v-model="value" @city-change="cityChange"></city-select>
	</view>
</template>

<script>
	import citySelect from '../../components/uni/u-city-select.vue';
	export default {
		components: {
			citySelect
		},
		data() {
			return {
				value: false,
				address: '',
			}
		},
		onLoad() {
			
		},
		created() {
			this.address = uni.getStorageSync('lifeData').vuex_user.address;
		},
		methods: {
			subProfile(){
				// 1.更新vuex中的用户信息
				this.$mytip.toast('修改成功')
				// 2.页面跳转
				uni.switchTab({
					url: '/pages/center/center'
				})
			},
			cityChange(e) {
				this.address = e.province.label + '-' + e.city.label + '-' + e.area.label;
			}
		}
	}
</script>