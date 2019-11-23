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
    // 用户id
    let u_id = decode.id
    // 购买商品id
    let goodsIds = req.body.ids
    // 购买数量
    let totalArr = req.body.total.split(',')
    // 收获地址id
    let a_id = req.body.a_id


    db.query(`select title,price,img,store from cm_pc_goods where id in (${goodsIds});
    select name,tel,province,city,county from cm_address where id =${a_id}`, (err1, data) => {

      let sql = `insert into cm_orders values`
      let addressObj = data[1][0]
      let u_name = addressObj.name
      let u_phone = addressObj.tel
      let u_address = addressObj.province + '' + addressObj.city + addressObj.county

      data[0].forEach((goods, i) => {
        sql += `(null,'${goods.title}',${goods.price},${totalArr[i] -0},'${goods.img}','${goods.store}','${u_name}','${u_phone}','${u_address}'),`
      })
      sql = sql.substring(0, sql.length - 1) + ';'

      db.query(sql, (err2) => {
        if (err2) console.log(err2);
        res.send('ok')
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