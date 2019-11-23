<template>
  <div class="adrs">
    <!-- 导航 -->
    <van-nav-bar title="用户设置" right-text="按钮" @click-left="$router.back()">
      <van-icon name="arrow-left" size="25" color="#000" slot="left" />
      <van-icon
        name="data:image/png;charset=utf-8;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAMAAAAp4XiDAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAYUExURUxpcTQ8RDQ8RDQ8RDQ8RDQ8RDQ8RDQ8RAEPSCIAAAAHdFJOUwD2cEy/EYW+tvqEAAAAb0lEQVRIDe2ROw7AMAhDwy/c/8ZVOgCVKuhayUyRsSF5WQsFAiAAAl8JiBKpPN29tv2uXTO9Jk5sxuRlz6Cp85nPrrlm0MjteM0pI4M2tGNO8Q2XiEjxDU+NSPX1QCOyqq//tsy8+bKLEwiAwK8IXL+VA7VJ24A2AAAAAElFTkSuQmCC"
        color="#000" slot="right" size="25" />
    </van-nav-bar>
    <!-- 地址列表 -->
    <van-address-list v-model="chosenAddressId" :list="adrList" @add="showAdd = !showAdd" @edit="onEdit"
      @select='changeDefault' />
    <!-- 添加地址 -->
    <van-dialog :closeOnClickOverlay="true" class="dialog" v-model="showAdd" width="350" confirmButtonText="确认"
      cancelButtonText="取消" title="收货地址管理" :showConfirmButton="false">
      <van-address-edit :area-list="areaList" show-postal show-set-default show-search-result
        :area-columns-placeholder="['请选择', '请选择', '请选择']" @save="onSave" />
    </van-dialog>
    <!-- 修改地址 -->
    <van-dialog :closeOnClickOverlay="true" class="dialog" v-model="showAdrs" width="350" confirmButtonText="确认"
      cancelButtonText="取消" title="收货地址管理" :showConfirmButton="false">
      <van-address-edit :area-list="areaList" :address-info="addressInfo" show-postal show-delete show-set-default
        show-search-result :search-result="searchResult" :area-columns-placeholder="['请选择', '请选择', '请选择']" @save="onUpt"
        @delete="onDelete" @change-area="onChangeArea" @change-detail="onChangeDetail" />
    </van-dialog>
  </div>
</template>

<script>
import area from '../assets/js/Area.json'
export default {
  data () {
    return {
      // 收货人信息初始值
      addressInfo: {},
      addressForm: {
        id: 0, // 每条地址的唯一标识
        name: '', // 收货人姓名
        tel: '', // 收货人手机号
        province: '', // 省份
        city: '', // 城市
        county: '', // 区县
        addressDetail: '', // 详细地址
        areaCode: '', // 地区编码，通过省市区选择获取（必填）
        postalCode: '', // 邮政编码
        isDefault: false // 是否为默认地址
      },
      searchResult: [
        // {
        //   name: '河北省',
        //   address: '详细地址'
        // }
      ], // 详细地址搜索结果 省市区
      showAdrs: false, // 修改、删除地址表单
      showAdd: false, // 添加地址表单
      chosenAddressId: 1, // 设为默认地址
      adrList: [], // 接收的地址
      areaList: area, // 省市区选择
      addressId: 0 // 当前选择的地址id
    }
  },
  created () {
    this.getAddress()
  },
  methods: {
    // 展示所有地址
    async getAddress () {
      const { data: res } = await this.$http.get('/set_getaddress')
      let oarr = []
      res.data.forEach((val, i, arr) => {
        // console.log(arr[i])
        let obj = {}
        obj = {
          id: arr[i].id,
          name: arr[i].name,
          tel: arr[i].tel,
          address: arr[i].province + arr[i].city + arr[i].county
        }
        // 数组去重
        // this.adrList = new Set(this.adrList.push(obj))
        oarr.push(obj)
      })
      this.chosenAddressId = oarr[0].id
      this.adrList = oarr
    },
    // 添加地址
    onSave (content) {
      // console.log(content)
      this.$http.post('/set_address_add', content).then(res => {
        // console.log(res)
        if (res.data.status === 200) {
          this.$toast.success(res.data.msg)
          this.showAdd = false
          // 清空表单
          content = {}
          this.getAddress()
        } else {
          this.$toast('傻逼吧')
          this.showAdd = false
        }
      })
      // console.log(this.addressInfo)
    },
    // 根据id获得用户地址
    onEdit (item, index) {
      // 修改、删除地址需要用到的当前地址id
      this.addressId = this.adrList[index].id
      // console.log(this.addressId)
      this.$http.get('/set_getaddress/' + this.addressId).then(res => {
        // console.log(res.data)
        res.data.areaCode += ''
        if (res.data.isDefault === 0) {
          res.data.isDefault = true
        } else {
          res.data.isDefault = false
        }
        this.addressInfo = { ...res.data }
        // console.log(this.addressInfo)
      })
      this.showAdrs = !this.showAdrs
      this.$toast('编辑地址:' + index)
    },
    // 修改默认地址
    changeDefault (obj) {
      this.$http.put('/changeDafault/' + obj.id).then(() => {
        this.getAddress()
      })
    },
    // 修改地址
    onUpt (content) {
      this.$http.put('/set_address_upt', content).then(res => {
        // console.log(res)
        if (res.data.status === 200) {
          this.$toast.success(res.data.msg)
          this.showAdrs = false
          // 清空表单
          content = {}
          this.getAddress()
        } else {
          this.$toast(res.data.err)
          this.showAdrs = false
        }
      })
    },
    // 确认删除地址时触发
    onDelete (content) {
      // this.addressId
      this.$http.delete('/set_address_del/' + this.addressId).then(res => {
        // console.log(res)
        if (res.data.status === 200) {
          this.$toast.success(res.data.msg)
          this.showAdrs = false
          this.getAddress()
        } else {
          this.$toast.fail(res.data.err)
        }
      })
    },
    // 修改地区时触发
    onChangeArea (values) {
      // console.log(values)
    },
    // 修改详细地址时触发
    onChangeDetail () { }
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
      padding: 32px 16px 10px;
    }
  }
}
</style>
