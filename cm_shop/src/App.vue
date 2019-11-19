<template>
  <!-- <div style="width:100%; height:100%"> -->
  <div class="app">
    <router-view />
    <van-tabbar route>
      <van-tabbar-item replace to="/" icon="home-o">首页</van-tabbar-item>
      <van-tabbar-item replace to="/categories" icon="apps-o">分类</van-tabbar-item>
      <van-tabbar-item replace to="/channel" icon="apps-o">必抢清单</van-tabbar-item>
      <van-tabbar-item replace to="/cart" icon="shopping-cart-o" info="1">购物车</van-tabbar-item>
      <van-tabbar-item replace to="/me" icon="user-o">我</van-tabbar-item>
    </van-tabbar>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.app {
  height: 100%;
}
</style>
