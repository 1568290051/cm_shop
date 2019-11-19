<template>
  <div style="width:100%;height:100%">
    <!-- 顶部导航 -->
    <van-nav-bar left-arrow style="box-shadow: 0 1px 1px #DCDCDC;">
      <van-search placeholder="搜索商品或店铺" v-model="select" slot="title" />
    </van-nav-bar>
    <!-- 分类 -->
    <van-tree-select :items="items" :main-active-index.sync="id" style="height:100%" :click-nav="getDetails()">
      <template slot="content" style="paddingt-top:2rem">
        <div v-for="(item,index) in data" :key="index">
          <span style="color:#ff6600;font-size:14px">{{item.cate_name}}</span>
          <van-grid :border="false" :column-num="3">
            <van-grid-item v-for="(item1,index1) in item.children" :key="index1">
              <van-image :src="item1.img_src" />
            </van-grid-item>
          </van-grid>
        </div>
      </template>
    </van-tree-select>
  </div>
</template>

<script>
export default {
  data () {
    return {
      select: '',
      id: 0,
      items: [],
      data: []
    }
  },
  methods: {
    getCategories () {
      this.$http.get('/categories/').then(res => {
        for (let index = 0; index < res.data.data.length; index++) {
          this.items.push({
            text: res.data.data[index].cate_name
          })
        }
      })
    },
    async getDetails () {
      // console.log(1)
      // this.$http
      //   .get('/categoriesdetails?id=' + (parseInt(this.id) + 1))
      //   .then(res => {
      //     this.data = res.data.data
      //     console.log(this.data)
      //   })

      const { data: res } = await this.$http.get('/categoriesdetails', {
        params: {
          id: parseInt(this.id) + 1
        }
      })
      this.data = res.data
    }
  },
  created () {
    this.getCategories()
  }
}
</script>

<style  scoped>
/* 顶部导航 */
.van-nav-bar {
  height: 56px;
}
/* 左侧返回键 */
.van-nav-bar .van-icon {
  font-size: 1.5rem;
  margin-top: -0.7rem;
  color: #767b80;
}
/* 顶部搜索框 */
.van-search__content {
  border: 1px solid #cccccc;
}
/* 分类页面 */
.van-tree-select {
  height: 84% !important;
}
/* 二级分类 */
.van-tree-select__content {
  padding-top: 2rem;
}
</style>
