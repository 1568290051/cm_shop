<template>
  <div class="noLoginCart">
    <div class="top">购物车</div>
    <div class="login">
      <span>登陆后同步电脑与手机购物车的商品</span>
      <van-button size="mini" @click="$router.push('/login')">去登录</van-button>
    </div>
    <div class="content">
      <img width="87" height="87" src="../assets/image/sn-cart-empty.png" alt="">
      <p>购物车还是空的，快来挑选好货吧</p>
      <van-button size="mini" @click="$router.push('/')">去逛逛</van-button>
    </div>
    <div class="bottom"><img src="../assets/image/reach-bottom.png" alt=""></div>
  </div>
</template>

<style lang="less">
.noLoginCart {
  height: 100%;
  background-color: #f5f5f9;

  .top {
    height: 44px;
    line-height: 44px;
    font-size: 17px;
    text-align: center;
    border: 1px solid rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }

  .login {
    width: 330px;
    margin: 10px auto;
    margin-bottom: 80px;
    height: 30px;
    line-height: 30px;
    border-radius: 3px;
    padding: 0 10px;
    background-color: #ffe37e;

    span {
      color: #222;
      font-size: 12px;
    }

    .van-button {
      float: right;
      margin-top: 4px;
      border: none;
      // background-color: #000;
      color: #fff;
    }
  }

  .content {
    text-align: center;

    p {
      font-size: 12px;
      color: #666;
    }
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
