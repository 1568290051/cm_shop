<template>
  <div class="app">
    <router-view />
    <van-tabbar route>
      <van-tabbar-item replace to="/" icon="home-o">首页</van-tabbar-item>
      <van-tabbar-item replace to="/categories" icon="apps-o">分类</van-tabbar-item>
      <van-tabbar-item replace to="/channel" icon="apps-o">必抢清单</van-tabbar-item>
      <van-tabbar-item replace to="/cart" icon="shopping-cart-o" :info="$store.state.carteLength">购物车</van-tabbar-item>
      <van-tabbar-item replace to="/me" icon="user-o">我</van-tabbar-item>
    </van-tabbar>
  </div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
  methods: {
    ...mapMutations(['setCarteL'])
  },
  created () {
    let total = 0
    let carte = JSON.parse(sessionStorage.getItem('carte'))
    if (carte != null) {
      carte.forEach(goods => {
        total += parseFloat(goods.num)
      })
    }
    this.setCarteL(total)
  }
}
</script>

<style>
.app {
  height: 100%;
}
</style>
