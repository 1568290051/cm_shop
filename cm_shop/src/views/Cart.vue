<template>
  <div class="cart">
    <div class="top">购物车</div>
    <div class="login">
      <span>登陆后同步电脑与手机购物车的商品</span>
      <van-button size="mini">去登录</van-button>
    </div>
  </div>
</template>

<style lang="less">
.cart {
  height: 100%;
  background-color: #f5f5f9;

  .top {
    height: 44px;
    line-height: 44px;
    text-align: center;
    border: 1px solid rgba(0, 0, 0, 0.1);
    background-color: #fff;
  }

  .login {
    width: 300px;
    margin: 30px auto;
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
}
</style>
