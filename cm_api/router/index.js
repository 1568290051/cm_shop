// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')

// 首页商品搜索
router.get('/search_goods', (req, res) => {
  db.query('select * from 商品表 where goods_name(字段名) like "%' + req.query.keyword +'%"', (err, result) => {
    if (err) console.log.log(err)
    res.json(result)
  })
})

// 获得首页的轮播图
router.get('/index_slide', (req, res) => {
  let sql = 'select * from cm_index_slide where link is null'
  db.query(sql, (err, result) => {
    if (err) {
      console.log(err)
      res.json({
        status: 400,
        err: err
      })
      return
    } else {
      res.json({
        status: 200,
        data: result
      })
    }
  })
})

// 获得首页分类
router.get('/index_cate', (req, res) => {
  let sql = 'select * from cm_index_hbo limit 6,9'
  db.query(sql, (err, result) => {
    if (err) {
      console.log(err)
      res.json({
        status: 400,
        err: err
      })
      return
    } else {
      res.json({
        status: 200,
        data: result
      })
    }
  })
})

// 获得首页商品列表
router.get('/index_goods', (req, res) => {
  let sql = `select * from cm_index_goods`
  db.query(sql, (err, result) => {
    if (err) {
      console.log(err)
      res.json({
        status: 400,
        err: err
      })
      return
    } else {
      res.json({
        status: 200,
        data: result
      })
    }
  })
})

// 暴露路由
module.exports = router