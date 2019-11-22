<template>
  <div class="goods">
    <van-swipe class="goods-swipe" :autoplay="3000">
      <van-swipe-item v-for="thumb in goods.thumb" :key="thumb">
        <img :src="thumb" />
      </van-swipe-item>
    </van-swipe>

    <van-cell-group style="padding:12px;">
      <van-cell style="padding:0">
        <div class="goods-price" style="font-size:24px;">
          <span style="font-size:14px">￥</span>
          {{goods.price}}
        </div>
      </van-cell>
      <div>
        <span class="goods_span">包邮</span>
        <span class="goods_span">包税</span>
        <span class="goods_span_i"></span>
      </div>
      <div class="goodsInfo">
        <span class="goodsInfo_span"></span>
        <span class="goodsInfo_text">美国品牌</span>
        <span class="goodsInfo_text" style="line-height:16px;">|</span>
        <span class="goodsInfo_text">海外直邮</span>
      </div>
      <div style=" overflow: hidden;">
        <h1 class="goods_name">
          <i class="goods_name_i" style="    background-color: #6e56e8;color:white">创美国际</i>
          {{goods.title}}
        </h1>
        <div class="goods_gz"></div>
      </div>
      <div class="goods_p">
        <p style="margin-left:20px">全球联保，官方售后可以直接维修</p>
      </div>
    </van-cell-group>

    <!-- 商品导航 -->
    <van-goods-action style="z-index:2">
      <van-goods-action-icon icon="chat-o" text="客服" />
      <van-goods-action-icon icon="shop-o" text="店铺" />
      <van-goods-action-icon icon="cart-o" text="购物车" />
      <van-goods-action-button type="warning" text="立即购买" />
      <van-goods-action-button type="danger" text="加入购物车" />
    </van-goods-action>
  </div>
</template>

<script>
export default {
  data () {
    return {
      goods: [],
      styleShow: false,
      freightShow: false,
      color: '',
      style: '',
      sum: ''
    }
  },
  methods: {
    showStyle () {
      this.styleShow = true
    },
    showFreight () {
      this.freightShow = true
    }
  },
  created () {
    this.$http.get('/goods?id=' + 17).then(res => {
      this.goods = res.data.data
      this.goods.thumb = [
        'https://imgservice.suning.cn/uimg1/b2c/image/EH7OajQDJXjv7X7aDI2rEQ.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/VF84htFFRzofB61BfNf0oQ.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/XThh3fv5Sc7BuMz9kQvL6g.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/VEPA7xhFDWBQGFZMVX1taw.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/mLGwDzuVtgRmg5VQRCINUA.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/3hlPqGWhN5MclwYIynt7ug.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/lePVW4rmZDdDwBXIBcV4MA.jpg_800w_800h_4e_100Q',
        'https://imgservice.suning.cn/uimg1/b2c/image/4p-lnbvXbR8Cpe7WbwxURw.jpg_800w_800h_4e_100Q'
      ]
      console.log(this.goods)
    })
  }
}
</script>

<style lang="less">
body {
  background: #f2f2f2;
}
.goods {
  padding-bottom: 50px;
  &-swipe {
    img {
      width: 100%;
      display: block;
    }
  }
  &-title {
    font-size: 16px;
  }
  &-price {
    color: #f44;
  }
  &-express {
    color: #999;
    font-size: 12px;
    padding: 5px 15px;
  }
  &-cell-group {
    margin: 15px 0;
    .van-cell__value {
      color: #999;
    }
  }
  &-tag {
    margin-left: 5px;
  }
  .goods_span {
    display: inline-block;
    width: 1.875rem;
    height: 1.063rem;
    font-size: 0.5rem;
    font-weight: 800;
    background: #fefbee;
    border: 1px solid #fb0;
    color: #222;
    padding: 1px 3px;
    border-radius: 3px;
    box-sizing: border-box;
    margin-right: 5px;
  }
  .goods_span_i {
    display: inline-block;
    vertical-align: middle;
    width: 12px;
    height: 12px;
    background: url("../assets/image/span_i.png") no-repeat 0 0;
    background-size: 12px 12px;
    margin-top: 2px;
  }
  .goodsInfo {
    margin: 0.75rem 0 0.63rem;
  }
  .goodsInfo_span {
    margin-right: 10px;
    display: inline-block;
    width: 20px;
    height: 14px;
    background-size: contain;
    background-image: url("../assets/image/usa.png");
  }
  .goodsInfo_text {
    display: inline-block;
    padding-right: 9px;
    line-height: 19px;
    font-size: 12px;
    color: #999;
    vertical-align: top;
    height: 17px;
  }
  .goods_name {
    width: 296px;
    float: left;
    flex: 1;
    flex-basis: 1px;
    word-wrap: break-word;
    overflow: hidden;
    margin: 0 0 8px;
    padding-right: 10px;
    font-size: 16px;
    font-weight: 700;
    color: #222;
  }
  .goods_name_i {
    display: inline-block;
    padding: 1px 5px 0;
    background: #fc0;
    color: #222;
    border-radius: 3px;
    font-size: 9px;
    vertical-align: 2px;
    margin-right: 3px;
    line-height: 15px;
  }
  .goods_gz {
    float: right;
    width: 30px;
    height: 30px;
    background: url(../assets/image/gz.png) no-repeat 0 0;
    background-size: 30px 30px;
  }
  .goods_p {
    position: relative;
    margin-top: 0.07rem;
    background-color: #f2f2f2;
    padding: 0.08rem 0.14rem;
    color: #999;
    line-height: 12px;
    font-size: 13px;
  }
}
</style>
