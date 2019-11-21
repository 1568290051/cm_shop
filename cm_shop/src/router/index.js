import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [{
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
  path: '/setting', // 用户设置
  component: () => import('../components/Setting.vue')
},
{
  path: '/address', // 设置地址
  component: () => import('../components/Set_address.vue')
},
{
  path: '/login', // 登录
  component: () => import('../components/Login.vue')
},
{
  path: '/register', // 注册
  component: () => import('../components/Register.vue')
},
{
  path: '/categories', // 分类
  component: () => import('../views/Categories.vue')
},
{
  path: '/cart', // 购物车
  component: () => import('../views/Cart.vue'),
  redirect: '/carte',
  children: [{ // 未登录
    path: '/ncarte',
    component: () => import('../components/Carte_noLogin.vue')
  },
  {
    path: '/carte',
    component: () => import('../components/Carte.vue')
  }
  ]
},
{
  path: '/channel', // 必抢清单
  component: () => import('../views/Channel.vue')
},
{
  path: '/search/', // 搜索
  component: () => import('../views/Search.vue')
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
    // 根据token和是否购买商品切换购物车
    if (to.path === '/carte') {
      let token = sessionStorage.getItem('token')
      let carte = sessionStorage.getItem('carte')
      if (token == null && carte == null) {
        next('/ncarte')
      } else {
        next()
      }
      return
    }

    next()
  }
})

export default router
