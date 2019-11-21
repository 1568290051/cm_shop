// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')
// 密码加密
const md5 = require('md5')
const {
  md5_key
} = require('../config')
console.log(md5_key);
// 设置令牌
const jwt = require('jsonwebtoken')

// 根据id得到用户的所有数据
router.get('/set_user', (req, res) => {
  let token = req.headers.authorization
  try {
    // 拿到用户id
    token = token.substring(6)
    let decode = jwt.verify(token, md5_key)
    console.log(decode);
    const {
      id
    } = decode
    let sql = 'select * from cm_users where id=?'
    db.query(sql, id, (err, result) => {
      if (err) console.log(err)
      console.log(result);
      res.json(result)
    })
  } catch (err) {}
})

// 修改头像

// 修改用户名
// router.post('/set_username', (req, res) => {
//   let token = req.headers.authorization
//   try {
//     // 拿到用户id
//     token = token.substring(7)
//     console.log(token + '=======');
//     let decode = jwt.verify(token, md5_key)
//     let sql = 'select * from users where id=?'
//     // let id = req.query.id
//     // db.query(sql, id, (err, result) => {
//     //   if (err) console.log(err)
//     //    res.json(result)
//     // })
//   } catch (err) {
//     console.log(err)
//   }

//   let params = [req.body.username, req.body.id]
//   let sql = 'update cm_users set username=? where id=?'
//   db.query(sql, params, (err, result) => {
//     if (err) console.log(err)
//     res.json({
//       status: 200,
//       msg: '修改昵称成功'
//     })
//   })
// })

// 修改性别
// router.post('/set_sex', (req, res) => {
//   let params = [req.body.sex, req.body.id]
//   let sql = 'update cm_users set sex=? where id=?'
//   db.query(sql, params, (err, result) => {
//     if (err) console.log(err)
//     res.json({
//       status: 200,
//       msg: '修改性别成功'
//     })
//   })
// })

// // 修改密码
// router.post('/set_password', (req, res) => {
//   let params = [req.body.password, req.body.id]
//   let sql = 'update cm_users set password=? where id=?'
//   db.query(sql, params, (err, result) => {
//     if (err) console.log(err)
//     res.json({
//       status: 200,
//       msg: '修改密码成功'
//     })
//   })
// })

// // 修改地址
// router.post('/set_address', (req, res) => {
//   let params = [req.body.prvin, req.body.city, req.body.area, req.body.id]
//   let sql = 'update cm_users set prvin=?,city=?,area=? where id=?'
//   db.query(sql, params, (err, result) => {
//     if (err) console.log(err)
//     res.json({
//       status: 200,
//       msg: '修改地址成功'
//     })
//   })
// })


// 暴露路由
module.exports = router