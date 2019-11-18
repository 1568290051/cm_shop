<template>
  <div class="index">
    <!-- 导航栏 -->
    <van-nav-bar left-text="返回" :border="false" @click-left="onCate" @click-right="onLogin">
      <van-icon name="https://image3.suning.cn/uimg/cms/img/157199320847433454.png" slot="left" />
      <van-icon name="https://image3.suning.cn/uimg/cms/img/157199321817918653.png" slot="right" />
      <van-icon
        class="nav-title"
        name="https://image2.suning.cn/uimg/cms/img/157380172947421125.gif"
        slot="title"
      />
    </van-nav-bar>
    <!-- 搜索框 -->
    <form action="/" class="search">
      <van-search class="search-btn" v-model="search" background="transparent" placeholder="Hi,这里有你想要的" @search="onSearch" />
    </form>
    <!-- 轮播图 -->

  </div>
</template>

<script>
export default {
  data () {
    return {
      search: ''
    }
  },
  created () {},
  methods: {
    onCate () {
      this.$router.push('/categories')
    },
    onLogin () {
      this.$router.push('/login')
    },
    onSearch () {}
  }
}
</script>

<style lang="less">
.index {
  margin: 0;
  padding: 0;
  background-color: #f7f7f7;
  .van-nav-bar {
    background: url("../assets/index_nav1.png");
    .van-icon .van-icon__image {
      width: 25px;
      height: 30px;
    }
    .nav-title .van-icon__image {
      width: 225px;
      height: 44px;
      margin-left: -30px;
    }
  }
  .search{
    background: url("../assets/index_nav1.png");
    .van-search__content {
      border-radius: 15px;
      background-color: #fff8da;
    }
    .van-field__control {
      font-size: 12.5px;
    }
  }
}
</style>
