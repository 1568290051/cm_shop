// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')
// 密码加密
const md5 = require('md5')
const {md5_key} = require('../config')
// 设置令牌
const jwt = require('jsonwebtoken')

// 用户注册
router.post('/cm_register', (req, res) => {
  let username = req.body.username
  let password = req.body.password
  let phone = req.body.phone
  let email = req.body.email
  let reUsername = /^[\u4E00-\u9FA5A-Za-z0-9_]{2,8}$/
  let rePhone = /^1(3|5|7|8|9)\d{9}$/
  let rePassword = /^[0-9a-zA-z_]{6,18}/
  let reEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/
  // 校验
  if (username) {
    if (!reUsername.test(username)) {
      res.json({
        status: 400,
        err: '您的昵称必须要在2~8位'
      })
      return
    }
  }
  if (password) {
    if (!rePassword.test(password)) {
      res.json({
        status: 400,
        err: '您的密码必须要在6~18位'
      })
      return
    }
  }
  if (phone) {
    if (!rePhone.test(phone)) {
      res.json({
        status: 400,
        err: '您的手机号格式不正确'
      })
      return
    }
  }
  if (email) {
    if (!reEmail.test(email)) {
      res.json({
        status: 400,
        err: '您的邮箱格式不正确'
      })
      return
    }
  }
  // 判断之前有无创建该用户
  let ssql = 'select count(*) c from cm_users where username =?'
  db.query(ssql, username, (err, result) => {
    if (err) console.log(err)
    // console.log(result)
    if (result[0].c > 0) {
      res.json({
        status: 400,
        err: '该用户名已存在'
      })
      return
    } else {
      let data = {
        username,
        email,
        phone,
        password: md5(password + md5_key)
      }
      let sql = 'insert into cm_users set ?'
      db.query(sql, data, (err, result) => {
        if (err) console.log(err)
        res.json({
          status: 200,
          msg: '恭喜您注册成功'
        })
      })
    }
  })

})

// 用户登录
router.post('/cm_login', (req, res) => {
  let phone = req.body.phone
  let rePhone = /^1(3|5|7|8|9)\d{9}$/
  let password = req.body.password
  let rePassword = /^[0-9a-zA-z_]{6,18}/
  // 校验
  if (phone) {
    if (!rePhone.test(phone)) {
      res.json({
        status: 400,
        err: '您的手机号格式不正确'
      })
      return
    }
  }
  if (password) {
    if (!rePassword.test(password)) {
      res.json({
        status: 400,
        err: '您的密码必须要在6~18位'
      })
      return
    }
  }
  let sql = 'select id,password from cm_users where phone=?'
  db.query(sql, phone, (err, result) => {
    if (err) console.log(err)
    // console.log(result)
    // 判断有无该用户
    if (result[0]) {
      if (result[0].password == md5(password + md5_key)) {
        // 设置令牌
        let token = jwt.sign({
          id: result[0].id
        }, md5_key, {expiresIn: 60 * 60 *24}) // 令牌一天过期

        res.json({
          status: 200,
          token: token,
          msg: '恭喜您登录成功'
        })
      } else {
        res.json({
          status: 400,
          err: '您的密码有误，请检查后再输入'
        })
        return
      }
    } else {
      res.json({
        status: 400,
        err: '该用户不存在，请检查后再输入'
      })
      return
    }
  })

})

// 用户退出


// 暴露路由
module.exports = router