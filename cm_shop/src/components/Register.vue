<template>
  <div class="regsister register">
    <van-nav-bar right-text="联系客服" @click-right="onService" />
    <div class="reg">
      <h2>欢迎注册创美商城</h2>
      <van-cell-group>
        <van-field v-model="username" clearable placeholder="请设置您的昵称" right-icon="contact" />
        <van-field v-model="password" clearable type="password" placeholder="请设置您的密码" right-icon="closed-eye" />
        <van-field v-model="email" clearable type="email" placeholder="请输入您的邮箱" right-icon="envelop-o" />
        <van-field v-model="phone" clearable type="number" placeholder="请输入您的手机号" right-icon="phone-o" />
        <van-field v-model="sms" center clearable placeholder="请输入短信验证码">
          <van-button @click="onSms" class="yanz" slot="button" color="#7232dd" size="small" plain type="primary">获取验证码</van-button>
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

    <!-- 注册协议 -->
    <van-dialog v-model="showDia" title="注册协议及隐私政策" show-cancel-button confirmButtonText='同意' cancelButtonText='不同意'
      confirmButtonColor='#f60c00' @cancel="$router.go(-1)">
      <!-- 协议内容 -->
      <div class="xieyi-content">
        <p>在您注册成为用户的过程中，您需要完成我们的注册流程并通过点击同意的形式在线签署以下协议，
          <span class="bl">请您务必仔细阅读、充分理解协议中的条款内容后再点击同意（尤其是以粗体并下划线标识的条款，
            因为这些条款可能会明确您应履行的义务或对您的权利有所限制）：</span></p>
        <p><a href="javascript:;">《创美用户注册协议》</a></p>
        <p><a href="javascript:;">《创美隐私政策》</a></p>
        <p><a href="javascript:;">《订单共享与安全》</a></p>
        <p>
          <span class="bl">
            【请您注意】如果您不同意上述协议或其中任何条款约定，请您停止注册。
            您停止注册后将仅可以浏览我们的商品信息但无法享受我们的产品或服务。
            如您按照注册流程提示填写信息、阅读并点击同意上述协议且完成全部注册流程后，
            即表示您已充分阅读、理解并接受协议的全部内容；
            并表明您也同意创美可以依据以上的隐私政策内容来处理您的个人信息。</span> 如您对以上协议内容有任何疑问，您可随时与创美客服联系。
        </p>
      </div>
      <!-- 协议链接 -->
      <div class="xieyi-footer">
        <p>
          点击同意即表示您已阅读并同意
          <a href="javascript:;">《创美用户注册协议》</a>与
          <a href="javascript:;">《创美隐私政策》</a>
          并将您的订单信息共享给为完成此订单所必须的第三方合作方。关于
          <a href="javascript:;">《订单共享与安全》</a>
        </p>
      </div>
    </van-dialog>
  </div>
</template>

<script>
export default {
  data () {
    return {
      showDia: true,
      username: '',
      password: '',
      email: '',
      phone: '',
      sms: '' // 短信验证码
    }
  },
  created () { },
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
          phone: this.phone,
          sms: this.sms
        }).then((res) => {
          console.log(res)
          if (res.data.status === 200) {
            this.$toast.success(res.data.msg)
            this.$router.push('/login')
          } else {
            this.$toast.fail(res.data.err)
          }
        })
      }
    },
    onSms () {
      this.$http.post('/getVerifyCode', { phone: this.phone }).then(res => {
        if (res.data.status === 200) {
          this.$toast.success(res.data.msg)
        }
      })
    },
    onService () {}
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

.register .login {
  display: block;
  width: 90%;
  margin: 50px auto;
}

/* 协议内容 */
.register .xieyi-content {
  font-size: 14px;
  color: #2e2d2d;
  height: 200px;
  padding: 0 20px;
  margin-top: 10px;
  overflow: auto;
  line-height: 1.5;
}

.register .xieyi-content a {
  color: #2e2d2d;
}

.register .xieyi-content p {
  margin: 3px 0;
}

.register .xieyi-content .bl {
  text-decoration: underline;
}

/* 协议链接 */
.xieyi-footer {
  height: 100px;
  color: #2e2d2e;
  font-size: 13px;
  padding: 9px 25px;
  line-height: 1.5;
  border-radius: 14px;
  border: 1px solid #ebeef5;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
}

.xieyi-footer a {
  color: #3b7adb;
  text-decoration: underline;
}
</style>
