<template>
  <div class="order">
    <van-nav-bar title="确认订单" left-arrow @click-left="$router.go(-1)" />
    <!-- 标题 -->
    <div class="title" @click="$router.push('/address')">
      <img src="../assets/image/address.png">
      <div class="title-right">
        <h1><span class="name">dany</span><span class="phone">15127096255</span></h1>
        <p>
          <span class="address">江苏省宿迁市沭阳县</span>
          <van-icon name="arrow" style="float:right" />
        </p>
      </div>
    </div>

    <!-- 订单详情 -->
    <div class="content">
      <van-cell is-link value="共11件" value-class="right-title">
        <template slot="title">
          <van-image></van-image>
        </template>
      </van-cell>
      <p>支付成功后将尽快为您发货！！</p>
      <van-cell title="发票" is-link value="电子发票" value-class="right-title" />
      <van-cell title="优惠券" is-link value="无可用" value-class='right-title' />
      <van-cell title="创美卡" is-link value="无可用" value-class="right-title" />
      <van-cell is-link value="共1云钻，满100可用" value-class='right-title'>
        <template slot="title">
          <span>云钻</span> <img style="width:18px;height:18px;vertical-align:middle;" src="../assets/image/yuns.png">
        </template>
      </van-cell>
    </div>

    <van-button type="default" style="background-color:#ff6600">在线支付</van-button>
    <van-button type="default" style="background-color:#05ba04">货到付款</van-button>

    <van-dialog v-model="show" title="标题" show-cancel-button>
      <img src="https://img.yzcdn.cn/vant/apple-3.jpg">
    </van-dialog>

  </div>
</template>

<script>
export default {
  data () {
    return {
      currentContact: {
        name: 'dany',
        tel: '15127096255'
      },
      goodsList: []
    }
  }
}
</script>

<style lang="less">
.order {
  .title {
    padding: 5px 0 11px 20px;
    background-size: 64px 5px;
    background: url(../assets/image/address_border.png) repeat-x bottom;

    img {
      width: 40px;
      height: 40px;
    }

    .title-right {
      display: inline-block;
      width: 80%;
      margin-left: 15px;

      h1 {
        font-size: 18px;
        margin: 0;
        transform: translateY(4px);
      }

      .phone {
        display: inline-block;
        margin-left: 5px;
      }

      p {
        font-size: 12px;
        color: #222;
      }
    }
  }

  .content {
    // 商品右侧
    .right-title {
      color: #222;
    }

    p {
      font-size: 13px;
      color: #323233;
      padding-left: 16px;
    }
  }

  & > .van-button {
    display: block;
    width: 98%;
    margin: 20px auto;
    border: none;
    border-radius: 3px;
    box-sizing: border-box;
    color: #fff;
    font-size: 14px;
  }
}
</style>
