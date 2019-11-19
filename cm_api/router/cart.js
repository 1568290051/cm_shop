// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')

// 获取推荐商品
router.get('/index_goods_estim', (req, res) => {
  db.query('select * from cm_pc_goods limit 10;select * from cm_index_goods where estim = 0;', (error, results) => {
    res.json({
      status: 200,
      data: {
        guessList: results[0],
        usualList: results[1]
      }
    })
  })
})

module.exports = router