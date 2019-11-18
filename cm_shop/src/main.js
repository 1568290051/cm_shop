import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import './assets/css/base.css'
// 引入vant框架
import Vant from 'vant'
import 'vant/lib/index.css'
// 引入axios
import axios from 'axios'
// 配置axios请求路径
axios.defaults.baseURL = 'http://127.0.0.1:9999/api/v1'
// 为axios添加拦截器，每次发送请求前都要调用
// axios.interceptors.request.use(function (config) {
//   // 获得令牌
//   let token = sessionStorage.getItem('token')
//   if (token !== null) {
//     // 把令牌添加到请求头的Authorization属性上
//     config.headers.Authorization = 'Bearer' + token
//   }
//   return config
// })

// vue挂载
Vue.use(Vant)
Vue.prototype.$http = axios

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
