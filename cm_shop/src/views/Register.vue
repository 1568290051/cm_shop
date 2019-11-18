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
          type="number"
          placeholder="请输入您的手机号"
          right-icon="phone-o"
        />
        <van-field v-model="sms" center clearable placeholder="请输入短信验证码">
          <van-button class="yanz" slot="button" color="#7232dd" size="small" plain type="primary">获取验证码</van-button>
        </van-field>
      </van-cell-group>
      <van-row>
        <van-col span="24" style="margin-top: 15px">
          <van-button class="reg_btn" color="#ffcc00" size="large" replace @click="register">注册</van-button>
        </van-col>
        <van-col offset="7" span="12" style="margin-top: 15px">
          <a class="log_btn" href="javascript:;" @click="toLogin">已有账号？点击登录</a>
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
  methods: {
    toLogin () {
      this.$router.push('/login')
    },
    register () {
      if (this.username === '' || this.password === '' || this.email === '' || this.phone === '' || this.sms === '') {
        return this.$toast.fail('输入框内不能为空')
      } else {
        this.$http.post('/cm_register', {
          username: this.username,
          password: this.password,
          email: this.email,
          phone: this.phone
        }).then((res) => {
          // console.log(res)
          if (res.data.status === 200) {
            this.$toast.success(res.data.msg)
            this.$router.push('/login')
          } else {
            this.$toast.fail(res.data.err)
          }
        })
      }
    }
  }
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
    font-size: 15px;
    border-radius: 5px;
  }
  .van-row {
    .reg_btn {
      color: #333;
      border-radius: 12px;
    }
    .log_btn {
      color: #000;
      font-size: 14px;
    }
  }

}
</style>
