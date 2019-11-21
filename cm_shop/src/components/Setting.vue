<template>
  <div class="setting">
    <!-- 导航 -->
    <van-nav-bar title="用户设置" right-text="按钮" @click-left="$router.back()">
      <van-icon name="arrow-left" size="25" color="#000" slot="left" />
      <van-icon name="data:image/png;charset=utf-8;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAYUExURUxpcTQ8RDQ8RDQ8RDQ8RDQ8RDQ8RDQ8RAEPSCIAAAAHdFJOUwD2cEy/EYW+tvqEAAAAb0lEQVRIDe2ROw7AMAhDwy/c/8ZVOgCVKuhayUyRsSF5WQsFAiAAAl8JiBKpPN29tv2uXTO9Jk5sxuRlz6Cp85nPrrlm0MjteM0pI4M2tGNO8Q2XiEjxDU+NSPX1QCOyqq//tsy8+bKLEwiAwK8IXL+VA7VJ24A2AAAAAElFTkSuQmCC" color="#000" slot="right" size="25" />
    </van-nav-bar>
    <!-- 用户信息表单 -->
      <van-cell-group>
        <van-field v-model="ponImg" clearable type="password" placeholder="请设置您的密码"/>
        <van-field v-model="username" clearable placeholder="设置个性昵称" right-icon="contact" />
        <van-field v-model="sex" clearable placeholder="设置性别" right-icon="envelop-o" />
        <van-field v-model="password" clearable type="password" placeholder="修改密码/修改手机" right-icon="closed-eye" />
        <van-field v-model="address" clearable type="textarea" placeholder="新增/修改地址" right-icon="phone-o" />
      </van-cell-group>
      <!-- 退出登录 -->
      <van-row>
        <van-col span="24" style="margin-top: 15px">
          <van-button class="logout_btn" color="#ffcc00" size="large" replace @click="logout">退出登录</van-button>
        </van-col>
      </van-row>
  </div>
</template>

<script>
export default {
  data () {
    return {
      ponImg: '',
      username: '',
      sex: '',
      password: '',
      address: ''
    }
  },
  created () {},
  methods: {
    logout () {
      sessionStorage.clear()
    }
  }
}
</script>

<style lang="less">
.setting {
  .van-row {
    .reg_btn {
      color: #333;
      border-radius: 12px;
    }
  }
}
</style>
