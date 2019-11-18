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
      <van-search
        class="search-btn"
        v-model="search"
        background="transparent"
        placeholder="Hi,这里有你想要的"
        @search="onSearch"
      />
    </form>
    <!-- 轮播图 -->
    <van-swipe :autoplay="3000" class="swipe" style="background-size: cover;">
      <van-swipe-item v-for="(image, index) in slideList" :key="index">
        <img :src="image.img_src" style="width: 350px; height:130px" />
      </van-swipe-item>
    </van-swipe>
    <!-- 分类频道 -->
    <van-grid :border="false" :center="true" :column-num="5">
      <van-grid-item v-for="(item, index) in cateList" :key="index" :text="item.hbo_name">
        <van-image slot="icon" width="42" height="42" :src="item.hbo_img"></van-image>
      </van-grid-item>
    </van-grid>
  </div>
</template>

<script>
export default {
  data () {
    return {
      search: '', // 搜索
      slideList: [], // 轮播图
      cateList: [] // 分类频道
    }
  },
  created () {
    // 轮播图
    this.$http.get('/index_slide').then(res => {
      this.slideList = res.data.data
    })
    // 分类频道
    this.$http.get('/index_cate').then(res => {
      this.cateList = res.data.data
      this.cateList.push({
        hbo_img:
          'https://image1.suning.cn/uimg/cms/img/157165912004147386.png?format=_is_120w_120h.webp',
        hbo_name: '更多'
      })
      console.log(this.cateList)
    })
  },
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
  // 顶部导航
  .van-nav-bar {
    background: url("../assets/imgs/index_nav1.png");
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
  // 搜索框
  .search {
    background: url("../assets/imgs/index_nav1.png");
    .van-search__content {
      border-radius: 15px;
      background-color: #fff8da;
    }
    .van-field__control {
      font-size: 12.5px;
    }
  }
  // 轮播图
  .swipe {
    height: 140px;
    background: url("../assets/imgs/index_nav2.png");
    .van-swipe-item {
      text-align: center;
      img {
        border-radius: 10px;
      }
    }
  }
}
</style>
