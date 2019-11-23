<template>
  <div class="order_list">
    <van-nav-bar title="我的订单" left-arrow @click-left="$router.go(-1)" />
    <van-search placeholder="请输入商品名称/订单号" v-model="keyword" />
    <van-tabs v-model="active">
      <van-tab title="全部"></van-tab>
      <van-tab title="待付款"></van-tab>
      <van-tab title="待收货"></van-tab>
      <van-tab title="已完成"></van-tab>
    </van-tabs>
    <div class="empty" v-if="ordersList.length == 0">
      <img src="../assets/image/norders.png">
      <p>您暂时没有相关订单！</p>
    </div>
    <template v-else>
      <div class="orders">
        <van-grid :column-num="1">
          <van-grid-item v-for="item in ordersList" :key="item.id">
            <template slot="default">
              <!-- 所属店铺 -->
              <van-row class="list-top">
                <van-col span="24">
                  <img src="../assets/image/cshop.png">
                  <span>{{item.store}}</span>
                </van-col>
              </van-row>
              <!-- 商品信息 -->
              <van-row class="list-bottom">
                <van-col span="24">
                  <div class="goods-left">
                    <img :src="item.img">
                  </div>
                  <div class="goods-right">
                    <!-- 商品名 -->
                    <p class="van-multi-ellipsis--l2">{{item.title}}</p>
                    <div class="goods-other">
                      <span class="num">共1件商品</span> <span>实付金额：<b class="money">￥69</b></span>
                    </div>
                    <!-- 底部按钮 -->
                    <div class="van-hairline--top" style="margin-right:20px;margin-bottom:8px;"></div>
                    <div class="btns">
                      <van-button type="default" size="small" style="margin-right:15px;border:1px solid #ccc;">去评价
                      </van-button>
                      <van-button type="default" size="small" style="color:#f2270c;border:1px solid #f2270c;">再次购买
                      </van-button>
                    </div>
                  </div>
                </van-col>
              </van-row>
            </template>
          </van-grid-item>
        </van-grid>
      </div>
    </template>
  </div>
</template>

<script>
export default {
  data () {
    return {
      keyword: '',
      active: '',
      ordersList: [1]
    }
  },
  async created () {
    const { data: res } = await this.$http.get('/carte_list', {
      params: {
        ids: [1, 2]
      }
    })
    this.ordersList = res.data
  }
}
</script>

<style lang="less">
.order_list {
  height: 100%;
  background-color: #f7f7f7;

  .empty {
    text-align: center;
    padding: 115px 10px 10px 10px;

    img {
      width: 80px;
      height: 80px;
    }

    p {
      font-size: 16px;
      color: #666;
    }
  }

  .orders {
    .van-grid {
      padding: 0 15px;
    }

    .van-grid-item {
      margin-top: 15px;
    }

    .van-grid-item__content {
      & > div {
        width: 100%;
      }

      .van-col {
        height: 100%;
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
            padding-right: 20px;
            font-size: 15px;
            color: #999;
            height: 28px;
            text-align: right;

            .num {
              font-size: 12px;
            }

            .money {
              color: #151515;
            }
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

          .btns {
            text-align: right;
            padding-right: 20px;
          }
        }
      }
    }
  }
}
</style>
