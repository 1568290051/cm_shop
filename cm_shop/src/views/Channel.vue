<template>
  <div class="channel">
    <!-- 顶部导航 -->
    <van-nav-bar left-arrow @click-left="toBack">
      <van-image
        style="margin-top:12px"
        width="80"
        height="20"
        slot="title"
        src="https://res.suning.cn/project/cmsWeb/suning/higou/wap/higoubq/style/imagesIndex/tittle.png"
      />
    </van-nav-bar>
    <!-- 滑动分类 -->
    <van-tabs id="chan-slide" type="card" color="#cd0031" background="#ff342d" :border="false">
      <van-tab v-for="index in 8" :key="index">
        <!-- 分类标题 -->
        <div class="chan-tit" slot="title">
          <van-icon
            slot="icon"
            size="25"
            name="https://image.suning.cn/uimg/MZMS/show/155117928298268957.png?from=mobile"
          />
          <span>精选</span>
        </div>
        <!-- 分类内容 -->
        <div class="public" slot="default">
          <!-- 标题部分 -->
          <van-row>
            <van-col class="pub-tit" span="23" offset="1">你听说了吗? 12度的红酒能减肥</van-col>
          </van-row>
          <!-- 功能列表 -->
          <van-grid :border="false" :column-num="3">
            <van-grid-item>
              <van-icon
                slot="icon"
                size="100"
                name="http://imgservice.suning.cn/uimg1/b2c/image/byt_UDDVSpdh3_EVBaqvlA.jpg?format=400h_400w_4e_80q.webp"
              />
              <span slot="text">￥358</span>
            </van-grid-item>
            <van-grid-item>
              <van-icon
                slot="icon"
                size="100"
                name="http://imgservice.suning.cn/uimg1/b2c/image/i-Ui4pRgQDE_tq7IRrsWvw.jpg?format=400h_400w_4e_80q.webp"
              />
              <span slot="text">￥239</span>
            </van-grid-item>
            <van-grid-item>
              <van-icon
                slot="icon"
                size="100"
                name="http://imgservice.suning.cn/uimg1/b2c/image/VszTyOQBjWbgEPahQN6GjQ.jpg?format=400h_400w_4e_80q.webp"
              />
              <span slot="text">￥158</span>
            </van-grid-item>
          </van-grid>
        </div>
      </van-tab>
    </van-tabs>
  </div>
</template>

<script>
export default {
  data () {
    return {}
  },
  created () {},
  methods: {
    toBack () {
      this.$router.push('/')
    }
  }
}
</script>

<style lang="less">
.channel {
  background: #f2f2f2;
  margin-bottom: 60px;
  // 滑动分类
  #chan-slide {
    .van-tabs__wrap {
      height: 57px;
    }
    .van-tabs__nav--card {
      height: 57px;
      margin: 0;
      .van-tab {
        border: none;
        .van-icon img {
          margin-top: 5px;
        }
        span {
          color: #fff;
        }
      }
    }
  }
  // 分类内容
  .public {
    width: 350px;
    margin: 13px 0 0 15px;
    background: #fff;
    border-radius: 7px;
    overflow: hidden;
    .van-row {
      margin-top: 15px;
    }
    .pub-tit {
      font-size: 15px;
      font-weight: bold;
    }
    .pub-to {
      font-size: 12px;
      font-weight: bold;
      color: #666;
    }
    span {
      font-size: 11px;
      color: #666;
    }
  }
}
</style>
