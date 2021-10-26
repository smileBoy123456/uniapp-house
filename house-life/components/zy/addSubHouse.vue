<template>
	<view>
		<scroll-view scroll-y="true" class="scroll-wrapper">
			<view>
				<view class="wrap">
					<u-form ref="uForm">
						<u-form-item :label-position="labelPosition" label="出租房间" label-width="150" required>
							<u-input :border="border" type="select" :select-open="selectShow" v-model="model.roomLabel" placeholder="请选择出租房间" @click="selectShow = true"></u-input>
						</u-form-item>
						
						<u-form-item label-width="150" :label-position="labelPosition" label="房间号" required>
							<u-input :border="border" placeholder="如 A01..." v-model="model.roomCode" type="text"></u-input>
						</u-form-item>
						<u-form-item label-width="150" :label-position="labelPosition" label="房屋面积" required>
							<u-input :border="border" placeholder="请输入房屋面积" v-model="model.roomArea" type="number"></u-input>
						</u-form-item>
						<u-form-item label-width="150" :label-position="labelPosition" label="朝向" required>
							<u-input :border="border" placeholder="请输入朝向" v-model="model.direction" type="text"></u-input>
						</u-form-item>
						</u-form-item>
						<u-form-item label-width="150" :label-position="labelPosition" label="租金" required>
							<u-input :border="border" placeholder="请输入租金" v-model="model.price" type="number"></u-input>
						</u-form-item>
						<u-form-item label-width="150" :label-position="labelPosition" label="起租日期">
							<view class="dateBtn" @click="dateClick">
								{{dateLabel}}<u-icon name="arrow-right"></u-icon>
							</view>
						</u-form-item>
						<view class="custom-gap"></view>
						<u-form-item :label-position="labelPosition" label="房源图片" label-width="150" required>
							<u-upload :custom-btn="true" ref="uUpload" :auto-upload="true" :action="action"
							 :max-size="10 * 1024 * 1024" max-count="9" width="160" height="160">
								<view slot="addBtn" class="slot-btn" hover-class="slot-btn__hover" hover-stay-time="150">
									<u-icon name="plus" size="60" :color="$u.color['lightColor']"></u-icon>
								</view>
							</u-upload>
						</u-form-item>
						<u-form-item label-width="150"  :label-position="labelPosition" label="房源描述">	
							<u-input type="textarea" :border="border" placeholder="请填写房屋描述" v-model="model.introduce" />
						</u-form-item>
						<u-form-item label-width="150"  :label-position="labelPosition" label="房源亮点" required>
							<u-checkbox-group @change="checkboxGroupChange" :width="radioCheckWidth" :wrap="radioCheckWrap">
								<u-checkbox v-model="item.checked" v-for="(item, index) in checkboxList" :key="index" :name="item.name">{{ item.name }}</u-checkbox>
							</u-checkbox-group>
						</u-form-item>
					</u-form>
				</view>
			</view>
		</scroll-view>
		<u-select mode="single-column" :list="selectList" v-model="selectShow" @confirm="selectConfirm"></u-select>
		<u-action-sheet :list="actionSheetList" v-model="actionSheetShow" @click="actionSheetCallback"></u-action-sheet>
		<u-calendar v-model="show" :mode="mode" @change="changeDate" max-date="2100-01-01"></u-calendar>
		<view class="bottom-btn">
			<u-button type="primary" @click="submit">提交</u-button>
		</view>
	</view>
</template>

<script>
import config from "@/common/config.js" // 全局配置文件
export default {
	props:{
		model:Object
	},
	data() {
		return {
		    show: false,
		    mode: 'date',
			selectList: [
				{
					value: '1',
					label: '主卧'
				},
				{
					value: '2',
					label: '次卧'
				}
			],
			border: false,
			check: false,
			selectStatus: 'close',
			checkboxList: [
				{
					name: '看房方便',
					checked: false,
					disabled: false
				},
				{
					name: '独卫',
					checked: false,
					disabled: false
				},
				{
					name: '独立阳台',
					checked: false,
					disabled: false
				},
				{
					name: '精装修',
					checked: false,
					disabled: false
				},
				{
					name: '智能锁',
					checked: false,
					disabled: false
				},
				{
					name: '可短租',
					checked: false,
					disabled: false
				},
				{
					name: '首次出租',
					checked: false,
					disabled: false
				},
				{
					name: '免物业费',
					checked: false,
					disabled: false
				},
				{
					name: '民用水电',
					checked: false,
					disabled: false
				}
			],
			actionSheetList: [
				{
					text: '电梯房'
				},
				{
					text: '楼梯房'
				}
			],
			selectShow: false,
			radioCheckWidth: 'auto',
			radioCheckWrap: false,
			labelPosition: 'left',
			errorType: ['toast'],
			actionSheetShow: false,
			dateLabel:'随时入住',
			// 图片服务器地址
			action: config.baseUrl + '/common/upload',
		};
	},
	methods: {
		submit() {
			if(this.$u.test.isEmpty(this.model.roomType)){
				return this.$mytip.toast('请选择租房间')
			}
			if(this.$u.test.isEmpty(this.model.roomCode)){
				return this.$mytip.toast('请输入房间号')
			}
			if(this.$u.test.isEmpty(this.model.roomArea)){
				return this.$mytip.toast('请输入房间号')
			}
			if(this.$u.test.isEmpty(this.model.roomCode)){
				return this.$mytip.toast('请输入房屋面积')
			}
			if(this.$u.test.isEmpty(this.model.direction)){
				return this.$mytip.toast('请输入朝向')
			}
			if(this.$u.test.isEmpty(this.model.price)){
				return this.$mytip.toast('请输入租金')
			}
			let files = [];
			// 通过filter，筛选出上传进度为100的文件(因为某些上传失败的文件，进度值不为100，这个是可选的操作)
			files = this.$refs.uUpload.lists.filter(val => {
				return val.progress == 100;
			})
			if(this.$u.test.isEmpty(files)){
				return this.$mytip.toast('请至少选择一张房源图片')
			}
			let imageList = files.map(val => {
				return {
					imageName: val.response.realName,
					imagePath: val.response.fileName,
					imageUrl: val.response.url, 
					imageSize: val.file.size
				}
			})
			this.model.imageList = imageList
			if(this.$u.test.isEmpty(this.model.featureList)){
				return this.$mytip.toast('请至少选择一个房源亮点')
			}
			let url = "api/house/saveHouse";
			this.$u.post(url,this.model).then(data => {
				uni.$emit('findIndexHouseList', {});
				this.$u.route({
					type: 'tab',url: '/pages/index/index'
				})
			});
		},
		// 选择类型回调
		selectConfirm(e) {
			this.model.roomLabel = ''
			this.model.roomType = ''
			e.map((val, index) => {
				this.model.roomLabel += val.label;
				this.model.roomType += val.value;
			})
		},
		// 点击actionSheet回调
		actionSheetCallback(index) {
			uni.hideKeyboard();
			this.model.stepType = this.actionSheetList[index].text;
		},
		// checkbox选择发生变化
		checkboxGroupChange(e) {
			let featureList = e.map(val => {
				return {
					feature: val
				}
			})
			this.model.featureList = featureList
		},
		borderChange(index) {
			this.border = !index;
		},
		labelPositionChange(index) {
			this.labelPosition = index == 0 ? 'left' : 'top';
		},
		codeChange(text) {
			this.codeTips = text;
		},
		dateClick(){
			this.show = true
		},
		changeDate(e){
			this.model.startDate = e.result
			this.dateLabel = e.result
		}
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

.scroll-wrapper{
	position: absolute;
	left: 0rpx;
	right: 0rpx;
	top: 0rpx;
	bottom: 120rpx;
}

.bottom-btn {
	position: fixed;
	bottom: 8rpx;
	width: 100%;
	padding: 30rpx;
	border-top: 1rpx solid #ccc;
	background-color: #FFFFFF;
}

.dateBtn{
	position: absolute;
	right: 0rpx;
	color: #606266;
}

.slot-btn {
	width: 160rpx;
	height: 160rpx;
	display: flex;
	justify-content: center;
	align-items: center;
	background: rgb(244, 245, 246);
	border-radius: 10rpx;
}

.slot-btn__hover {
	background-color: rgb(235, 236, 238);
}

.custom-gap{
	width: 1000rpx;
	height: 10rpx;
	margin: 0 -200rpx 0 -200rpx;
	background-color: rgb(235, 236, 238);
}
</style>
