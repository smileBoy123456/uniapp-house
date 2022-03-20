<template>
	<view class="u-margin-left-20 u-margin-right-20">
		<u-search placeholder="请输入小区/商圈/地铁" v-model="keyword"  @search="clickSearch(value)"
		 :focus="true" action-text="取消" @custom="cancelSearch"></u-search>
		<!-- 搜索记录 -->
		<template v-if="historyList.length > 0">
			<view style="position: relative;">
				<u-card title="搜索记录" :border="false" :head-border-bottom="false" padding="0" title-size="28">
					<view slot="body">
						<u-cell-group :border="false">
							<u-cell-item  v-for="(item,index) in historyList" :key="index" :title="item" @click="clickSearchTag(item)"  :border-bottom="false"  :arrow="false">
								<!-- <u-icon slot="icon" size="32" name="search"></u-icon> -->
							</u-cell-item>
						</u-cell-group>
					</view>
				</u-card>
				<view class="arrow-right" @click="clearHistory">
					<u-icon name="trash"></u-icon>
					清除
				</view>
			</view>
		</template>
	</view>
</template>
<script>
	export default {
		data() {
			return {
				historyList:[],
				keyword:"",
			}
		},
		onLoad() {
			// 加载历史记录
			let history = uni.getStorageSync('searchHistory')
			this.historyList = history ? JSON.parse(history) : []
		},
		onReady() {
			
		},
		methods: {
			clickSearch(){
				if(this.keyword === ''){
					return uni.showToast({
						title: '关键词不能为空',
						icon: 'none'
					});
				}else{
					uni.hideKeyboard()
					this.addHistory()
					this.$u.route('/pages/search/searchList')
				}
			},
			// 自定义取消搜索事件
			cancelSearch(){
				uni.navigateBack({
					delta: 1
				})
			},
			clickSearchTag(item){
				this.keyword = item
				this.clickSearch()
			},
			// 加入搜索记录
			addHistory(){
				let index = this.historyList.indexOf(this.keyword)
				let history = this.historyList;
				if(index === -1){
					history.unshift(this.keyword)
				}else{
					history.unshift(history.splice(index,1)[0])
				}
				uni.setStorageSync('searchHistory',JSON.stringify(history))
			},
			clearHistory(){
				// 清除搜索记录
				uni.showModal({
					title: '提示',
					content: '是否清除搜索历史？',
					cancelText: '取消',
					confirmText: '确认',
					success: res => {
						if(res.confirm){
							uni.clearStorageSync();
							this.historyList = []
							this.keyword = ''
							this.$mytip.toast('清除成功')
						}
					}
				});
			}
		}
	}
</script>

<style>
	page {
		background: #FFFFFF;
	}
</style>

<style lang="scss" scoped>
	.item-title {
	    font-size: 28rpx;
	    color: $u-main-color;
	    font-weight: bold;
	}
	
	.item-price {
	    font-weight: normal;
	    font-size: 35rpx;
	    color: $u-type-warning;
	    margin-top: 3px;
	}
	
	.item-desc {
	    font-weight: normal;
	    font-size: 26rpx;
	    color: $u-tips-color;
	}
	
	.item-tag {
	    font-size: 24rpx;
	    color: $u-tips-color;
	    margin-top: 3px;
	}
	
	.arrow-right{
		position: absolute;
		top: 0rpx;
		right: 28rpx;
		font-weight: normal;
		font-size: 28rpx;
		color: $u-tips-color;
	}
</style>
