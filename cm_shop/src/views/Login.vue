<template>
  <div class="regsister">
    <van-nav-bar right-text="联系客服  " @click-right="onService" />
    <div class="reg">
      <h2>欢迎登录创美商城</h2>
      <van-cell-group>
        <van-field
          v-model="phone"
          clearable
          type="number"
          placeholder="请输入您的手机号"
          right-icon="phone-o"
        />
        <van-field
          v-model="password"
          clearable
          type="password"
          placeholder="请输入您的密码"
          right-icon="closed-eye"
        />
      </van-cell-group>
      <van-row>
        <van-col span="24" style="margin-top: 15px">
          <van-button class="reg_btn" color="#ffcc00" size="large" replace @click="login">登录</van-button>
        </van-col>
        <van-col offset="7" span="12" style="margin-top: 15px">
          <a class="log_btn" href="javascript:;" @click="toRegister">没有账号？点击注册</a>
        </van-col>
      </van-row>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      password: '',
      phone: ''
    }
  },
  created () {},
  methods: {
    toRegister () {
      this.$router.push('/register')
    },
    login () {
      if (this.phone === '' || this.password === '') {
        return this.$toast.fail('输入框内不能为空')
      } else {
        this.$http.post('/cm_login', {
          phone: this.phone,
          password: this.password
        }).then((res) => {
          console.log(res)
          if (res.status === 200) {
            // 保存令牌进sessionStorage里面
            sessionStorage.setItem('token', res.data.token)
            this.$toast.success(res.data.msg)
            this.$router.push('/')
          } else {
            this.$toast.fail(res.data.err)
          }
        })
      }
    },
    onService () {

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
    margin-top: 20px;
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
