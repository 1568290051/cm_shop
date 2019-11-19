<template>
  <div class="carte">
    <div class="top">购物车</div>
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
      <h1>这里是商品清单</h1>
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
              <img style='width:18px;height:18px;float:right;margin-top:-25px;' src="../assets/image/cart-icon.png">
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
export default {
  data () {
    return {
      isBuy: false,
      guessList: [], // 猜你喜欢
      usualList: [] // 必备清单
    }
  },
  async created () {
    const { data: res } = await this.$http.get('/index_goods_estim')
    this.guessList = res.data.guessList
    this.usualList = res.data.usualList
  }
}
</script>

<style lang="less">
.carte {
  padding-bottom: 17px;
  background-color: #f5f5f9;

  .top {
    height: 44px;
    line-height: 44px;
    font-size: 17px;
    text-align: center;
    border: 1px solid rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }

  .content {
    padding: 40px 0;
    text-align: center;

    p {
      font-size: 12px;
      color: #666;
    }
  }

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
