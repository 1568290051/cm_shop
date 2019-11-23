<template>
  <div class="carte">
    <div class="top">
      <span class="top-title">购物车</span>
      <div class="cz">
        <span v-if="isEdit" @click="isEdit= false">完成</span>
        <span v-else-if="!isEdit" @click="isEdit = true">编辑</span>
      </div>
    </div>
    <!-- 购物车为空 -->
    <template v-if="!isBuy">
      <div class="content">
        <img width="87" height="87" src="../assets/image/sn-cart-empty.png" alt="">
        <p>购物车还是空的，快来挑选好货吧</p>
        <van-button size="mini" @click="$router.push('/')">去逛逛</van-button>
      </div>
    </template>
    <!-- 购买商品后 -->
    <template v-else>
      <van-checkbox-group v-model="selectGoodsId" checked-color='#ffcc00' :max="200">
        <van-grid :column-num="1">
          <van-grid-item v-for="(item, index) in carteGoods" :key="item.id">
            <template slot="default">
              <!-- 所属店铺 -->
              <van-row class="list-top">
                <van-col span="2"></van-col>
                <van-col span="18">
                  <img src="../assets/image/cshop.png">
                  <span>{{item.store}}</span>
                </van-col>
              </van-row>
              <!-- 商品信息 -->
              <van-row class="list-bottom">
                <van-col span="2">
                  <van-checkbox :name="item.id"></van-checkbox>
                </van-col>
                <van-col span="18">
                  <div class="goods-left">
                    <img :src="item.img">
                  </div>
                  <div class="goods-right">
                    <!-- 商品名 -->
                    <p class="van-multi-ellipsis--l2">{{item.title}}</p>
                    <div class="goods-other"></div>
                    <!-- 价格 -->
                    <div class="goods-right-bottom">
                      <span class="flag">¥</span> <span class="price">{{item.price}}</span>
                      <div class="num">
                        <van-stepper v-model="carteCli[index].num" input-width="42px" button-size="21px" />
                      </div>
                    </div>
                  </div>
                </van-col>
              </van-row>
            </template>
          </van-grid-item>
        </van-grid>
      </van-checkbox-group>

      <!-- 结算 -->
      <div class="settlement">
        <van-checkbox v-model="isQx" checked-color='#ffcc00'>全选</van-checkbox>
        <!-- 合计 -->
        <template v-if="!isEdit">
          <button @click="onSubmit">结算({{totalNum}})</button>
          <p>合计: <span class="flag">¥</span> <span class="price">{{totalMoney}}</span></p>
        </template>
        <!-- 删除 -->
        <template v-else>
          <button @click="delCartGood">删除</button>
        </template>
      </div>
    </template>

    <!-- 猜你喜欢 -->
    <div class="list-title"><img src="../assets/image/guess-you-like.png"></div>
    <div class="goods-list">
      <van-grid :column-num="2" :gutter="5">
        <van-grid-item v-for="(item) in guessList" :key="item.id">
          <div slot="default">
            <img :src="item.img">
            <p class="van-multi-ellipsis--l2">{{item.title}}</p>
            <div class="price">
              <span class="flag">￥</span> {{item.sales}}
              <span class="sales"><i>{{item.estim}}</i>人已购买</span>
              <img @click="addShopCart(item.id)" style='width:18px;height:18px;float:right;margin-top:-25px;'
                src="../assets/image/cart-icon.png">
            </div>
          </div>
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 必备清单 -->
    <div class="list-title"><img src="../assets/image/purchase.png"></div>
    <div class="goods-list">
      <van-grid :column-num="2" :gutter="5">
        <van-grid-item v-for="(item) in usualList" :key="item.id">
          <div slot="default">
            <img :src="item.img">
            <p class="van-multi-ellipsis--l2">{{item.title}}</p>
            <div class="price">
              <span class="flag">￥</span> {{item.price}}
              <img style='width:18px;height:18px;float:right' src="../assets/image/cart-icon.png">
            </div>
          </div>
        </van-grid-item>
      </van-grid>
    </div>
    <!-- 底部 -->
    <div class="bottom"><img src="../assets/image/reach-bottom.png" alt=""></div>

  </div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
  data () {
    return {
      guessList: [], // 猜你喜欢
      usualList: [], // 必备清单,
      selectGoodsId: JSON.parse(sessionStorage.getItem('sIds')) || [], // 用户所选
      carteCli: JSON.parse(sessionStorage.getItem('carte')) || [], // 历史购买
      carteGoods: [], // 购物车商品
      isEdit: false
    }
  },
  computed: {
    // 切换购物车状态
    isBuy () {
      return this.carteGoods.length !== 0
    },
    // 全选状态
    isQx: {
      get: function () {
        return this.selectGoodsId.length === this.carteGoods.length
      },
      set: function () {
        if (this.selectGoodsId.length < this.carteGoods.length) {
          let ids = []
          this.carteCli.forEach((item) => {
            ids.push(item.id)
          })
          this.selectGoodsId = ids
        } else {
          this.selectGoodsId = []
        }
      }
    },
    // 合计金额
    totalMoney () {
      let money = 0
      this.selectGoodsId.forEach(id => {
        let i = this.carteGoods.findIndex(item => item.id === id)
        money += parseFloat(this.carteGoods[i].price * this.carteCli[i].num)
      })
      return money
    },
    // 合计数量
    totalNum () {
      let num = 0
      this.selectGoodsId.forEach(id => {
        let i = this.carteGoods.findIndex(item => item.id === id)
        num += parseFloat(this.carteCli[i].num)
      })
      this.setCarteL(num)
      return num
    }
  },
  watch: {
    // 购物车中商品缓存
    carteCli: {
      handler: function () {
        sessionStorage.setItem('carte', JSON.stringify(this.carteCli))
      },
      deep: true
    },
    // 商品选中缓存
    selectGoodsId: {
      handler: function () {
        sessionStorage.setItem('sIds', JSON.stringify(this.selectGoodsId))
      }
    }
  },
  methods: {
    ...mapMutations(['setCarteL']),
    // 添加到购物车
    async addShopCart (id) {
      let cz = this.carteCli.filter(item => item.id === id)
      if (cz.length !== 0) {
        cz[0].num++ // 添加同一商品 数量加1
      } else {
        this.carteCli.push({
          id: id,
          num: 1
        })
        // 更新商品
        const { data: res } = await this.$http.get('/carte_list', {
          params: {
            ids: id
          }
        })
        this.carteGoods.push(res.data[0])
      }
      // 商品默认选中
      this.selectGoodsId.push(id)
      this.$toast.success('添加购物车成功！')
    },
    // 移除商品
    delCartGood (id) {
      this.$dialog.confirm({
        title: '提示',
        message: '是否确认删除？'
      }).then(() => {
        // 删除选中商品
        this.selectGoodsId.forEach(id => {
          let i = this.carteCli.findIndex(item => item.id === id)
          this.carteCli.splice(i, 1)
          this.carteGoods.splice(i, 1)
        })
        this.selectGoodsId = []
      })
    },
    // 结算商品
    onSubmit () {
      if (this.totalNum === 0) {
        this.$toast.fail('请至少选中一件商品!')
        return
      }

      sessionStorage.setItem('toBuy', 'ok')
      if (!sessionStorage.getItem('token')) {
        this.$toast.fail('请先登录！')
        setTimeout(() => {
          this.$router.push('/login')
        }, 500)
      } else {
        this.$router.push('/order')
      }
    }
  },
  async created () {
    if (this.carteCli.length !== 0) {
      let ids = []
      this.carteCli.forEach((item) => {
        ids.push(item.id)
      })
      // 获取购物车中商品
      const { data: res1 } = await this.$http.get('/carte_list', {
        params: {
          ids: ids.join(',')
        }
      })
      this.carteGoods = res1.data
    }

    // 获取推荐内容
    const { data: res2 } = await this.$http.get('/index_goods_estim')
    this.guessList = res2.data.guessList
    this.usualList = res2.data.usualList
  }
}
</script>

<style lang="less">
.carte {
  padding-bottom: 37px;
  background-color: #f5f5f9;

  .top {
    height: 44px;
    font-size: 17px;
    background-color: #fff;
    border: 1px solid rgba(0, 0, 0, 0.1);

    .top-title {
      display: block;
      width: 60px;
      margin: 0 auto;
      margin-top: 12px;
      text-align: center;
    }

    .cz {
      position: absolute;
      top: 10px;
      right: 10px;
      width: 100px;
      text-align: right;
      font-size: 14px;
      color: #37f;
      cursor: pointer;
    }
  }

  // 未购买时
  .content {
    padding: 40px 0;
    text-align: center;

    p {
      font-size: 12px;
      color: #666;
    }
  }

  // 商品区
  .van-checkbox-group {
    width: 100%;
    box-sizing: border-box;
    padding: 0 10px;

    margin-top: 10px;
  }

  .van-grid-item {
    margin-bottom: 10px;
  }

  .van-grid-item__content {
    & > div {
      width: 100%;
    }

    .van-col {
      height: 100%;
    }

    .van-checkbox {
      margin-top: 35px;
    }

    // 店铺
    .list-top {
      height: 20px;
      margin-bottom: 10px;

      img {
        width: 20px;
        height: 20px;
        display: inline-block;
        margin-right: 2px;
        vertical-align: middle;
      }

      span {
        font-size: 13px;
        color: #333;
      }
    }

    // 商品
    .list-bottom {
      height: 110px;

      .goods-left {
        position: relative;
        img {
          width: 90px;
          height: 90px;
          display: inline-block;
        }

        &::after {
          position: absolute;
          top: 0;
          left: 0;
          content: "";
          display: block;
          width: 90px;
          height: 90px;
          background-color: #000;
          opacity: 0.1;
        }
      }

      .goods-right {
        position: absolute;
        right: 0px;
        top: 44px;
        width: 210px;

        // 商品名
        p {
          font-size: 12px;
          color: #222;
          font-weight: 700;
        }

        .goods-other {
          height: 40px;
        }

        // 价格
        .flag {
          color: #f42;
          font-weight: 700;
          font-size: 12px;
        }

        .price {
          color: #f42;
          font-weight: 700;
          font-size: 14px;
        }

        // 步进器
        .num {
          float: right;
          margin-right: 10px;
          width: 92px;
          height: 27px;
          // box-sizing: border-box;
          background-image: url(../assets/image/counter-bg.png);
          background-repeat: no-repeat;
          background-size: 100% 100%;
          padding: 2px;
        }

        .van-stepper {
          margin-top: 3px;
          margin-left: 2px;
        }

        .van-stepper__plus,
        .van-stepper__minus {
          border-radius: 50%;
          border: 1px solid #eee;
        }

        .van-stepper__input {
          background-color: #fff;
        }
      }
    }
  }

  // 结算区
  .settlement {
    position: fixed;
    left: 0;
    bottom: 50px;
    width: 100%;
    height: 50px;
    padding: 0 12px;
    box-sizing: border-box;
    z-index: 99;
    background-color: #fff;

    .van-checkbox {
      float: left;
      margin-top: 15px;
    }

    button {
      float: right;
      margin-left: 3px;
      width: 100px;
      height: 33px;
      border: none;
      border-radius: 4px;
      margin-top: 8px;
      color: #000;
      font-size: 14px;
      font-weight: 600;
      background-color: #fc0;
    }

    p {
      float: right;
      color: #000;
      font-size: 14px;
      margin-right: 5px;

      // 合计
      .flag {
        color: #f42;
        font-weight: 700;
        font-size: 13px;
      }

      .price {
        color: #f42;
        font-weight: 700;
        font-size: 16px;
      }
    }
  }

  // 推荐标题
  .list-title {
    width: 204px;
    height: 17px;
    margin: 0 auto;
    margin-top: 15px;
    margin-bottom: 15px;

    img {
      width: 100%;
      height: 100%;
    }
  }

  // 推荐内容
  .goods-list {
    padding: 0 10px;
    margin-top: 10px;
  }

  .van-grid {
    padding: 0 3px;
    border-radius: 3px;
    p {
      padding: 0;
      font-size: 12px;
      color: #222;
      margin: 3px 0;
    }

    img {
      width: 137px;
      height: 137px;
      display: block;
      margin: 0 auto;
    }

    .price {
      color: #f42;
      font-weight: 800;
      font-size: 16px;
    }

    .flag {
      font-weight: normal;
      color: #f42;
      font-size: 12px;
    }

    .sales {
      display: block;
      margin-top: 1px;
      color: #999;
      font-size: 11px;
      font-weight: normal;

      i {
        color: #222;
        font-size: 14px;
        font-style: normal;
      }
    }
  }

  // 底部栏
  .bottom {
    text-align: center;
    margin-top: 30px;
    margin-bottom: 80px;

    img {
      width: 210px;
      height: 12px;
    }
  }
}
</style>
