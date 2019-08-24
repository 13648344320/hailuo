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
    cartCount: 0
  }, //共享数据
  mutations: { //添加修改数据函数
    increment(state) { //购物车数量加一
      state.cartCount++
    },
    reduce(state) { //购物车数量减一
      state.cartCount--
    },
    clear(state) { //清空购物车
      state.cartCount = 0
    }
  },
  getters: { //添加获取数据函数
    getCartCount(state) {
      return state.cartCount;
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
