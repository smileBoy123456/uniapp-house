import config from "./config.js"
//APP更新
export default function appUpdate() {
	console.log('start');
	let baseUrl = config.baseUrl;
	let version = config.version;
	console.log(baseUrl);
	// 打包时全局配置中设置该版本号
	console.log(version);
	console.log('开始更新');
	var url = baseUrl+'/api/checkVersion'
	// uni.request({
	// 	url: url, //检查更新的服务器地址
	// 	success: (res) => {
	// 		let remoteVersion = res.data.obj.title
	// 		plus.runtime.getProperty(plus.runtime.appid, function(wgtinfo) {
	// 			let client_version = wgtinfo.version
				
	// 			let needUpdated = false;
				
	// 			var flag_update = needUpdated
	// 			var flag_hot = false; 
	// 			if (flag_update) {
	// 				let downUrl = host + '/appController.do?download&Token=' + token + '&id=' + res.data.obj.id
	// 				// 提醒用户更新
	// 				uni.showModal({
	// 					title: '更新提示',
	// 					showCancel: false,
	// 					content: res.data.obj.des,
	// 					success: (e) => {

	// 						if (e.confirm) {
								
	// 							if (plus.os.name.toLowerCase() == 'ios') {
	// 								// 跳转到下载页面
	// 								plus.runtime.openURL(downUrl)
	// 							} else {
	// 								var dtask = plus.downloader.createDownload(
	// 									downUrl, {},
	// 									function(d, status) {
	// 										uni.showToast({
	// 											title: '下载完成',
	// 											mask: false,
	// 											duration: 1000
	// 										});
	// 										// 下载完成
	// 										if (status == 200) {
	// 											plus.runtime.install(plus.io.convertLocalFileSystemURL(d.filename), {}, e => e, function(error) {
	// 												uni.showToast({
	// 													title: '安装失败-01',
	// 													mask: false,
	// 													duration: 1500
	// 												});
	// 											})
	// 										} else {
	// 											uni.showToast({
	// 												title: '更新失败-02',
	// 												mask: false,
	// 												duration: 1500
	// 											});
	// 										}
	// 									});
	// 								try {
	// 									dtask.start(); // 开启下载的任务
	// 									var prg = 0;
	// 									var showLoading = plus.nativeUI.showWaiting("正在下载"); //创建一个showWaiting对象 
	// 									dtask.addEventListener('statechanged', function(
	// 										task,
	// 										status
	// 									) {
	// 										// 给下载任务设置一个监听 并根据状态  做操作
	// 										switch (task.state) {
	// 											case 1:
	// 												showLoading.setTitle("正在下载");
	// 												break;
	// 											case 2:
	// 												showLoading.setTitle("已连接到服务器");
	// 												break;
	// 											case 3:
	// 												prg = parseInt(
	// 													(parseFloat(task.downloadedSize) /
	// 														parseFloat(task.totalSize)) *
	// 													100
	// 												);
	// 												// showLoading.setTitle("  正在下载" + prg + "%  ");
	// 												showLoading.setTitle("  正在下载中...");
	// 												break;
	// 											case 4:
	// 												plus.nativeUI.closeWaiting();
	// 												//下载完成
	// 												break;
	// 										}
	// 									});
	// 								} catch (err) {
	// 									plus.nativeUI.closeWaiting();
	// 									uni.showToast({
	// 										title: '更新失败-03',
	// 										mask: false,
	// 										duration: 1500
	// 									});
	// 								}
	// 							}
	// 						}
	// 					}
	// 				})
	// 			} else if (flag_hot) {
	// 				uni.downloadFile({
	// 					url: res.data.wgtUrl,
	// 					success: (downloadResult) => {
	// 						console.log(downloadResult.tempFilePath)
	// 						if (downloadResult.statusCode === 200) {
	// 							plus.nativeUI.toast(`正在热更新!${res.data.versionCode}`);
	// 							plus.runtime.install(downloadResult.tempFilePath, {
	// 								force: false
	// 							}, function() {
	// 								plus.nativeUI.toast("热更新成功");
	// 								plus.runtime.restart();
	// 							}, function(e) {
	// 								console.log(e)
	// 								plus.nativeUI.toast(`热更新失败:${e.message}`);
	// 							});
	// 						}
	// 					}
	// 				});
	// 			}
	// 		});
	// 	}
	// })
}
