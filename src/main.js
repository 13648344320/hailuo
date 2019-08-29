import Vue from 'vue'
import App from './App.vue'
import router from './router'
import MyHeader from './components/Myheader'
import MyFooter from './components/MyFooter'
import Carousel from './components/Carousel'
import TencnetMap from './components/TencnetMap'


//  引入轮播图组件部分
import VueAwesomeSwiper from 'vue-awesome-swiper'
import 'swiper/dist/css/swiper.css'

   Vue.use(VueAwesomeSwiper)


import axios from 'axios'
Vue.config.productionTip = false;
Vue.component("my-header", MyHeader);
Vue.component("my-footer", MyFooter);
Vue.component("Carousel", Carousel);
Vue.component("tencnetMap",TencnetMap);

Vue.prototype.axios = axios;
axios.defaults.baseURL  = "http://localhost:5050";
// 引入第三方模块  dialog

import VuejsDialog from "vuejs-dialog"

Vue.use(VuejsDialog)

//    引入vuex第三方模块
import Vuex from "vuex"
//   注册
Vue.use(Vuex)
//   创建一个vuex的存储对象
var store = new Vuex.Store({
  state: {
    uname: ''
  }, //共享数据
  mutations: { //添加修改数据函数
    show(state,uname) { //
      state.uname=uname
    },
  },
  getters: { //添加获取数据函数
    get(state) {
      return state.uname;
    }
  },
  actions: { //添加异步操作数据函数

  },
})

new Vue({
  router,
  store,
  render: h => h(App),
}).$mount('#app')
