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
    token = token.trim().substring(6)
    let decode = jwt.verify(token, config.md5_key)
    let u_id = decode.id // 用户id
    let goodsIds = req.body.ids // 购买商品id
    let totalArr = req.body.total.split(',') // 购买数量
    let a_id = req.body.a_id // 收获地址id
    let status = req.body.status

    db.query(`select title,price,img,store from cm_pc_goods where id in (${goodsIds});
    select name,tel,province,city,county from cm_address where id =${a_id}`, (err1, data) => {
      // 获取订单
      let sql = `insert into cm_orders values`
      let addressObj = data[1][0]
      let u_name = addressObj.name
      let u_phone = addressObj.tel
      let u_address = addressObj.province + '' + addressObj.city + addressObj.county
      // 拼接sql
      data[0].forEach((goods, i) => {
        sql += `(null,'${goods.title}',${goods.price},${totalArr[i] -0},'${goods.img}','${goods.store}','${u_name}','${u_phone}','${u_address}', ${status}, ${u_id}),`
      })
      sql = sql.substring(0, sql.length - 1) + ';'
      // 添加订单
      db.query(sql, (err2) => {
        if (err2) {
          res.json({
            status: 400,
            msg: '订单添加失败！'
          })
          return
        }
        res.json({
          status: 200
        })
      })
    })

  } catch {
    res.json({
      status: 400,
      error: '用户id错误！'
    })
  }

})

module.exports = router