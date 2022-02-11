// 全局配置文件
// let baseUrl = 'http://192.168.0.106:8088';
let baseUrl = 'http://8.136.213.245:8090';
// 版本号 用于更新
let version = 1;
// vuex_version版本号 用于显示
let vuex_version = '1.0.' + version;
// 是否需要热更新（后台自动更新）
let flag_hot = false;

export default {
	baseUrl: baseUrl,
	version: version,
	vuex_version: vuex_version
}