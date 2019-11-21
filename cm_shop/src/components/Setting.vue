<template>
  <div class="setting">
    <!-- 导航 -->
    <van-nav-bar title="用户设置" right-text="按钮" @click-left="$router.back()">
      <van-icon name="arrow-left" size="25" color="#000" slot="left" />
      <van-icon
        name="data:image/png;charset=utf-8;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAYUExURUxpcTQ8RDQ8RDQ8RDQ8RDQ8RDQ8RDQ8RAEPSCIAAAAHdFJOUwD2cEy/EYW+tvqEAAAAb0lEQVRIDe2ROw7AMAhDwy/c/8ZVOgCVKuhayUyRsSF5WQsFAiAAAl8JiBKpPN29tv2uXTO9Jk5sxuRlz6Cp85nPrrlm0MjteM0pI4M2tGNO8Q2XiEjxDU+NSPX1QCOyqq//tsy8+bKLEwiAwK8IXL+VA7VJ24A2AAAAAElFTkSuQmCC"
        color="#000"
        slot="right"
        size="25"
      />
    </van-nav-bar>
    <!-- 用户信息表单 -->
    <van-cell-group>
      <van-field
        label="头像"
        v-model="ponImg"
        clearable
        disabled
        type="password"
        input-align="right"
        right-icon="arrow"
      />
      <van-field
        label="昵称"
        v-model="username"
        clearable
        disabled
        placeholder="设置个性昵称"
        input-align="right"
        right-icon="arrow"
        @click="showUser = !showUser"
      />
      <van-field
        label="性别"
        v-model="sex"
        clearable
        disabled
        placeholder="设置性别"
        input-align="right"
        right-icon="arrow"
        @click="showSex = !showSex"
      />
      <van-field
        label="账户安全"
        v-model="password"
        clearable
        disabled
        type="password"
        input-align="right"
        placeholder="修改密码/修改手机"
        right-icon="arrow"
        @click="showPass = !showPass"
      />
      <van-field
        label="地址管理"
        v-model="address"
        clearable
        disabled
        type="text"
        input-align="right"
        placeholder="新增/修改地址"
        right-icon="arrow"
        @click="showAdrs = !showAdrs"
      />
    </van-cell-group>
    <!-- 退出登录 -->
    <van-row type="flex" justify="center">
      <van-col span="18" style="margin-top: 15px">
        <van-button class="logout_btn" color="#ff6600" size="large" replace @click="logout">退出登录</van-button>
      </van-col>
    </van-row>
    <!-- 修改昵称 -->
    <van-dialog
      class="dialog"
      v-model="showUser"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="昵称"
      show-cancel-button
      @cancel="ccUsername"
      @confirm="uptUsername"
    >
      用户名:
      <van-field v-model="username" clearable placeholder="请设置您的昵称" right-icon="contact" />
    </van-dialog>
    <!-- 修改性别 -->
    <van-dialog
      class="dialog"
      v-model="showSex"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="性别"
      show-cancel-button
      @cancel="ccUsersex"
      @confirm="uptUsersex"
    >
      性别:
      <van-field v-model="sex" clearable placeholder="请选择您的性别" right-icon="contact" />
    </van-dialog>
    <!-- 修改密码 -->
    <van-dialog
      class="dialog passDia"
      v-model="showPass"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="密码"
      show-cancel-button
    >
      密码:
      <van-field v-model="password" clearable type="password" placeholder="请设置您的密码" right-icon="closed-eye" />
      手机号:
      <van-field v-model="phone" clearable type="number" placeholder="请输入您的手机号" right-icon="phone-o" />
    </van-dialog>
    <!-- 修改地址 -->
    <van-dialog
      class="dialog"
      v-model="showAdrs"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="地址"
      show-cancel-button
    >
      地址:
    </van-dialog>
  </div>
</template>

<script>
export default {
  data () {
    return {
      id: 0,
      ponImg: '',
      username: '',
      sex: '',
      password: '',
      phone: '',
      address: '',
      showUser: false,
      showSex: false,
      showPass: false,
      showAdrs: false
    }
  },
  created () {
    // 用户昵称
    this.username = sessionStorage.getItem('username')
    // 用户的数据
    this.$http.get('/set_user').then((res) => {
      console.log(res)
    })
    // 用户id
  },
  methods: {
    // 退出登录
    logout () {
      sessionStorage.clear()
      this.$router.push('/')
    },
    // 取消
    ccUsername () {
      // Dialog.resetDefaultOptions()
      this.username = sessionStorage.getItem('username')
    },
    ccUsersex () {},
    ccUserpass () {
      this.password = ''
      this.phone = ''
    },
    ccUseradrs () {
      this.address = ''
    },
    // 确认
    uptUsername (id) {
      if (this.username === '') {
        this.$toast.fail('输入框内不能为空')
        // eslint-disable-next-line no-unused-expressions
        this.showUser === true
        return console.log(this.showUser)
      } else {
        this.$http.put(`/set_username/${id}`, this.username).then((res) => {
          if (res.data.status === 200) {
            this.$toast.success(res.data.msg)
            this.username = this.username
          }
        })
      }
    },
    uptUsersex () {}
  }
}
</script>

<style lang="less">
.setting {
  .van-row {
    margin-top: 20px;
    .logout_btn {
      color: #333;
      border-radius: 10px;
    }
  }
  .dialog {
    padding: 10px 10px 0;
    top: 25%;
    .van-field {
      margin-top: 10px;
      margin-bottom: 20px;
    }
  }
  .passDia {
    top: 40%;
  }
}
</style>
