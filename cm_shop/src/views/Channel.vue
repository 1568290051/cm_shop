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
    <van-tabs
      v-model="active"
      @click="getChannel"
      type="card"
      id="chan-slide"
      color="#cd0031"
      background="#ff342d"
      :border="false"
    >
      <van-tab v-for="(item, index) in channeTitle" :key="index">
        <!-- 分类标题 -->
        <div class="chan-tit" slot="title">
          <van-icon slot="icon" size="25" :name="item.img" />
          <span>{{item.list_name}}</span>
        </div>
        <!-- 分类内容 -->
        <div class="chan-cont" slot="default">
          <template v-if="active == 0">
            <div class="public">
              <!-- 标题部分 -->
              <van-row class="pub-bgc">
                <van-col class="pub-tit" span="23">
                  <div class="pub-titbox">
                    <i>
                      <span>10</span>
                      <span>商品</span>
                    </i>
                    <p>十款自清洁立式空调让呼吸更清新</p>
                    <img
                      width="333"
                      height="169"
                      src="http://image4.suning.cn/uimg/MFS/show/156274234545436833.jpg_0-0-710-319a?from=mobile"
                    />
                  </div>
                </van-col>
              </van-row>
              <!-- 功能列表 -->
              <van-grid :border="false" :column-num="3">
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/gvwcchBw664SdfKUkgVLtg.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">美的（Midea）3...</span>
                    <span class="pub-price">￥4199</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/QsZb-dTJ7KLo-YWgMtXLFA.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">奥克斯（AUX）5匹...</span>
                    <span class="pub-price">￥5099</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/W0iakLd-cnR4yerlZ5HQqw.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">海信（Hisense）3...</span>
                    <span class="pub-price">￥5799</span>
                  </div>
                </van-grid-item>
              </van-grid>
            </div>
            <div class="public">
              <!-- 标题部分 -->
              <van-row class="pub-bgc">
                <van-col class="pub-tit" span="23">
                  <div class="pub-titbox">
                    <i>
                      <span>10</span>
                      <span>商品</span>
                    </i>
                    <p>适合孝敬爸妈的10款家用足浴盆</p>
                    <img
                      width="333"
                      height="169"
                      src="http://image2.suning.cn/uimg/MFS/show/157380813250526871.jpg_0-2-720-326a?from=mobile"
                    />
                  </div>
                </van-col>
              </van-row>
              <!-- 功能列表 -->
              <van-grid :border="false" :column-num="3">
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/dILp2MlVqKZQQTiDSO1jUw.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">南极人（NanJiren...</span>
                    <span class="pub-price">￥189</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/bp8ZXGLDWBP3BgS4FF0FTQ.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">泰昌（Taicn）TC...</span>
                    <span class="pub-price">￥799</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/s91jHND7XHFco0rRR75Wbg.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">蓓慈(Beici)足浴器...</span>
                    <span class="pub-price">￥219</span>
                  </div>
                </van-grid-item>
              </van-grid>
            </div>
            <div class="public">
              <!-- 标题部分 -->
              <van-row class="pub-bgc">
                <van-col class="pub-tit" span="23">
                  <div class="pub-titbox">
                    <i>
                      <span>10</span>
                      <span>商品</span>
                    </i>
                    <p>十款享无边视野的全面屏电视精选</p>
                    <img
                      width="333"
                      height="169"
                      src="http://image2.suning.cn/uimg/MFS/show/157374420511038112.jpg_0-156-1000-450a?from=mobile"
                    />
                  </div>
                </van-col>
              </van-row>
              <!-- 功能列表 -->
              <van-grid :border="false" :column-num="3">
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/RWMVQxEbfN0frSpXpYzK_w.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">海信(Hisense)HZ7...</span>
                    <span class="pub-price">￥3999</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/O7pn4pBsh9IlpXoJNKNmlg.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">康佳(KONKA) LED...</span>
                    <span class="pub-price">￥1399</span>
                  </div>
                </van-grid-item>
                <van-grid-item>
                  <van-icon
                    slot="icon"
                    size="100"
                    name="http://imgservice.suning.cn/uimg1/b2c/image/l6AK6ELvvYrz9kzJ9FHdIQ.jpg?format=400h_400w_4e_80q.webp"
                  />
                  <div class="pub-text" slot="text">
                    <span class="pub-title van-ellipsis">东芝（TOSHIBA...</span>
                    <span class="pub-price">￥3299</span>
                  </div>
                </van-grid-item>
              </van-grid>
            </div>
          </template>
          <div class="public" v-for="(item, index) in channeList" :key="index">
            <!-- 标题部分 -->
            <van-row>
              <van-col class="pub-tit" span="23" offset="1">{{item.list_title}}</van-col>
            </van-row>
            <!-- 功能列表 -->
            <van-grid :border="false" :column-num="3">
              <van-grid-item v-for="(child, childIndex) in item.children" :key="childIndex">
                <van-icon slot="icon" size="100" :name="child.img" />
                <div class="pub-text" slot="text">
                  <span
                    :class="{
                  'pub-coupon': true,
                  'border': child.offer != ''
                }"
                  >{{child.offer}}</span>
                  <span class="pub-price">￥{{child.price}}</span>
                </div>
              </van-grid-item>
            </van-grid>
          </div>
        </div>
      </van-tab>
    </van-tabs>
  </div>
</template>

<script>
export default {
  data () {
    return {
      channeTitle: [], // 接收清单标题
      channeList: [], // 接收清单内容
      active: 0,
      item: {
        off: '领券20元'
      }
    }
  },
  created () {
    // 获取清单标题
    this.$http.get('/list_title').then(res => {
      // console.log(res)
      this.channeTitle = res.data.data
    })
    // 第一次获取清单内容
    this.$http.get('/list_content', { params: { id: 1 } }).then(res => {
      this.channeList = res.data.data
      // console.log(this.channeList)
    })
    this.getChannel()
  },
  methods: {
    toBack () {
      this.$router.push('/')
    },
    async getChannel (id) {
      // console.log(id)
      const { data: res } = await this.$http.get('/list_content', {
        params: { id: id + 1 }
      })
      this.channeList = res.data
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
      position: sticky;
      top: 0;
      z-index: 1000;
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
  .chan-cont {
    margin-bottom: 60px;
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
    .van-grid-item {
      max-width: 116px;
    }
    .van-grid-item__content {
      padding: 8px 8px;
    }
    // 图片遮罩层
    .van-image::before {
      content: "";
      display: inline-block;
      position: absolute;
      top: 0;
      left: 0;
      width: 100px;
      height: 100px;
      background-color: rgba(0, 0, 0, 0.03);
    }
    .pub-tit {
      font-size: 15px;
      font-weight: bold;
      margin: 0 8px;
      .pub-titbox {
        position: relative;
        width: 325px;
        color: #fff;
        // ::after {
        // }
        i {
          position: absolute;
          right: 5px;
          top: 5px;
          width: 54px;
          height: 22px;
          line-height: 22px;
          font-size: 13px;
          border-radius: 4px;
          background: rgba(0, 0, 0, 0.2);
          border: 1px solid #fff;
          :nth-child(1) {
            margin-right: 5px;
          }
          :nth-child(2) {
            margin-right: 10px;
            text-align: center;
            font-weight: normal;
            // font-style: normal;
          }
        }
        p {
          position: absolute;
          left: 0;
          bottom: 0;
          width: 325px;
          font-size: 18px;
          text-align: center;
        }
        p::after {
          content: "";
          display: inline-block;
          position: absolute;
          bottom: -15px;
          left: 50%;
          width: 0;
          height: 0;
          transform: translateX(-50%);
          -webkit-transform: translateX(-50%);
          border-left: 9px solid transparent;
          border-right: 9px solid transparent;
          border-bottom: 9px solid #fff;
        }
      }
    }
    .pub-to {
      font-size: 12px;
      font-weight: bold;
      color: #666;
    }
    .pub-text {
      margin-top: 8px;
      width: 103px;
      overflow: hidden;
      text-align: center;
      span {
        // display: block;
        font-size: 11px;
        color: #a5a5a5;
      }
      .pub-title {
        display: table;
        letter-spacing: -0.3px;
        margin-left: 4px;
        color: #666;
        overflow: hidden;
        box-sizing: border-box;
      }
      .pub-coupon {
        display: table;
        height: 15px;
        margin: 0 auto;
        color: #fe053a;
        font-size: x-small;
        border-radius: 2px;
        box-sizing: border-box;
      }
      .border {
        background: #ffedef;
        border: 1px solid #ff2a57;
      }
      .pub-price {
        font-weight: bold;
      }
    }
  }
}
</style>
