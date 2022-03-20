(global["webpackJsonp"] = global["webpackJsonp"] || []).push([["uview-ui/components/u-tabs-swiper/u-tabs-swiper"],{

/***/ 356:
/*!******************************************************************************************************!*\
  !*** F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue ***!
  \******************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./u-tabs-swiper.vue?vue&type=template&id=9c8ef540&scoped=true& */ 357);
/* harmony import */ var _u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./u-tabs-swiper.vue?vue&type=script&lang=js& */ 359);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__[key]; }) }(__WEBPACK_IMPORT_KEY__));
/* harmony import */ var _u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./u-tabs-swiper.vue?vue&type=style&index=0&id=9c8ef540&scoped=true&lang=scss& */ 361);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib/runtime/componentNormalizer.js */ 10);

var renderjs





/* normalize component */

var component = Object(_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "9c8ef540",
  null,
  false,
  _u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["components"],
  renderjs
)

component.options.__file = "uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ 357:
/*!*************************************************************************************************************************************************!*\
  !*** F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=template&id=9c8ef540&scoped=true& ***!
  \*************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns, recyclableRender, components */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_16_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_template_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_uni_app_loader_page_meta_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--16-0!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/template.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-uni-app-loader/page-meta.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!./u-tabs-swiper.vue?vue&type=template&id=9c8ef540&scoped=true& */ 358);
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_16_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_template_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_uni_app_loader_page_meta_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_16_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_template_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_uni_app_loader_page_meta_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "recyclableRender", function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_16_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_template_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_uni_app_loader_page_meta_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["recyclableRender"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "components", function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_16_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_template_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_uni_app_loader_page_meta_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_template_id_9c8ef540_scoped_true___WEBPACK_IMPORTED_MODULE_0__["components"]; });



/***/ }),

/***/ 358:
/*!*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--16-0!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/template.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-uni-app-loader/page-meta.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=template&id=9c8ef540&scoped=true& ***!
  \*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns, recyclableRender, components */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "recyclableRender", function() { return recyclableRender; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "components", function() { return components; });
var components
try {
  components = {
    uBadge: function() {
      return __webpack_require__.e(/*! import() | uview-ui/components/u-badge/u-badge */ "uview-ui/components/u-badge/u-badge").then(__webpack_require__.bind(null, /*! @/uview-ui/components/u-badge/u-badge.vue */ 504))
    }
  }
} catch (e) {
  if (
    e.message.indexOf("Cannot find module") !== -1 &&
    e.message.indexOf(".vue") !== -1
  ) {
    console.error(e.message)
    console.error("1. 排查组件名称拼写是否正确")
    console.error(
      "2. 排查组件是否符合 easycom 规范，文档：https://uniapp.dcloud.net.cn/collocation/pages?id=easycom"
    )
    console.error(
      "3. 若组件不符合 easycom 规范，需手动引入，并在 components 中注册该组件"
    )
  } else {
    throw e
  }
}
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  var l0 = _vm.__map(_vm.getTabs, function(item, index) {
    var $orig = _vm.__get_orig(item)

    var s0 = _vm.__get_style([_vm.tabItemStyle(index)])

    return {
      $orig: $orig,
      s0: s0
    }
  })

  var s1 = _vm.showBar ? _vm.__get_style([_vm.tabBarStyle]) : null
  _vm.$mp.data = Object.assign(
    {},
    {
      $root: {
        l0: l0,
        s1: s1
      }
    }
  )
}
var recyclableRender = false
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ 359:
/*!*******************************************************************************************************************************!*\
  !*** F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!./node_modules/babel-loader/lib!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--12-1!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/script.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!./u-tabs-swiper.vue?vue&type=script&lang=js& */ 360);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_babel_loader_lib_index_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_12_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_script_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ 360:
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--12-1!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/script.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=script&lang=js& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(uni) {Object.defineProperty(exports, "__esModule", { value: true });exports.default = void 0;var _regenerator = _interopRequireDefault(__webpack_require__(/*! ./node_modules/@babel/runtime/regenerator */ 19));


















var _colorGradient = _interopRequireDefault(__webpack_require__(/*! ../../libs/function/colorGradient */ 24));function _interopRequireDefault(obj) {return obj && obj.__esModule ? obj : { default: obj };}function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) {try {var info = gen[key](arg);var value = info.value;} catch (error) {reject(error);return;}if (info.done) {resolve(value);} else {Promise.resolve(value).then(_next, _throw);}}function _asyncToGenerator(fn) {return function () {var self = this,args = arguments;return new Promise(function (resolve, reject) {var gen = fn.apply(self, args);function _next(value) {asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value);}function _throw(err) {asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err);}_next(undefined);});};}
var color = _colorGradient.default;var _uni$getSystemInfoSyn =
uni.getSystemInfoSync(),windowWidth = _uni$getSystemInfoSyn.windowWidth;
var preId = 'UEl_';

/**
                     * tabsSwiper 全屏选项卡
                     * @description 该组件内部实现主要依托于uniapp的scroll-view和swiper组件，主要特色是切换过程中，tabsSwiper文字的颜色可以渐变，底部滑块可以 跟随式滑动，活动tab滚动居中等。应用场景可以用于需要左右切换页面，比如商城的订单中心(待收货-待付款-待评价-已退货)等应用场景。
                     * @tutorial https://www.uviewui.com/components/tabsSwiper.html
                     * @property {Boolean} is-scroll tabs是否可以左右拖动（默认true）
                     * @property {Array} list 标签数组，元素为对象，如[{name: '推荐'}]
                     * @property {String Number} current 指定哪个tab为激活状态（默认0）
                     * @property {String Number} height 导航栏的高度，单位rpx（默认80）
                     * @property {String Number} font-size tab文字大小，单位rpx（默认30）
                     * @property {String Number} swiper-width tabs组件外部swiper的宽度，默认为屏幕宽度，单位rpx（默认750）
                     * @property {String} active-color 滑块和激活tab文字的颜色（默认#2979ff）
                     * @property {String} inactive-color tabs文字颜色（默认#303133）
                     * @property {String Number} bar-width 滑块宽度，单位rpx（默认40）
                     * @property {String Number} bar-height 滑块高度，单位rpx（默认6）
                     * @property {Object} bar-style 底部滑块的样式，对象形式
                     * @property {Object} active-item-style 活动tabs item的样式，对象形式
                     * @property {Boolean} show-bar 是否显示底部的滑块（默认true）
                     * @property {String Number} gutter 单个tab标签的左右内边距之和，单位rpx（默认40）
                     * @property {String} bg-color tabs导航栏的背景颜色（默认#ffffff）
                     * @property {String} name 组件内部读取的list参数中的属性名，见官网说明（默认name）
                     * @property {String} count 组件内部读取的list参数中的属性名（badge徽标数），同name属性的使用，见官网说明（默认count）
                     * @property {Array} offset 设置badge徽标数的位置偏移，格式为 [x, y]，也即设置的为top和right的值，单位rpx（默认[5, 20]）
                     * @property {Boolean} bold 激活选项的字体是否加粗（默认true）
                     * @event {Function} change 点击标签时触发
                     * @example <u-tabs-swiper ref="tabs" :list="list" :is-scroll="false"></u-tabs-swiper>
                     */var _default2 =
{
  name: "u-tabs-swiper",
  props: {
    // 导航菜单是否需要滚动，如只有2或者3个的时候，就不需要滚动了，此时使用flex平分tab的宽度
    isScroll: {
      type: Boolean,
      default: true },

    //需循环的标签列表
    list: {
      type: Array,
      default: function _default() {
        return [];
      } },

    // 当前活动tab的索引
    current: {
      type: [Number, String],
      default: 0 },

    // 导航栏的高度和行高，单位rpx
    height: {
      type: [Number, String],
      default: 80 },

    // 字体大小，单位rpx
    fontSize: {
      type: [Number, String],
      default: 30 },

    // 过渡动画时长, 单位s
    // duration: {
    // 	type: [Number, String],
    // 	default: 0.5
    // },
    swiperWidth: {
      //line3生效, 外部swiper的宽度, 单位rpx
      type: [String, Number],
      default: 750 },

    // 选中项的主题颜色
    activeColor: {
      type: String,
      default: '#2979ff' },

    // 未选中项的颜色
    inactiveColor: {
      type: String,
      default: '#303133' },

    // 菜单底部移动的bar的宽度，单位rpx
    barWidth: {
      type: [Number, String],
      default: 40 },

    // 移动bar的高度
    barHeight: {
      type: [Number, String],
      default: 6 },

    // 单个tab的左或右内边距（各占一半），单位rpx
    gutter: {
      type: [Number, String],
      default: 40 },

    // 如果是绝对定位，添加z-index值
    zIndex: {
      type: [Number, String],
      default: 1 },

    // 导航栏的背景颜色
    bgColor: {
      type: String,
      default: '#ffffff' },

    //滚动至中心目标类型
    autoCenterMode: {
      type: String,
      default: 'window' },

    // 读取传入的数组对象的属性(tab名称)
    name: {
      type: String,
      default: 'name' },

    // 读取传入的数组对象的属性(徽标数)
    count: {
      type: String,
      default: 'count' },

    // 徽标数位置偏移
    offset: {
      type: Array,
      default: function _default() {
        return [5, 20];
      } },

    // 活动tab字体是否加粗
    bold: {
      type: Boolean,
      default: true },

    // 当前活动tab item的样式
    activeItemStyle: {
      type: Object,
      default: function _default() {
        return {};
      } },

    // 是否显示底部的滑块
    showBar: {
      type: Boolean,
      default: true },

    // 底部滑块的自定义样式
    barStyle: {
      type: Object,
      default: function _default() {
        return {};
      } } },


  data: function data() {
    return {
      scrollLeft: 0, // 滚动scroll-view的左边滚动距离
      tabQueryInfo: [], // 存放对tab菜单查询后的节点信息
      windowWidth: 0, // 屏幕宽度，单位为px
      //scrollBarLeft: 0, // 移动bar需要通过translateX()移动的距离
      animationFinishCurrent: this.current,
      componentsWidth: 0,
      line3AddDx: 0,
      line3Dx: 0,
      preId: preId,
      sW: 0,
      tabsInfo: [],
      colorGradientArr: [],
      colorStep: 100 // 两个颜色之间的渐变等分
    };
  },
  computed: {
    // 获取当前活跃的current值
    getCurrent: function getCurrent() {
      var current = Number(this.current);
      // 判断是否超出边界
      if (current > this.getTabs.length - 1) {
        return this.getTabs.length - 1;
      }
      if (current < 0) return 0;
      return current;
    },
    getTabs: function getTabs() {
      return this.list;
    },
    // 滑块需要移动的距离
    scrollBarLeft: function scrollBarLeft() {
      return Number(this.line3Dx) + Number(this.line3AddDx);
    },
    // 滑块的宽度转为px单位
    barWidthPx: function barWidthPx() {
      return uni.upx2px(this.barWidth);
    },
    // tab的样式
    tabItemStyle: function tabItemStyle() {var _this = this;
      return function (index) {
        var style = {
          height: _this.height + 'rpx',
          lineHeight: _this.height + 'rpx',
          padding: "0 ".concat(_this.gutter / 2, "rpx"),
          color: _this.tabsInfo.length > 0 ? _this.tabsInfo[index] ? _this.tabsInfo[index].color : _this.activeColor : _this.inactiveColor,
          fontSize: _this.fontSize + 'rpx',
          zIndex: _this.zIndex + 2,
          fontWeight: index == _this.getCurrent && _this.bold ? 'bold' : 'normal' };

        if (index == _this.getCurrent) {
          // 给选中的tab item添加外部自定义的样式
          style = Object.assign(style, _this.activeItemStyle);
        }
        return style;
      };
    },
    // 底部滑块的样式
    tabBarStyle: function tabBarStyle() {
      var style = {
        width: this.barWidthPx + 'px',
        height: this.barHeight + 'rpx',
        borderRadius: '100px',
        backgroundColor: this.activeColor,
        left: this.scrollBarLeft + 'px' };

      return Object.assign(style, this.barStyle);
    } },

  watch: {
    current: function current(n, o) {
      this.change(n);
      this.setFinishCurrent(n);
    },
    list: function list() {var _this2 = this;
      this.$nextTick(function () {
        _this2.init();
      });
    } },

  mounted: function mounted() {
    this.init();
  },
  methods: {
    init: function init() {var _this3 = this;return _asyncToGenerator( /*#__PURE__*/_regenerator.default.mark(function _callee() {return _regenerator.default.wrap(function _callee$(_context) {while (1) {switch (_context.prev = _context.next) {case 0:
                _this3.countPx();_context.next = 3;return (
                  _this3.getTabsInfo());case 3:
                _this3.countLine3Dx();
                _this3.getQuery(function () {
                  _this3.setScrollViewToCenter();
                });
                // 颜色渐变过程数组
                _this3.colorGradientArr = color.colorGradient(_this3.inactiveColor, _this3.activeColor, _this3.colorStep);case 6:case "end":return _context.stop();}}}, _callee);}))();
    },
    // 获取各个tab的节点信息
    getTabsInfo: function getTabsInfo() {var _this4 = this;
      return new Promise(function (resolve, reject) {
        var view = uni.createSelectorQuery().in(_this4);
        for (var i = 0; i < _this4.list.length; i++) {
          view.select('.' + preId + i).boundingClientRect();
        }
        view.exec(function (res) {
          var arr = [];
          for (var _i = 0; _i < res.length; _i++) {
            // 给每个tab添加其文字颜色属性
            res[_i].color = _this4.inactiveColor;
            // 当前tab直接赋予activeColor
            if (_i == _this4.getCurrent) res[_i].color = _this4.activeColor;
            arr.push(res[_i]);
          }
          _this4.tabsInfo = arr;
          resolve();
        });
      });
    },
    // 当swiper滑动结束，计算滑块最终要停留的位置
    countLine3Dx: function countLine3Dx() {
      var tab = this.tabsInfo[this.animationFinishCurrent];
      // 让滑块中心点和当前tab中心重合
      if (tab) this.line3Dx = tab.left + tab.width / 2 - this.barWidthPx / 2 - this.tabsInfo[0].left;
    },
    countPx: function countPx() {
      // swiper宽度由rpx转为px单位，因为dx等，都是px单位
      this.sW = uni.upx2px(Number(this.swiperWidth));
    },
    emit: function emit(index) {
      this.$emit('change', index);
    },
    change: function change() {
      this.setScrollViewToCenter();
    },
    getQuery: function getQuery(cb) {var _this5 = this;
      try {
        var view = uni.createSelectorQuery().in(this).select('.u-tabs');
        view.fields({
          size: true },

        function (data) {
          if (data) {
            _this5.componentsWidth = data.width;
            if (cb && typeof cb === 'function') cb(data);
          } else {
            _this5.getQuery(cb);
          }
        }).
        exec();
      } catch (e) {
        this.componentsWidth = windowWidth;
      }
    },
    // 把活动tab移动到屏幕中心点
    setScrollViewToCenter: function setScrollViewToCenter() {
      var tab;
      tab = this.tabsInfo[this.animationFinishCurrent];
      if (tab) {
        var tabCenter = tab.left + tab.width / 2;
        var fatherWidth;
        // 活动tab移动到中心时，以屏幕还是tab组件为宽度为基准
        if (this.autoCenterMode === 'window') {
          fatherWidth = windowWidth;
        } else {
          fatherWidth = this.componentsWidth;
        }
        this.scrollLeft = tabCenter - fatherWidth / 2;
      }
    },
    setDx: function setDx(dx) {
      var nextTabIndex = dx > 0 ? this.animationFinishCurrent + 1 : this.animationFinishCurrent - 1;
      // 判断索引是否超出边界
      nextTabIndex = nextTabIndex <= 0 ? 0 : nextTabIndex;
      nextTabIndex = nextTabIndex >= this.list.length ? this.list.length - 1 : nextTabIndex;
      var tab = this.tabsInfo[nextTabIndex];
      // 当前tab中心点x轴坐标
      var nowTab = this.tabsInfo[this.animationFinishCurrent];
      var nowTabX = nowTab.left + nowTab.width / 2;
      // 下一个tab
      var nextTab = this.tabsInfo[nextTabIndex];
      var nextTabX = nextTab.left + nextTab.width / 2;
      // 两个tab之间的距离，因为下一个tab可能在当前tab的左边或者右边，取绝对值即可
      var distanceX = Math.abs(nextTabX - nowTabX);
      this.line3AddDx = dx / this.sW * distanceX;
      this.setTabColor(this.animationFinishCurrent, nextTabIndex, dx);
    },
    // 设置tab的颜色
    setTabColor: function setTabColor(nowTabIndex, nextTabIndex, dx) {
      var colorIndex = Math.abs(Math.ceil(dx / this.sW * 100));
      var colorLength = this.colorGradientArr.length;
      // 处理超出索引边界的情况
      colorIndex = colorIndex >= colorLength ? colorLength - 1 : colorIndex <= 0 ? 0 : colorIndex;
      // 设置下一个tab的颜色
      this.tabsInfo[nextTabIndex].color = this.colorGradientArr[colorIndex];
      // 设置当前tab的颜色
      this.tabsInfo[nowTabIndex].color = this.colorGradientArr[colorLength - 1 - colorIndex];
    },
    // swiper结束滑动
    setFinishCurrent: function setFinishCurrent(current) {var _this6 = this;
      // 如果滑动的索引不一致，修改tab颜色变化，因为可能会有直接点击tab的情况
      this.tabsInfo.map(function (val, index) {
        if (current == index) val.color = _this6.activeColor;else
        val.color = _this6.inactiveColor;
        return val;
      });
      this.line3AddDx = 0;
      this.animationFinishCurrent = current;
      this.countLine3Dx();
    } } };exports.default = _default2;
/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./node_modules/@dcloudio/uni-mp-weixin/dist/index.js */ 1)["default"]))

/***/ }),

/***/ 361:
/*!****************************************************************************************************************************************************************!*\
  !*** F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=style&index=0&id=9c8ef540&scoped=true&lang=scss& ***!
  \****************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!./node_modules/mini-css-extract-plugin/dist/loader.js??ref--8-oneOf-1-0!./node_modules/css-loader/dist/cjs.js??ref--8-oneOf-1-1!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--8-oneOf-1-2!./node_modules/postcss-loader/src??ref--8-oneOf-1-3!./node_modules/sass-loader/dist/cjs.js??ref--8-oneOf-1-4!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--8-oneOf-1-5!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!./u-tabs-swiper.vue?vue&type=style&index=0&id=9c8ef540&scoped=true&lang=scss& */ 362);
/* harmony import */ var _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0__) if(__WEBPACK_IMPORT_KEY__ !== 'default') (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_mini_css_extract_plugin_dist_loader_js_ref_8_oneOf_1_0_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_css_loader_dist_cjs_js_ref_8_oneOf_1_1_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_loaders_stylePostLoader_js_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_2_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_postcss_loader_src_index_js_ref_8_oneOf_1_3_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_sass_loader_dist_cjs_js_ref_8_oneOf_1_4_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_webpack_preprocess_loader_index_js_ref_8_oneOf_1_5_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_vue_cli_plugin_uni_packages_vue_loader_lib_index_js_vue_loader_options_C_Users_Administrator_Downloads_HBuilderX_plugins_uniapp_cli_node_modules_dcloudio_webpack_uni_mp_loader_lib_style_js_u_tabs_swiper_vue_vue_type_style_index_0_id_9c8ef540_scoped_true_lang_scss___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ 362:
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/mini-css-extract-plugin/dist/loader.js??ref--8-oneOf-1-0!./node_modules/css-loader/dist/cjs.js??ref--8-oneOf-1-1!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--8-oneOf-1-2!./node_modules/postcss-loader/src??ref--8-oneOf-1-3!./node_modules/sass-loader/dist/cjs.js??ref--8-oneOf-1-4!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/webpack-preprocess-loader??ref--8-oneOf-1-5!./node_modules/@dcloudio/vue-cli-plugin-uni/packages/vue-loader/lib??vue-loader-options!./node_modules/@dcloudio/webpack-uni-mp-loader/lib/style.js!F:/code/java/YaYaSite/RuoYi/web/house-life/uview-ui/components/u-tabs-swiper/u-tabs-swiper.vue?vue&type=style&index=0&id=9c8ef540&scoped=true&lang=scss& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

// extracted by mini-css-extract-plugin
    if(false) { var cssReload; }
  

/***/ })

}]);
//# sourceMappingURL=../../../../.sourcemap/mp-weixin/uview-ui/components/u-tabs-swiper/u-tabs-swiper.js.map
;(global["webpackJsonp"] = global["webpackJsonp"] || []).push([
    'uview-ui/components/u-tabs-swiper/u-tabs-swiper-create-component',
    {
        'uview-ui/components/u-tabs-swiper/u-tabs-swiper-create-component':(function(module, exports, __webpack_require__){
            __webpack_require__('1')['createComponent'](__webpack_require__(356))
        })
    },
    [['uview-ui/components/u-tabs-swiper/u-tabs-swiper-create-component']]
]);
