<template>
  <div style="width:100%;height:100%">
    <!-- 顶部导航 -->
    <van-nav-bar left-arrow style="box-shadow: 0 1px 1px #DCDCDC;">
      <van-search placeholder="搜索商品或店铺" v-model="select" slot="title" />
    </van-nav-bar>
    <!-- 分类 -->
    <van-tree-select
      :items="items"
      :main-active-index.sync="id"
      style="height:100%"
      :click-nav="getDetails()"
    >
      <template slot="content" style="paddingt-top:2rem">
        <div v-for="(item,index) in data" :key="index" style="padding-top:0.5rem">
          <span style="color:#ff6600;font-size:14px">{{item.cate_name}}</span>
          <p
            style="display:inline-block ; border-top:1px solid #f2f2f2; width: 11rem;margin-bottom: 0.3rem;"
          ></p>
          <van-grid :border="false" :column-num="3">
            <van-grid-item
              v-for="(item1,index1) in item.children"
              :key="index1"
              @click="search(item1.cate_name)"
            >
              <van-image style="width:4rem;height:3.3rem" :src="item1.img_src" />
              <span class="text">{{item1.cate_name}}</span>
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
    // 跳转到搜索页面
    search (name) {
      this.$router.push({ path: '/search', query: { name: name } })
    },
    getDetails () {
      this.$http
        .get('/categoriesdetails?id=' + (parseInt(this.id) + 1))
        .then(res => {
          this.data = res.data.data
          console.log(this.data)
        })
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
.text {
  font-size: 11px;
  color: #7f667f;
  padding-top: 1rem;
  overflow: hidden;
  white-space: nowrap; /*强制span不换行*/
  display: inline-block; /*将span当做块级元素对待*/
  width: 4rem; /*限制宽度*/
  overflow: hidden; /*超出宽度部分隐藏*/
  text-overflow: ellipsis; /*超出部分以点号代替*/
  text-align: center;
}
</style>
