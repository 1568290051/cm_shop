<template>
  <div class="index">
    <!-- 导航栏 -->
    <van-nav-bar left-text="返回" :border="false" @click-left="onCate" @click-right="onLogin">
      <van-icon name="https://image3.suning.cn/uimg/cms/img/157199320847433454.png" slot="left" />
      <van-icon name="https://image3.suning.cn/uimg/cms/img/157199321817918653.png" slot="right" />
      <van-icon class="nav-title" name="https://image2.suning.cn/uimg/cms/img/157380172947421125.gif" slot="title" />
    </van-nav-bar>
    <!-- 搜索框 -->
    <form action="/" class="search">
      <van-search class="search-btn" v-model="search" background="transparent" placeholder="Hi,这里有你想要的"
        @search="onSearch" />
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
    <!-- 广告优惠 -->
    <van-row>
      <van-col>
        <van-image width="187" height="105" src="https://image2.suning.cn/uimg/cms/img/157405818239262513.gif" />
      </van-col>
      <van-col>
        <van-image width="187" height="105" src="https://image1.suning.cn/uimg/cms/img/157405820585726171.gif" />
      </van-col>
    </van-row>
    <!-- 广告2 -->
    <van-row>
      <van-col>
        <van-image width="186" height="117" src="https://image3.suning.cn/uimg/cms/img/157330223943814123.png" />
      </van-col>
      <van-col>
        <van-image width="93" height="117" src="https://image1.suning.cn/uimg/cms/img/157330224785306243.gif" />
      </van-col>
      <van-col>
        <van-image width="93" height="117" src="https://image1.suning.cn/uimg/cms/img/157330227372982455.gif" />
      </van-col>
    </van-row>
    <!-- 消息通知 -->
    <van-grid class="tz" :border="false" :center="true" :column-num="2">
      <van-grid-item class="tz-a">
        <div slot="default">
          <van-row>
            <van-col class="tz-title">
              <h4>限时抢购</h4>
            </van-col>
            <van-col offset="1" class="tz-js">
              <van-count-down :time="time" format="HH:mm:ss:SSS">
                <template v-slot="timeData">
                  <span class="item">{{ timeData.hours }}</span>
                  <span class="item">{{ timeData.minutes }}</span>
                  <span class="item">{{ timeData.seconds }}</span>
                </template>
              </van-count-down>
            </van-col>
          </van-row>
          <van-row>
            <span class="tz-ind">潮流好物限时抢</span>
          </van-row>
          <van-grid :column-num="2" class="tz-show" :border="false">
            <van-grid-item>
              <van-image slot="icon" width="60" height="60"
                src="http://image3.suning.cn/uimg/nmps/MBLSPZT/10038302411317352204picH_1_370x370.jpg"></van-image>
              <p slot="text">
                <span>￥</span>
                <span>6</span>
                <span>.6</span>
              </p>
            </van-grid-item>
            <van-grid-item>
              <van-image slot="icon" width="60" height="60"
                src="http://image1.suning.cn/uimg/nmps/MBLSPZT/10038302411003657529picH_1_370x370.jpg"></van-image>
              <p slot="text">
                <span>￥</span>
                <span>6</span>
                <span>.6</span>
              </p>
            </van-grid-item>
          </van-grid>
        </div>
      </van-grid-item>
      <van-grid-item class="tz-b">
        <div slot="default">
          <van-row>
            <van-col class="tz-title">
              <h4>大聚惠</h4>
            </van-col>
          </van-row>
          <van-row>
            <span class="tz-ind">好货一元秒</span>
          </van-row>
          <van-grid :column-num="2" class="tz-show" :border="false">
            <van-grid-item>
              <van-image slot="icon" width="60" height="60"
                src="https://image1.suning.cn/uimg/cms/img/157339041898118122.jpg?format=_is_200w_200h.webp">
              </van-image>
              <p slot="text">
                <span class="tz-name">清风</span>
              </p>
            </van-grid-item>
            <van-grid-item>
              <van-image slot="icon" width="60" height="60"
                src="https://image2.suning.cn/uimg/cms/img/157339041429191121.jpg?format=_is_200w_200h.webp">
              </van-image>
              <p slot="text">
                <span class="tz-name">小米</span>
              </p>
            </van-grid-item>
          </van-grid>
        </div>
      </van-grid-item>
    </van-grid>
    <!-- 头条 -->
    <van-grid class="tt">
      <van-grid-item class="tz-c">
        <div slot="default" style="width: 340px; overflow: hidden;">
          <van-row>
            <van-col>
              <van-image width="56" height="15" src="https://image3.suning.cn/uimg/cms/img/157164888626937126.png" />
              <van-icon color="#ff6f00" name="volume-o" style="margin-left: 5px" />
            </van-col>
            <van-col offset="1" class="notice">
              <!-- 消息轮播 -->
              <van-swipe style="height: 33px; width: 312px; padding-left: 28px;" :show-indicators="false" vertical
                :autoplay="3000">
                <van-swipe-item>家居装修有什么你一定不可忽略的小细节呢？</van-swipe-item>
                <van-swipe-item>葡萄酒该如何搭配美食？快来看看吧！</van-swipe-item>
                <van-swipe-item>简单容易的技巧，教你辨别真假葡萄酒</van-swipe-item>
                <van-swipe-item>农村安空调可别乱模仿，需要注意这几点</van-swipe-item>
              </van-swipe>
              <!-- 消息推送 -->
              <!-- <van-notice-bar :text="text" color="#1989fa" background="#ecf9ff" left-icon="volume-o"></van-notice-bar> -->
            </van-col>
          </van-row>
        </div>
      </van-grid-item>
    </van-grid>
    <!-- 猜你喜欢 -->
    <van-row style="margin-top: 20px">
      <van-col>
        <van-image width="351" height="30"
          src="https://image1.suning.cn/uimg/cms/img/154518371251022769.png?format=_is_1242w_100h.webp" />
      </van-col>
    </van-row>
    <!-- 商品列表 -->
    <div class="goods_list">
      <ul class="left" key="1">
        <li v-for="(item) in leftGoods" :key="item.id">
          <img :src="item.img" alt="">
          <p class="goods_title van-multi-ellipsis--l2">{{item.title}}</p>
          <div class="footer">
            <span class="flag">￥</span>
            <span class="goods_price">{{item.price}}</span>
            <span class="goods_comments">{{item.estim > 100 ? item.estim + '+' : item.estim + '条'}}评价</span>
          </div>
        </li>
      </ul>
      <ul class="right" key="2">
        <li v-for="(item) in rightGoods" :key="item.id">
          <img :src="item.img" alt="">
          <p class="goods_title van-multi-ellipsis--l2">{{item.title}}</p>
          <div class="footer">
            <span class="flag">￥</span>
            <span class="goods_price">{{item.price}}</span>
            <span class="goods_comments">{{item.estim > 100 ? item.estim + '+' : item.estim + '条'}}评价</span>
          </div>
        </li>
      </ul>
    </div>
    <!-- 底部 -->
    <div class="index-bottom">
      <img src="../assets/image/snlogo.png"> <br>
      <img src="../assets/image/app-down.webp">
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      search: '', // 搜索
      slideList: [], // 轮播图
      cateList: [], // 分类频道
      time: 8 * 60 * 60 * 1000, // 单位毫秒
      timeData: {
        // 倒计时
        hours: 0,
        minutes: 0,
        seconds: 0
      },
      text: '唯一一个没有假币的发达国家，原因：不敢造，造不出，不值得',
      leftGoods: [],
      rightGoods: []
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
    })
    // 推荐商品
    this.$http.get('/index_goods').then(res => {
      res.data.data.forEach((obj, i) => {
        if (i % 2 === 0) this.leftGoods.push(obj)
        else this.rightGoods.push(obj)
      })
    })
  },
  methods: {
    onCate () {
      this.$router.push('/categories')
    },
    onLogin () {
      this.$router.push('/login')
    },
    onSearch () { }
  }
}
</script>

<style lang="less">
.index {
  overflow: hidden;
  margin: 0;
  padding: 0;
  margin-bottom: 60px;
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
  // 广告优惠
  // 通知
  .tz {
    margin: 10px;
    margin-bottom: 0;
    .van-grid-item__content--center {
      align-items: normal;
    }
    .tz-a {
      .van-grid-item__content.van-grid-item__content--center {
        border-top-left-radius: 15px;
      }
    }
    .tz-b {
      .van-grid-item__content.van-grid-item__content--center {
        border-top-right-radius: 15px;
      }
    }
    // 标题
    .tz-title h4 {
      margin: 0;
    }
    // 倒计时
    .tz-js span {
      color: #000;
      font-weight: bold;
    }
    .item {
      display: inline-block;
      width: 18px;
      margin-right: 5px;
      color: #fff;
      font-size: 10px;
      text-align: center;
      background-color: #fc0;
      border-radius: 5px;
    }
    .tz-ind {
      color: #999;
      font-size: 12px;
    }
    // 商品展示
    .tz-show {
      .van-grid-item__content--center {
        align-items: center;
      }
      // 价格
      p {
        margin: 0;
        color: #f50;
        :first-child {
          font-size: 14px;
        }
        :nth-child(2) {
          font-size: 20px;
        }
        .tz-name {
          color: #000;
        }
      }
    }
  }
  // 头条
  .tt {
    margin: 0 10px;
    .van-grid-item__content--center {
      align-items: normal;
    }
    .tz-c {
      .van-grid-item__content.van-grid-item__content--center {
        padding-bottom: 0px;
        border-bottom-left-radius: 15px;
        border-bottom-right-radius: 15px;
      }
    }
    .notice {
      margin-left: 0;
      .van-swipe-item {
        color: #000;
        width: 320px;
        height: 33px;
      }
      // .van-notice-bar {
      //   padding-left: 5px;
      //   width: 320px;
      //   height: 33px;
      // }
    }
  }
  // 商品列表
  .goods_list {
    width: 100%;
    ul,
    li {
      padding: 0;
      margin: 0;
    }

    p {
      margin: 0;
      padding: 0;
    }

    ul {
      width: 170px;
      margin-left: 10px;
      float: left;
    }

    .right {
      margin-left: 15px;
    }

    li {
      padding: 10px;
      border-radius: 3px;
      margin-bottom: 7px;
      background-color: #fff;

      img {
        width: 100%;
      }

      .goods_title {
        font-size: 13px;
        color: #333;
        margin-top: 4px;
        margin-bottom: 12px;
      }

      .flag {
        color: #f42;
        font-size: 12px;
      }

      .goods_price {
        color: #f42;
        font-size: 18px;
      }
      .goods_comments {
        font-size: 10px;
        color: #999;
        margin-left: 10px;
      }
    }
  }

  .goods_list::after {
    content: "";
    display: block;
    clear: both;
  }

  .index-bottom {
    width: 100%;

    img {
      width: 100%;
    }
  }
}
</style>
