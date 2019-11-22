<template>
  <div class="me">
    <!-- 我的页面顶部 -->
    <div class="top">
      <!-- 标题导航 -->
      <van-nav-bar :border="false" right-text="按钮" @click-right="onSetting">
        <van-icon size="21" name="https://res.suning.cn/project/msinode/wap/home/image/setting.png" slot="right" />
        <span slot="title" style="font-weight: bold; font-size: 19px ">我的创美</span>
      </van-nav-bar>
      <!-- 用户 -->
      <van-row class="user">
        <van-col span="4">
          <!-- 头像 -->
          <van-image round width="60" height="60" :src="userImg" />
        </van-col>
        <van-col class="user-name" span="6" offset="2">
          {{username}}
          <p>淘气值：{{int}}</p>
        </van-col>
        <van-col span="4" offset="7">
          <van-image width="60" height="60" src="https://res.suning.cn/project/msinode/wap/home/image/qr-icon.png" />
        </van-col>
      </van-row>
      <!-- 用户服务 -->
      <van-grid class="serve" :border="false">
        <van-grid-item v-for="(item, index) in serve" :key="index">
          <div slot="default">
            <b>{{item.se_num}}</b>
            <div class="se-text">{{item.se_name}}</div>
          </div>
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 福利优惠 -->
    <van-row class="tic">
      <van-col offset="1" span="4">
        <van-image width="45" height="30" src="https://oss.suning.com/vss/activity/wximg/my/vip.png" />
      </van-col>
      <van-col class="tic-text" span="10" offset="0">【免费】您可领一张运费券</van-col>
      <van-col class="tic-to" span="5" offset="3">
        <div>
          立即领取
          <van-icon name="arrow" size="15" />
        </div>
      </van-col>
    </van-row>
    <!-- 我的订单 -->
    <div class="public">
      <!-- 标题部分 -->
      <van-row>
        <van-col class="pub-tit" span="5" offset="1">我的订单</van-col>
        <van-col class="pub-to" span="5" offset="12">
          <div @click="$router.push('/orders')">
            查看全部
            <van-icon name="https://res.suning.cn/project/msinode/wap/home/image/next.png" size="13" />
          </div>
        </van-col>
      </van-row>
      <!-- 功能列表 -->
      <van-grid :border="false" :column-num="5">
        <van-grid-item v-for="(item, index) in order" :key="index">
          <van-icon slot="icon" size="30" :name="item.or_img" />
          <span slot="text">{{item.or_name}}</span>
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 必备工具 -->
    <div class="public">
      <!-- 标题部分 -->
      <van-row>
        <van-col class="pub-tit" span="5" offset="1">必备工具</van-col>
      </van-row>
      <!-- 功能列表 -->
      <van-grid :border="false" :column-num="4">
        <van-grid-item v-for="(item, index) in tool" :key="index">
          <van-icon slot="icon" size="30" :name="item.ol_img" />
          <span slot="text">{{item.ol_name}}</span>
        </van-grid-item>
      </van-grid>
    </div>
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
          <img :src="item.img" alt />
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
          <img :src="item.img" alt />
          <p class="goods_title van-multi-ellipsis--l2">{{item.title}}</p>
          <div class="footer">
            <span class="flag">￥</span>
            <span class="goods_price">{{item.price}}</span>
            <span class="goods_comments">{{item.estim > 100 ? item.estim + '+' : item.estim + '条'}}评价</span>
          </div>
        </li>
      </ul>
    </div>
    <!-- 底部图片 -->
    <div class="bottom"><img src="../assets/image/reach-bottom.png" alt=""></div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      userImg: '', // 人物的头像
      leftGoods: [],
      rightGoods: [],
      username: '',
      int: '233',
      serve: [
        {
          se_num: 36,
          se_name: '宝贝收藏'
        },
        {
          se_num: 3,
          se_name: '关注店铺'
        },
        {
          se_num: 13,
          se_name: '看过买过'
        },
        {
          se_num: 2,
          se_name: '红包卡券'
        }
      ],
      order: [
        // 订单
        {
          or_img:
            'https://res.suning.cn/project/msinode/wap/home/image/order-icon01.png',
          or_name: '待支付'
        },
        {
          or_img:
            'https://res.suning.cn/project/msinode/wap/home/image/order-icon02.png',
          or_name: '待收货'
        },
        {
          or_img:
            'https://res.suning.cn/project/msinode/wap/home/image/order-icon03.png',
          or_name: '待评价'
        },
        {
          or_img:
            'https://res.suning.cn/project/msinode/wap/home/image/order-icon04.png',
          or_name: '退换/售后'
        },
        {
          or_img:
            'https://res.suning.cn/project/msinode/wap/home/image/order-icon05.png',
          or_name: '查看物流'
        }
      ],
      tool: [
        // 必备工具
        // 必备工具
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157250874743127029.png',
          ol_name: '红包'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157250876042530564.png',
          ol_name: '店铺关注'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157250878626080332.png',
          ol_name: '足迹'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157136450994431031.png',
          ol_name: '客户服务'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157251063564774447.png',
          ol_name: '必抢清单'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157136454213083878.png',
          ol_name: '拼购'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157251073785756292.png',
          ol_name: '校园VIP'
        },
        {
          ol_img: 'https://image.suning.cn/uimg/cms/img/157136448419617333.png',
          ol_name: '我的试用'
        }
      ]
    }
  },
  created () {
    // 获取用户信息
    this.$http.get('/set_user').then(res => {
      // console.log(res)
      this.userImg = res.data.img
      this.username = res.data.username
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
    // 用户设置页面跳转
    onSetting () {
      this.$router.push('/setting')
    }
  }
}
</script>

<style lang="less">
.me {
  background: #f2f2f2;
  margin-bottom: 60px;
  .top {
    background: #ffdb47;
  }
  .van-nav-bar {
    background: #ffdb47;
  }
  .user {
    // background: #ffdb47;
    padding: 26.5px 21px 0;
    .van-col {
      height: 60px;
    }
    .user-name {
      font-weight: bold;
      line-height: 26px;
      overflow: hidden;
      p {
        margin: 0;
        height: 24px;
        padding-left: 7px;
        color: #fff;
        font-size: 12px;
        border-radius: 25px;
        background: #e1bb23;
      }
    }
  }
  .serve {
    .van-grid-item {
      margin-bottom: 15px;
      div {
        text-align: center;
        font-size: 12px;
        background: #ffdb47;
        .se-text {
          font-size: 13px;
        }
      }
    }
  }
  .tic {
    width: 350px;
    margin: -15px 0 0 15px;
    background: #fff;
    border-radius: 7px;
    font-size: 11px;
    text-align: center;
    .van-col {
      margin-top: 12px;
      // vertical-align: middle;
    }
  }
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
  .bottom {
    text-align: center;
    margin-top: 30px;
    img {
      width: 210px;
      height: 12px;
    }
  }
}
</style>
