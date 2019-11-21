<template>
  <div>
    <!-- 顶部导航部分 -->
    <van-nav-bar left-arrow>
      <van-search placeholder="请输入搜索关键词" v-model="value" slot="title" />

      <img class="nav-right" src="../assets/image/search-icon8.png" slot="right" />
    </van-nav-bar>
    <div class="choiceBox" v-show="isShow">
      <ul class="choicUl">
        <li
          @click="addSort(item,$event)"
          class="choicTag"
          v-for="(item,index) in arrayData"
          :key="index"
        >{{item}}</li>
      </ul>
      <div class="choicButtonLeft" @click="again()">重选</div>
      <div class="choicButtonRight" @click="confirm();getSearchList()">确认</div>
    </div>
    <div style="hieght:8.1rem">
      <img src="../assets/image/157414410768575783.png" style="width:100%" />
    </div>
    <ul class="search-ul">
      <li class="search-li" @click="getGoods($event,1);getSearchList(0)" style="color:#ff9e55">综合</li>
      <li class="search-li" @click="getGoods($event,2);getSearchList(1)">销量</li>
      <li class="search-li" @click="getGoods($event,3);getSearchList(2)">
        价格
        <i class="search-price"></i>
      </li>
    </ul>
    <ul class="choicLListUl">
      <li class="choicLListLi">苏宁服务</li>
      <li class="choicLListLi" @click="showBrand()">
        {{brand}}
        <i v-show="isShowIcon" class="choicI"></i>
      </li>
      <li class="choicLListLi" @click="showCpu()">
        {{cpuList}}
        <i v-show="isShowIcon" class="choicI"></i>
      </li>
      <li class="choicLListLi" @click="showScreen()">
        {{screenList}}
        <i v-show="isShowIcon" class="choicI"></i>
      </li>
    </ul>
    <div style="margin-top:1rem ;padding-bottom:4rem;">
      <van-card
        v-for="(item,index) in searchList"
        :key="index"
        :price="item.price"
        :title="item.title"
        :thumb="item.img"
      >
        <div slot="bottom" style="margin-top:0.5rem">
          {{item.estim}}条评价 好评率{{item.fdback}}
          <br />
          {{item.store}}
        </div>
      </van-card>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {
      value: '',
      // 商品列表
      goods: [],
      // 标志
      sign: 0,
      // 品牌列表
      brand: '品牌',
      brandArray: [],
      // cpu列表
      cpuList: 'cpu类型',
      cupArray: [],
      // 屏幕列表
      screenList: '屏幕尺寸',
      screenArray: [],
      arrayData: [],
      // 是否显示分类框
      isShow: false,
      isShowIcon: true,
      // 搜索页面数据列表
      searchList: [],
      signs: 0,
      priceSign: 2
    }
  },
  methods: {
    getGoods (e, index) {
      if (index === 3) {
        let li = document.getElementsByClassName('search-li')
        li.forEach(v => {
          v.style.color = 'black'
        })
        e.target.style.color = '#ff9e55'
        let i = document.getElementsByClassName('search-price')
        // console.log(i[0].className === 'search-price')
        if (i[0].className === 'search-price') {
          i[0].classList.add('search-price-up')
          this.priceSign = 0
          // console.log(this.priceSign)
        } else if (i[0].className === 'search-price search-price-up') {
          i[0].classList.add('search-price-lower')
          this.priceSign = '1'
          // console.log(this.priceSign)
        } else {
          i[0].classList.remove('search-price-lower')
          i[0].classList.add('search-price-up')
          this.priceSign = 0
          // console.log(this.priceSign)
        }
      } else {
        let li = document.getElementsByClassName('search-li')
        li.forEach(v => {
          v.style.color = 'black'
        })
        e.target.style.color = '#ff9e55'
        let i = document.getElementsByClassName('search-price')
        i[0].classList.remove('search-price-lower')
        i[0].classList.remove('search-price-up')
        this.priceSign = 2
      }

      // console.log(e.target.innerText)
      // console.log(e.currentTarget)
    },
    showBrand () {
      this.arrayData = [
        'Apple',
        '联想(Lenovo)',
        '华硕(ASUS)',
        '惠普(hp)',
        '神州战神',
        'ThinkPad',
        '戴尔(DELL)',
        '雷神(THUNDEROBOT)',
        '小米(mi)',
        '机械师(machenike)',
        '华为(HUAWEI)',
        '机械革命(MECHREVO)',
        '未来人类(Terrans Force)',
        '微星(msi)',
        '微软(Microsoft)',
        '宏基(acer)',
        '外星人(Alienware)',
        'iFunk'
      ]
      this.isShow = true
      this.sign = 0
      if (this.brandArray.length > 0) {
        this.brand = this.brandArray
        let li = document.getElementsByClassName('choicTag')
        let data = []
        // console.log(li)
        for (let index = 0; index < this.brandArray.length; index++) {
          for (let i = 0; i < this.arrayData.length; i++) {
            if (this.brandArray[index] === this.arrayData[i]) {
              data.push(i)
            }
          }
        }
        for (let index = 0; index < data.length; index++) {
          li[data[index]].classList.add('selection')
        }
      } else {
        this.brand = []
      }
    },
    showCpu () {
      this.arrayData = [
        'intel i9',
        'intel i7',
        'intel i5',
        'intel i3',
        '锐龙7',
        '锐龙5',
        '高通骁龙'
      ]
      this.isShow = true
      this.sign = 1
      if (this.cupArray.length > 0) {
        this.cpuList = this.cupArray
        // console.log(this.cpuList)
        let li = document.getElementsByClassName('choicTag')
        let data = []
        // console.log(li)
        for (let index = 0; index < this.cupArray.length; index++) {
          for (let i = 0; i < this.arrayData.length; i++) {
            if (this.cupArray[index] === this.arrayData[i]) {
              data.push(i)
            }
          }
        }
        // console.log(data)
        for (let index = 0; index < data.length; index++) {
          li[data[index]].classList.add('selection')
        }
      } else {
        this.cpuList = []
      }
    },
    showScreen () {
      this.arrayData = [
        '12英寸以下',
        '12.0-12.9英寸',
        '13.0-13.9英寸',
        '14.0-14.9英寸',
        '15.0-15.9英寸',
        '16.0-17.3英寸',
        '17.3英寸以上'
      ]
      this.isShow = true
      this.sign = 2
      if (this.screenArray.length > 0) {
        this.screenList = this.screenArray
        let li = document.getElementsByClassName('choicTag')
        let data = []
        // console.log(li)
        for (let index = 0; index < this.screenArray.length; index++) {
          for (let i = 0; i < this.arrayData.length; i++) {
            if (this.screenArray[index] === this.arrayData[i]) {
              data.push(i)
            }
          }
        }
        for (let index = 0; index < data.length; index++) {
          li[data[index]].classList.add('selection')
        }
      } else {
        this.screenList = []
      }
    },
    addSort (data, e) {
      // console.log(data, e.target.className)
      e.target.classList.add('selection')
      if (this.sign === 0) {
        this.brand.push(e.target.innerText)
      } else if (this.sign === 1) {
        this.cpuList.push(e.target.innerText)
      } else {
        this.screenList.push(e.target.innerText)
      }
    },
    again () {
      if (this.sign === 0) {
        this.brand = []
        this.brandArray = []
      } else if (this.sign === 1) {
        this.cpuList = []
        this.cupArray = []
      } else {
        this.screenList = []
        this.screenArray = []
      }
      let li = document.getElementsByClassName('choicTag')
      // console.log(li)
      for (let index = 0; index < li.length; index++) {
        li[index].classList.remove('selection')
      }
    },
    confirm () {
      // console.log(this.sign)
      if (this.sign === 0) {
        if (this.brand.length === 0) {
          this.brand = '品牌'
          this.isShowIcon = true
        } else {
          this.brandArray = this.brand
          this.brand = this.brand.join(',')
        }
      } else if (this.sign === 1) {
        // console.log(this.cpuList)
        if (this.cpuList.length === 0) {
          this.cpuList = 'cpu类型'
          this.isShowIcon = true
        } else {
          // console.log('执行')
          this.cupArray = this.cpuList
          this.cpuList = this.cpuList.join(',')
        }
      } else {
        if (this.screenList.length === 0) {
          this.screenList = '屏幕尺寸'
          this.isShowIcon = true
        } else {
          this.screenArray = this.screenList
          this.screenList = this.screenList.join(',')
        }
      }
      this.isShow = false
      let li = document.getElementsByClassName('choicTag')
      // console.log(li)
      for (let index = 0; index < li.length; index++) {
        li[index].classList.remove('selection')
      }
    },
    // 综合分类查询
    async getSearchList (sign) {
      if (sign) {
        this.signs = sign
      } else {
        this.signs = 0
      }
      // console.log(this.signs)
      let cpus = this.cpuList
      for (let index = 0; index < cpus.length; index++) {
        if (cpus[index] === 'intel i9') {
          cpus[index] = 0
        } else if (cpus[index] === 'intel i7') {
          cpus[index] = 1
        } else if (cpus[index] === 'intel i5') {
          cpus[index] = 2
        } else if (cpus[index] === 'intel i3') {
          cpus[index] = 3
        } else if (cpus[index] === '锐龙7') {
          cpus[index] = 4
        } else if (cpus[index] === '锐龙5') {
          cpus[index] = 5
        } else if (cpus[index] === '高通骁龙') {
          cpus[index] = 6
        } else if (cpus[index] === 'cpu类型') {
          cpus[index] = ''
        }
      }
      console.log(cpus)
      await this.$http
        .get(
          `/search?signs=${this.signs}&priceSign=${this.priceSign}&brand=${this.brandArray}&cpuList=${cpus}&screenList=${this.screenArray}`
        )
        .then(res => {
          // console.log(res)
          this.searchList = res.data.data
        })
    }
  },
  created () {
    this.getSearchList()
  }
}
</script>

<style  scoped>
/* 顶部导航 */
.van-nav-bar {
  box-shadow: 0 1px 1px #dcdcdc;
  height: 54px;
}
/* 左侧返回键 */
.van-nav-bar__left {
  left: 4px;
}
.van-nav-bar .van-icon {
  font-size: 1.5rem;
  margin-top: -0.7rem;
  color: #767b80;
}
/* 导航栏右侧 */
.nav-right {
  position: absolute;
  right: 0rem;
  top: 0rem;
  margin-top: -2.5rem;
  width: 1.5rem;
  height: 1.5rem;
}
/* 分类 div */
.choiceBox {
  position: absolute;
  top: 55px;
  left: 0rem;
  width: 100%;
  height: 14rem;
  background: #ffffff;
  overflow: auto;
}
/* 分类div中的button */
.choicButtonLeft {
  position: absolute;
  bottom: 0rem;
  left: 0rem;
  width: 50%;
  height: 3rem;
  background: #f8f8f8;
  line-height: 3rem;
  box-sizing: border-box;
  font-size: 15px;
  font-weight: bold;
  text-align: center;
}
.choicButtonRight {
  background: #ff6600;
  color: white;
  position: absolute;
  bottom: 0rem;
  right: 0rem;
  width: 50%;
  height: 3rem;
  line-height: 3rem;
  box-sizing: border-box;
  font-size: 15px;
  font-weight: bold;
  text-align: center;
}
.choicUl {
  padding: 0.52rem 0 0.52rem 1.52rem;
  background: #fff;
  position: relative;
  z-index: 201;
  overflow-y: auto;
  max-height: 10.08rem;
}
/* 分类div中的标签 */
.choicTag {
  display: inline-block;
  width: 9.56rem;
  height: 32px;
  /* float: left; */
  margin-right: 0.68rem;
  background: #f7f7f7;
  border-radius: 2px;
  line-height: 32px;
  text-align: center;
  color: #333;
  font-size: 0.8rem;
  margin-bottom: 0.4rem;
  padding: 0 0.2rem;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  box-sizing: border-box;
}
/* 商品排序 li标签 */
.search-li {
  /* font-weight: bold; */
  font-size: 14px;
  display: inline-block;
  width: 33.3333%;
  text-align: center;
  height: 2.3rem;
  line-height: 2.3rem;
  border-bottom: 1px solid #f2f2f2;
  color: #333;
}
/* 价格排序  i标签*/
.search-price {
  display: inline-block;
  width: 10px;
  height: 18px;
  background-image: url("../assets/image/icon.png");
  background-position: 0px 4px;
  background-size: 66px 162px;
  margin-left: -0.2rem;
  margin-bottom: -0.1rem;
}
.search-price-up {
  display: inline-block;
  width: 10px;
  height: 18px;
  background-image: url("../assets/image/icon.png");
  background-position: -28px 4px;
  background-size: 66px 162px;
  margin-left: -0.2rem;
  margin-bottom: -0.1rem;
}
.search-price-lower {
  display: inline-block;
  width: 10px;
  height: 18px;
  background-image: url("../assets/image/icon.png");
  background-position: -41px 4px;
  background-size: 66px 162px;
  margin-left: -0.2rem;
  margin-bottom: -0.1rem;
}
/* 品牌 cpu 等选择 ul */
.choicLListUl {
  width: 100%;
  height: 1.76rem;
  padding: 0.32rem 0.2rem;
  background: #fff;
  overflow: hidden;
  border-bottom: 1px solid #f2f2f2;
}
.choicLListLi {
  float: left;
  width: 4.66rem;
  height: 1.52rem;
  margin-top: 0.2rem;
  background: #f5f5f5;
  font-size: 0.78rem;
  line-height: 1.52rem;
  color: #333;
  text-align: center;
  border-radius: 2px;
  padding: 0 0.26rem;
  margin-right: 0.4rem;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
/* 品牌 cpu等选择中的 i */
.choicI {
  display: inline-block;
  width: 8px;
  height: 7px;
  background: url("../assets/image/icon.png") -13px -7px no-repeat;
  background-size: 60px;
  margin-left: 0.16rem;
}
/* 选中后css */
.selection {
  border: 1px solid #ff6600;
  color: #ff6600;
}
/* 价格 */
.van-card__price {
  margin-top: 0.5rem;
  font-size: 17px;
}
</style>
