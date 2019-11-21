import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  // 状态数据
  state: {
    isLogin: false,
    carteLength: 0
  },
  mutations: {
    // 购车车中商品数
    setCarteL (state, num) {
      state.carteLength = num
    },
    // 是否登录
    setLogin (state) {
      state.isLogin = true
    },
    setLogout (state) {
      state.isLogin = false
    }
  },
  actions: {},
  modules: {}
})
