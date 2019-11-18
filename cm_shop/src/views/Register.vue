<template>
  <div class="regsister">
    <van-nav-bar right-text="联系客服  " @click-right="onClickRight" />
    <div class="reg">
      <h2>欢迎注册创美商城</h2>
      <van-cell-group>
        <van-field v-model="username" clearable placeholder="请设置您的昵称" right-icon="contact" />
        <van-field
          v-model="password"
          clearable
          type="password"
          placeholder="请设置您的密码"
          right-icon="closed-eye"
        />
        <van-field
          v-model="email"
          clearable
          type="email"
          placeholder="请输入您的邮箱"
          right-icon="envelop-o"
        />
        <van-field
          v-model="phone"
          clearable
          type="password"
          placeholder="请输入手机号"
          right-icon="phone-o"
        />
        <van-field v-model="sms" center clearable placeholder="请输入短信验证码">
          <van-button class="yanz" slot="button" size="small" type="primary">获取验证码</van-button>
        </van-field>
      </van-cell-group>
      <van-row>
        <van-col offset="10" span="12" style="margin-top: 15px">
          <van-button color="#ffcc00" replace @click="register">注册</van-button>
        </van-col>

        <van-col offset="8" span="12" style="margin-top: 15px">
          <van-button color="#ee0a24" size="small" replace @click="toLogin">已有账号？点击登录</van-button>
        </van-col>
      </van-row>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      username: '',
      password: '',
      email: '',
      phone: '',
      sms: ''
    }
  },
  created () {},
  methods: {}
}
</script>

<style lang="less">
.regsister .reg {
  padding: 0 37.5px;
  font-size: 12px;
  font-weight: 500;
  .van-cell-group {
    margin-top: 20px;
    // .van-field {
    //   padding-left: 20px;
    // }
  }
  .van-cell-group::after {
    border-width: 0;
  }
  .yanz {
    width: 100px;
    height: 40px;
    color: #ccc;
    font-size: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
  }
}
</style>
