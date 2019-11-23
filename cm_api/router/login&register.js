// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')
// 密码加密
const md5 = require('md5')
const { md5_key } = require('../config')
// 设置令牌
const jwt = require('jsonwebtoken')
// SDK工具包
// npm install @alicloud/sms-sdk --save
const SMSClient = require('@alicloud/sms-sdk')
// ACCESS_KEY_ID/ACCESS_KEY_SECRET 根据实际申请的账号信息进行替换
// 阿里云自己的密钥
const accessKeyId = 'LTAI4FnrFbn6TCSFxejrejc5'
const secretAccessKey = 'nUrW72qlaWbYYybT4Hh5pNCQjoh44B'
//初始化sms_client
let smsClient = new SMSClient({ accessKeyId, secretAccessKey })

// 用户注册
router.post('/cm_register', (req, res) => {
  let username = req.body.username
  let password = req.body.password
  let phone = req.body.phone
  let email = req.body.email
  let sms = req.body.sms // 验证码
  // console.log(sms)
  let reUsername = /^[\u4E00-\u9FA5A-Za-z0-9_]{2,8}$/
  let rePassword = /^[0-9a-zA-z_]{6,18}/
  let rePhone = /^1(3|5|7|8|9)\d{9}$/
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
  // 查询之前有无创建该用户 判断用户的手机号 
  let ssql = 'select count(*) c from cm_users where phone =?'
  db.query(ssql, phone, (err, result) => {
    if (err) console.log(err)
    console.log(result)
    if (result[0].c > 0) {
      res.json({
        status: 400,
        err: '该用户已存在'
      })
      return
    } else {
      // 校验短信验证码
      let sql2 = 'select * from cm_verifyCode'
      db.query(sql2, (err, result) => {
        // console.log(result)
        if (err) return console.log(err)
        if (sms.toString() === (result[0].verifyCode).toString()) {
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
        } else {
          res.json({
            status: 400,
            err: '该验证码无效'
          })
        }
      })
    }
  })
})

// 发送短信验证码
router.post('/getVerifyCode', (req, res) => {
  // 接收手机
  const phone = req.body.phone
  // console.log(phone)
  // // 生成短信验证码
  var code = ''
  for (var i = 0; i < 6; i++) {
    code += Math.floor(Math.random() * 10);
  }

  // 添加验证码
  let sql = 'select * from cm_verifyCode'
  db.query(sql, (err, result) => {
    // console.log(result)
    if (err) return console.log(err)
    // 判断之前是否有发送验证码
    if (result.length !== 0) {
      // 更新验证码为现在发送的验证码
      let sql = `update cm_verifyCode set verifyCode = ${code}`
      db.query(sql, (err, result) => {
        // console.log(result)
        if (err) return console.log(err)
        res.json({
          status: 200,
          msg: '验证码已经发送到您的手机里，请注意查看'
        })
      })
    } else {
      // 把验证码添加进去
      let sql1 = `insert into cm_verifyCode(verifyCode) values(${code})`
      db.query(sql1, (err, result) => {
        // console.log(result)
        if (err) return console.log(err)
        res.json({
          status: 200,
          msg: '验证码已经发送到您的手机里，请注意查看'
        })
      })
    }
  })

  //发送短信
  smsClient.sendSMS({
    PhoneNumbers: phone, // 必填: 待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码, 批量调用相对于单条调用及时性稍有延迟, 验证码类型的短信推荐使用单条调用的方式；发送国际/ 港澳台消息时，接收号码格式为：国际区号 + 号码，如“85200000000”
    SignName: '创美商城app', // 必填: 短信签名 - 可在短信控制台中找到
    TemplateCode: 'SMS_177554440', // 必填: 短信模板 - 可在短信控制台中找到，发送国际 / 港澳台消息时，请使用国际 / 港澳台短信模版
    TemplateParam: '{"code":"' + code + '"}' //可选: 模板中的变量替换JSON串, 如模板内容为"亲爱的${name},您的验证码为${code}"时。
  }).then(function (res) {
    let { Code } = res
    if (Code === 'OK') {
      //处理返回参数
      console.log(res)
    }
  }, function (err) {
    console.log(err)
  })

})

// 校验验证码
// router.get('/verifyCode')

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
  let sql = 'select id,password,username from cm_users where phone=?'
  db.query(sql, phone, (err, result) => {
    if (err) console.log(err)
    // console.log(result)
    // 判断有无该用户
    if (result[0]) {
      if (result[0].password == md5(password + md5_key)) {
        // 设置令牌
        let token = jwt.sign({
          id: result[0].id
        }, md5_key, { expiresIn: 60 * 60 * 24 }) // 令牌一天过期
        // console.log(token)
        // db.query('select ')
        res.json({
          status: 200,
          token: token,
          username: result[0].username,
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