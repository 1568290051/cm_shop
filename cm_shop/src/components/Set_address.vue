<template>
  <div class="adrs">
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
    <!-- 地址列表 -->
    <van-address-list
      v-model="chosenAddressId"
      :list="adrList"
      @add="showAdrs = !showAdrs"
      @edit="onEdit"
    />
    <!-- 修改地址 -->
    <van-dialog
      class="dialog"
      v-model="showAdrs"
      width="350"
      confirmButtonText="确认"
      cancelButtonText="取消"
      title="收货地址管理"
      :showConfirmButton="false"
    >
      <van-address-edit
        :area-list="areaList"
        show-postal
        show-delete
        show-set-default
        show-search-result
        :search-result="searchResult"
        :area-columns-placeholder="['请选择', '请选择', '请选择']"
        @save="onSave"
        @delete="onDelete"
        @change-detail="onChangeDetail"
      />
    </van-dialog>
  </div>
</template>

<script>
import area from '../assets/js/Area.json'
export default {
  data () {
    return {
      showAdrs: false,
      chosenAddressId: 1,
      adrList: [], // 接收的地址
      searchResult: [], // 详细地址搜索结果
      areaList: area
    }
  },
  created () {
    this.$http.get('/set_getaddress').then((res) => {
      // console.log(res.data.data)
      res.data.data.forEach((val, i, arr) => {
        // console.log(arr[i])
        let obj = {}
        obj = {
          id: i,
          name: arr[i].name,
          tel: arr[i].phone,
          address: arr[i].province + arr[i].city + arr[i].area
        }
        this.adrList.push(obj)
      })
      console.log(this.adrList)
    })
  },
  methods: {
    // 根据id修改用户地址
    onEdit (item, index) {
      this.$toast('编辑地址:' + index)
      this.showAdrs = !this.showAdrs
    },
    // 点击保存按钮时触发
    onSave () {
      this.$toast('save')
    },
    // 确认删除地址时触发
    onDelete () {
      this.$toast('delete')
      this.showAdrs = false
    },
    // 修改详细地址时触发
    onChangeDetail () {}
  }
}
</script>

<style lang="less">
.adrs {
  .dialog {
    padding: 10px 10px 0;
    top: 48%;
    .van-field {
      padding: 0px 16px;
      margin-top: 10px;
      margin-bottom: 20px;
    }
    .van-address-edit__buttons {
      padding: 32px 16px 10px
    }
  }
}
</style>
