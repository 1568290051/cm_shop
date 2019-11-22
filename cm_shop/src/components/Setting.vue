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
      <van-field label="头像" clearable disabled input-align="right" right-icon="arrow">
        <van-row slot="input" class="ponImg">
          <van-col offset="14" span="10">
            <van-uploader :after-read="afterRead" preview-size="45">
              <van-icon size="45" :name="ponImg" />
              <!-- <van-image  :src='ponImg'></van-image> -->
            </van-uploader>
          </van-col>
        </van-row>
      </van-field>
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
        placeholder="修改密码"
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
        @click="$router.push('/address')"
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
      <van-field v-model="username" clearable placeholder="请设置您的昵称(2~8位)" right-icon="contact" />
    </van-dialog>
    <!-- 修改性别 -->
    <van-popup v-model="showSex" position="bottom">
      <van-picker
        title="性别"
        item-height="30"
        show-toolbar
        :columns="columns"
        @cancel="showSex = false"
        @confirm="uptSex"
      />
    </van-popup>
    <!-- 修改密码 -->
    <van-dialog
      class="dialog passDia"
      v-model="showPass"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="密码"
      show-cancel-button
      @cancel="ccUserpass"
      @confirm="uptUserpass"
    >
      密码:
      <van-field
        v-model="password"
        clearable
        type="password"
        placeholder="请设置您的密码(6~18位)"
        right-icon="closed-eye"
      />
      <!-- 手机号:
      <van-field
        v-model="phone"
        clearable
        type="number"
        placeholder="请输入您的手机号"
        right-icon="phone-o"
      />-->
    </van-dialog>
  </div>
</template>

<script>
import { mapMutations } from 'vuex'
export default {
  data () {
    return {
      // fileList: [
      //   {
      //     url: this.ponImg
      //   }
      // ],
      // 头像图片路径
      ponImg:
        'http://image.suning.cn/uimg/cmf/cust_headpic/0000000000_01_240x240.jpg',
      username: '',
      sex: '',
      columns: ['女', '男'],
      password: '',
      phone: '',
      address: '',
      showUser: false,
      showSex: false,
      showPass: false
    }
  },
  created () {
    // 用户的数据
    this.$http.get('/set_user').then(res => {
      console.log(res)
      this.username = res.data.username
      if (res.data.sex === 0) {
        this.sex = '女'
      } else {
        this.sex = '男'
      }
    })
  },
  methods: {
    ...mapMutations(['setLogout']),
    // 退出登录
    logout () {
      sessionStorage.clear()
      this.$router.push('/')
      this.setLogout()
    },
    // 修改头像/ 图片上传
    afterRead (file) {
      // let a = document.querySelector('.van-uploader input').files
      // console.log(a)
      console.log(file.content)
      let imgdata = new FormData()
      imgdata.append('img', file.content)
      let config = {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      }
      // this.$http.post('/upload', imgdata).then(res => {
      //   console.log(res)
      // })
      this.$http.post('/upload', imgdata, config).then(res => {
        console.log(res)
      })
    },
    // 取消
    ccUsername () {
      this.username = sessionStorage.getItem('username')
    },
    ccUsersex () {},
    ccUserpass () {
      this.password = ''
      this.phone = ''
    },
    // 确认 用户名
    uptUsername () {
      if (this.username === '') {
        this.showUser = true
        this.$toast.fail('输入框内不能为空')
        return console.log(this.showUser)
      } else {
        this.$http
          .put('/set_username', { username: this.username })
          .then(res => {
            // console.log(res)
            if (res.data.status === 200) {
              this.$toast.success(res.data.msg)
              this.username = this.username
              sessionStorage.setItem('username', this.username)
            } else {
              this.$toast.fail(res.data.err)
              this.username = sessionStorage.getItem('username')
            }
          })
      }
    }, // 性别
    uptSex (value, i) {
      // console.log(value, i)
      this.$http.put('/set_sex', { sex: i }).then(res => {
        if (res.data.status === 200) {
          this.$toast.success(res.data.msg)
          this.sex = value
          this.showSex = false
        }
      })
    }, // 密码手机号
    uptUserpass () {
      if (this.password === '') {
        this.showPass = true
        this.$toast.fail('输入框内不能为空')
        // return
      } else {
        this.$http
          .put('/set_password', { password: this.password })
          .then(res => {
            // console.log(res)
            if (res.data.status === 200) {
              this.$toast.success(res.data.msg)
              this.password = ''
            } else {
              this.$toast.fail(res.data.err)
              this.password = ''
            }
          })
      }
    }
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
  .ponImg {
    margin-top: 0;
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
