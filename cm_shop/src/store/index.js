import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  // 状态数据
  state: {
  },
  // 修改状态数据的方法
  mutations: {
    // 参数一、state ，代表上面的 state 对象
    // 参数二、传的数据
  },
  // 修改状态数据的方法 ajax,json
  actions: {
    // 参数一、context：上下文对象，用来调用mutations 中的方法，语法：context.commit('方法名', '参数')
    // 参数二、数据对象，包含用户名和密码
  },
  modules: {
  }
})
