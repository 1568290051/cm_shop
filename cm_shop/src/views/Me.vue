<template>
  <div class="me">
    <div class="top">
      <!-- 标题导航 -->
      <van-nav-bar :border="false" right-text="按钮" @click-right="onSetting">
        <van-icon
          size="21"
          name="https://res.suning.cn/project/msinode/wap/home/image/setting.png"
          slot="right"
        />
        <span slot="title" style="font-weight: bold; font-size: 19px ">我的创美</span>
      </van-nav-bar>
      <!-- 头像、昵称、会员 -->
      <van-row class="user">
        <van-col span="4">
          <van-image
            round
            width="60"
            height="60"
            src="http://image.suning.cn/uimg/cmf/cust_headpic/0000000000_01_240x240.jpg"
          /></van-col>
        <van-col class="user-name" span="6" offset="2">
          {{username}}
          <p>淘气值：{{int}}</p>
        </van-col>
        <van-col span="4" offset="7">
          <van-image
            width="60"
            height="60"
            src="https://res.suning.cn/project/msinode/wap/home/image/qr-icon.png"
          />
        </van-col>
      </van-row>
      <!-- 优惠券 -->
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      username: '',
      int: '233'
    }
  },
  created () {
    this.username = sessionStorage.getItem('username')
  },
  methods: {
    // 设置
    onSetting () {}
  }
}
</script>

<style lang="less">
.me {
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
        background: #E1BB23;
      }
    }
  }
}
</style>
