<template>
	<view>
		<!-- #ifdef APP-PLUS -->
		<u-navbar :is-back="false" title="　" :border-bottom="false">
			<view class="u-flex u-row-right" style="width: 100%;">
				<view class="scan u-flex u-row-center">
					<u-icon name="scan" color="#969799" size="38" @click="scan"></u-icon>
				</view>
			</view>
		</u-navbar>
		<!-- #endif -->
		<view class="u-flex user-box u-p-l-30 u-p-r-20 u-p-t-30 u-p-b-30">
			<view class="u-flex" @click="profile">
				<view class="u-m-r-20">
					<u-avatar :src="pic" size="140"></u-avatar>
				</view>
				<view class="u-flex-1">
					<view class="u-font-18 u-p-b-20">{{vuex_user.user.userName}}</view>
					<view class="u-font-14 u-tips-color">昵称:{{vuex_user.user.nickName}}</view>
				</view>
			</view>
		</view>
		<view class="center-nav">
			<u-row>
				<u-col span="3" text-align="center" v-for="(item,index) in navList" :key="index">
					<view @click="clickNav(item.url)">
						<u-icon :name="item.icon" color="#909399" size="50"></u-icon>
						<view class="tabName">{{item.name}}</view>
					</view>
				</u-col>
			</u-row>
		</view>
		
		<view class="u-m-t-20">
			<u-cell-group>
				<u-cell-item icon="integral" title="实名认证" @click="setting"></u-cell-item>
				<u-cell-item icon="setting" title="个人中心" @click="setting"></u-cell-item>
			</u-cell-group>
		</view>
		
		<view class="u-m-t-20">
			<u-cell-group>
				<u-cell-item icon="level" :arrow="false" title="技术支持" value="18720989281"  @click="callPhoneNumber"></u-cell-item>
				<u-cell-item icon="question-circle" title="问题反馈" @click="problem"></u-cell-item>
				<u-cell-item icon="star" title="关于作者" @click="aboutMe"></u-cell-item>
			</u-cell-group>
		</view>
	</view>
</template>

<script>
	import config from "@/common/config.js" // 全局配置文件
	export default {
		data() {
			return {
				// pic:config.baseUrl+uni.getStorageSync('lifeData').vuex_user.user.avatar,
				pic:'https://sourcebyte.cn/profile/avatar/2021/04/27/2c7c5a9c6934323f5247c6fd4c0bdbc4.png',
				show:true,
				navList:[
				   {name:"优惠卷",icon:"coupon",url:"/pages/detail/preHouse"},
				   {name:"每日补贴",icon:"red-packet",url:"/pages/detail/preHouse"},
				   {name:"历史租约",icon:"order",url:"/pages/detail/preHouse"},
				   {name:"我的发布",icon:"edit-pen",url:"/pages/detail/preHouse"}
				],
			}
		},
		onShow(){
			// 检查token
			this.checkToken();
		},
		methods: {
			logout() {
				// 登录成功修改token与用户信息
				this.$u.vuex('vuex_token', '');
				this.$u.vuex('vuex_user', {});
				this.$u.route('/pages/login/login')
			},
			profile(){
				this.$u.route('/pages/profile/profile')
			},
			setting(){
				this.$u.route('/pages/profile/setting')
			},
			scan(){
				console.log('begin scan');
				// 允许从相机和相册扫码
				uni.scanCode({
				    success: function (res) {
				        console.log('条码类型：' + res.scanType);
				        console.log('条码内容：' + res.result);
				    }
				});
			},
			//拨打固定电话
			callPhoneNumber() {
				uni.makePhoneCall({
					phoneNumber: "18720989281",
				});
			},
			problem(){
				this.$u.route({
					url: 'pages/login/problem'
				})
			},
			// 关于作者
			aboutMe() {
				this.$u.route('/pages/profile/aboutMe')
			},
			checkToken(){
				// 判断Token是否有效
				let lifeData = uni.getStorageSync('lifeData');
				let token = lifeData.vuex_token
				if(!token){
					// 没有token 则跳转到登录
					return uni.reLaunch({
						url:'../login/login'
					})
				}
			},
			code(){
				this.$mytip.toast('敬请期待')
			},
			clickNav(url){
				this.$mytip.toast('敬请期待')
				// this.$u.route(url);
			},
		}
	}
</script>

<style lang="scss">
.scan{
	width: 54px;
	height: 44px;
	
	&:active{
		background-color: #ededed;
	}
}
.user-box{
	background-color: #fff;
	justify-content: space-between;
}

.center-nav{
	background-color: #FFFFFF;
	margin-top: 30rpx;
	padding: 30rpx 0;
	border-radius: 8px;
	.tabName{
		color: #606266;
		font-size: 26rpx;
		padding-top: 10rpx;
	}
}

.qiandao{
	color: #606266;
	font-size: 24rpx;
	margin-right: 24rpx;
	margin-top: 54rpx;
	justify-content:center;
	align-items: center;
}
</style>