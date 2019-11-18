import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/', // 首页
    component: Index
  },
  {
    path: '/me', // 我的
    meta: {
      mustLogin: true
    },
    component: () => import('../views/Me.vue')
  },
  {
    path: '/login', // 登录
    component: () => import('../views/Login.vue')
  },
  {
    path: '/register', // 注册
    component: () => import('../views/Register.vue')
  },
  {
    path: '/categories', // 分类
    component: () => import('../views/Categories.vue')
  },
  {
    path: '/cart', // 购物车
    component: () => import('../views/Cart.vue')
  },
  {
    path: '/channel', // 必抢清单
    component: () => import('../views/Channel.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 路由导航守卫
router.beforeEach((to, from, next) => {
  if (to.meta !== undefined && to.meta.mustLogin !== undefined) {
    let token = sessionStorage.getItem('token')
    if (!token) {
      next('/login')
    } else {
      next()
    }
  } else {
    next()
  }
})

export default router
