<template>
	<view class="">
		<u-image width="100%" height="400rpx" :src="src"></u-image>
		<view class="wrap">
			<u-form :model="model" :rules="rules" ref="uForm" :errorType="errorType">
				<u-form-item :label-position="labelPosition" label="小区名称" prop="villageName" label-width="180"
				left-icon="map" :leftIconStyle="{color:'#d5d5d5'}">
					<u-input :border="border" type="select" :select-open="selectShow" v-model="model.villageName" placeholder="请选择小区" @click="selectShow = true"></u-input>
				</u-form-item>
				<u-form-item :label-position="labelPosition" label="具体地址" prop="address" label-width="180"
				left-icon="file-text" :leftIconStyle="{color:'#d5d5d5'}">
					<u-input :border="border" placeholder="请输入具体地址" v-model="model.address" type="text"></u-input>
				</u-form-item>
				<u-form-item  :label-position="labelPosition" label="门牌号" prop="houseNo" label-width="180"
				left-icon="home" :leftIconStyle="{color:'#d5d5d5'}">
					<u-input :border="border" placeholder="请输入门牌号" v-model="model.houseNo" type="text"></u-input>
				</u-form-item>
				<u-form-item label-width="180" :label-position="labelPosition" label="付款方式" prop="payType"
				left-icon="rmb-circle" :leftIconStyle="{color:'#d5d5d5'}">
					<u-input :border="border" type="select" :select-open="actionSheetShow" v-model="model.payType" placeholder="请选择付款方式" @click="actionSheetShow = true"></u-input>
				</u-form-item>
			</u-form>
			<u-select mode="single-column" :list="selectList" v-model="selectShow" @confirm="selectConfirm"></u-select>
			<u-action-sheet :list="actionSheetList" v-model="actionSheetShow" @click="actionSheetCallback"></u-action-sheet>
		</view>
		<view class="bottom-btn">
			<u-button type="primary" @click="submit">下一步</u-button>
		</view>
	</view>
</template>

<script>
export default {
	data() {
		let that = this;
		return {
			src: 'http://img.sccnn.com/bimg/340/02027.jpg',
			actionSheetShow: false,
			model: {
				type: 0,
				ownerName: '',
				owerPhone: '',
				villageName: '',
				villageId: '',
				address: '',
				houseNo: '',
				payType:'季付',
				createName: uni.getStorageSync('lifeData').vuex_user.userName,
				publishId: uni.getStorageSync('lifeData').vuex_user.userId,
				state: 0,
			},
			selectList: [],
			actionSheetList: [
				{
					text: '月付'
				},
				{
					text: '季付'
				},
				{
					text: '半年付'
				},
				{
					text: '年付'
				}
			],
			rules: {
				villageName: [
					{
						required: true,
						message: '请选择小区',
						trigger: ['change','blur'],
					}
				],
				payType: [
					{
						required: true,
						message: '请输选择付款方式',
						trigger: ['change','blur'],
					}
				],
			},
			border: false,
			check: false,
			selectStatus: 'close',
			selectShow: false,
			labelPosition: 'left',
			errorType: ['toast'],
		};
	},
	onLoad() {
		this.findVillageList()
	},
	computed: {
		
	},
	onReady() {
		this.$refs.uForm.setRules(this.rules);
	},
	methods: {
		submit() {
			// return this.$u.route({
			// 	url: '/pages/detail/addHouse',
			// 	params: {
			// 		room: JSON.stringify(this.model)
			// 	}
			// })
			this.$refs.uForm.validate(valid => {
				if (valid) {
					console.log('验证通过');
					return this.$u.route({
						url: '/pages/detail/addHouse',
						params: {
							room: JSON.stringify(this.model)
						}
					})
				} else {
					console.log('验证失败');
				}
			});
		},
		selectConfirm(e) {
			e.map((val, index) => {
				this.model.villageName = val.label;
				this.model.villageId = val.value
				console.log(val.value);
			})
		},
		labelPositionChange(index) {
			this.labelPosition = index == 0 ? 'left' : 'top';
		},
		// 点击actionSheet回调
		actionSheetCallback(index) {
			uni.hideKeyboard();
			this.model.payType = this.actionSheetList[index].text;
		},
		findVillageList() {
			let url = "/api/houseApi/findVillageList";
			this.$u.get(url).then(result => {
				const data = result.rows
				for (let i = 0; i < data.length; i++) {
				    // 先转成字符串再转成对象，避免数组对象引用导致数据混乱
				    let item = data[i]
					this.selectList.push({
						label: item.name,
						value: item.id
					})
				}
				return data
			});
		},
	}
};
</script>

<style>
	page{
		background-color: #FFFFFF;
	}
</style>
<style scoped lang="scss">
.wrap {
	padding: 30rpx;
}

.bottom-btn {
	position: fixed;
	bottom: 8rpx;
	width: 100%;
	padding: 30rpx;
	border-top: 1rpx solid #ccc;
	background-color: #FFFFFF;
}
</style>
