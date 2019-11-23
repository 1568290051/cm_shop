<template>
  <div class="order">
    <van-nav-bar title="确认订单" left-arrow @click-left="$router.go(-1)" />
    <!-- 标题 -->
    <div class="title" @click="$router.push('/address')">
      <img src="../assets/image/address.png">
      <div class="title-right">
        <h1><span class="name">{{user.name}}</span><span class="phone">{{user.tel}}</span></h1>
        <p>
          <span class="address">{{address}}</span>
          <van-icon name="arrow" style="float:right" />
        </p>
      </div>
    </div>

    <!-- 订单详情 -->
    <div class="content">
      <!-- 商品图片 -->
      <van-cell is-link value-class="right-title" @click="$router.push('carte')">
        <template slot="default">
          <van-image v-for="value in imgLL" :key="value" width="50px" height="50px" :src="goodsList[value-1].img">
          </van-image>
          <span style="float:right;margin-right:5px">{{'共'+totalNum+'件'}}</span>
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
      <!-- 应付金额 -->
      <van-cell>
        <div slot="default" style="padding-right:16px;">
          <span style="float:right;">
            <b style="font-weight:700;font-size:16px">应付金额：</b>
            <strong style="color: #e93b3d;font-weight: 400;">¥{{totalMoney}}</strong>
          </span>
        </div>
      </van-cell>
    </div>

    <van-button type="default" style="background-color:#ff6600" @click="onlineDia  = true">在线支付</van-button>
    <van-button type="default" style="background-color:#05ba04" @click="offlineDia = true">货到付款</van-button>

    <!-- 在线支付 -->
    <van-dialog v-model="onlineDia" title="请输入支付密码" show-cancel-button @closed="payVal=''">
      <div class="pay-password" slot="default">
        <van-password-input :value="payVal" info="密码为 6 位数字" :focused="showKeyboard" @focus="showKeyboard = true" />
        <van-number-keyboard :show="true" close-button-text=" 完成" @blur="onlineDia = false" @input="onInput"
          @delete="onDelete" @close='submitOrsers(1)' />
      </div>
    </van-dialog>
    <!-- 货到付款 -->
    <van-dialog v-model="offlineDia" show-cancel-button @confirm='submitOrsers(0)'>
      <div class="offline-box" slot="default">
        <img src="../assets/image/offline.png">
        <h3>是否确认使用货到付款提交订单?</h3>
        <p>货到付款订单总价：¥{{totalMoney + 10}}</p>
        <p>含货到付款运费：¥10</p>
      </div>
    </van-dialog>

  </div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
  data () {
    return {
      user: {
        name: 'dany',
        tel: '15127096255'
      },
      address: '江苏省宿迁市沭阳县', // 用户地址
      carte: JSON.parse(sessionStorage.getItem('carte')) || [],
      goodsList: [],
      onlineDia: false, // 在线支付框
      payVal: '',
      showKeyboard: true,
      offlineDia: false // 货到付款
    }
  },
  computed: {
    imgLL () { // 商品图片数量
      let ll = this.goodsList.length > 4 ? 4 : this.goodsList.length
      return ll
    },
    totalMoney () { // 合计金钱
      let money = 0
      this.goodsList.forEach((item, i) => {
        money += item.price * this.carte[i].num
      })
      return money
    },
    totalNum () { // 合计数量
      let num = 0
      let selectIds = JSON.parse(sessionStorage.getItem('sIds'))
      this.carte.forEach(item => {
        if (selectIds.indexOf(item.id) !== -1) {
          num += item.num
        }
      })
      return num
    }

  },
  methods: {
    ...mapMutations(['setCarteL']),
    // 支付密码
    onInput (key) {
      this.payVal = (this.payVal + key).slice(0, 6)
    },
    onDelete () {
      this.payVal = this.payVal.slice(0, this.payVal.length - 1)
    },
    // 提交订单
    async submitOrsers (x) {
      // 在线支付 密码校验
      if (x === 1 && this.payVal.length < 6) return
      // 拼接参数
      let ids = []
      let totalArr = []
      this.carte.forEach(item => {
        ids.push(item.id)
        totalArr.push(item.num)
      })
      // 添加订单
      const { data: res } = await this.$http.post('/orders', {
        ids: ids.join(','), // 商品id
        total: totalArr.join(','), // 商品数量
        a_id: this.user.id, // 收货地址id
        status: x
      })
      if (res.status === 200) {
        this.$toast.success('订单支付成功！')
        // 清空选中商品
        let allGoods = JSON.parse(sessionStorage.getItem('carte'))
        let chooseIds = JSON.parse(sessionStorage.getItem('sIds'))
        chooseIds.forEach(id => {
          let i = allGoods.findIndex(item => item.id === id)
          allGoods.splice(i, 1)
        })
        sessionStorage.setItem('carte', JSON.stringify(allGoods)) // 购物车商品缓存
        sessionStorage.setItem('sIds', '[]') // 选中项缓存
        this.setCarteL(0) // 购物车小点

        setTimeout(() => {
          this.$router.push('/me')
        }, 2000)
      }
    }
  },
  async created () {
    // 获取用户收货地址
    const { data: res } = await this.$http.get('/orders_getaddress')
    res.tel = res.tel.substring(0, 3) + '****' + res.tel.substring(8, 11)
    this.user = res
    this.address = res.province + res.city + res.county + res.addressDetail

    if (this.carte.length !== 0) {
      let ids = []
      let chooseIds = JSON.parse(sessionStorage.getItem('sIds'))
      this.carte.forEach((item) => {
        if (chooseIds.indexOf(item.id) !== -1) {
          ids.push(item.id)
        }
      })
      // 获取购物车中商品
      const { data: res1 } = await this.$http.get('/carte_list', {
        params: {
          ids: ids.join(',')
        }
      })
      this.goodsList = res1.data
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

    .van-image {
      margin-right: 4px;
    }

    .van-image::after {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      bottom: 0;
      right: 0;
      background-color: #000;
      z-index: 99;
      opacity: 0.06;
      border-radius: 5px;
    }
  }

  & > .van-button {
    display: block;
    width: 95%;
    margin: 20px auto;
    border: none;
    border-radius: 3px;
    box-sizing: border-box;
    color: #fff;
    font-size: 14px;
  }

  .pay-password {
    height: 300px;
    padding-top: 7px;
    ul {
      border: 1px solid #ebedf0;
    }

    li {
      border: 1px solid #ebedf0;
    }
  }

  .offline-box {
    text-indent: 20px;

    img {
      width: 50px;
      height: 50px;
      display: block;
      margin: 20px auto;
      margin-bottom: 10px;
    }
    h1 {
      font-weight: normal;
      font-size: 16px;
      color: #333;
    }

    p {
      font-size: 15px;
      margin: 1px;
      color: #999;
    }
  }
}
</style>
