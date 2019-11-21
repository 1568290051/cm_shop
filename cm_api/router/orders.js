// 引入express并且创建router
const router = require("express").Router()
// 引入数据库
const db = require('../mysql/db')
const config = require('../config')
const jwt = require('jsonwebtoken')

// 添加订单
router.post('/orders', (req, res) => {
  let token = req.headers.authorization

  try {
    token = token.trim().substring(7)
    let decode = jwt.verify(token, config.md5_key)

    res.json('ok')
  } catch {
    res.json({
      status: 400,
      error: '用户id错误！'
    })
  }

})

module.exports = router