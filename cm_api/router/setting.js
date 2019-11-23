// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')
// md5加密
const md5 = require('md5')
const {
  md5_key
} = require('../config')
// 设置令牌
const jwt = require('jsonwebtoken')
// 使用fs,path写入图片
const fs = require('fs')
const path = require('path')
const multer = require('multer')
// 定义保存图片的地址
const saveImg = '../public/images/'
// 网页访问图片时的地址
const fileBaseUrl = 'http://127.0.0.1:9999/api/v1'

// 定义一个拿到用户id的方法
let takeId = function (token) {
  token = token.substring(6)
  let decode = jwt.verify(token, md5_key)
  // console.log(decode)
  return {
    id
  } = decode
}

// 根据id得到用户的所有数据
router.get('/set_user', (req, res) => {
  let token = req.headers.authorization
  try {
    // 拿到用户id
    // token = token.substring(6)
    // let decode = jwt.verify(token, md5_key)
    // const {
    //   id
    // } = decode
    takeId(token)
    // console.log(takeId(token))
    // let sql = 'select * from cm_users where id=?;select * from cm_address where isDefault = 0'
    let sql = 'select * from cm_users where id=?'
    db.query(sql, id, (err, result) => {
      if (err) console.log(err)
      // console.log(result);
      res.json(result[0])
    })
  } catch (err) {}
})

// 修改头像
router.post('/upload', multer().single('img'), (req, res) => {
  let token = req.headers.authorization
  try {
    let imgData = req.body.img
    let base64Data = imgData.replace(/^data:image\/\w+;base64,/, '')
    let dataBuffer = new Buffer(base64Data, 'base64')
    fs.writeFileSync(path.join(__dirname, saveImg + '12.png'), dataBuffer)

    res.json({
      status: 200,
      url: ''
    })
  } catch (err) {
    res.json('err')
  }

})

// 修改用户名
router.put('/set_username', (req, res) => {
  let username = req.body.username
  let reUsername = /^[\u4E00-\u9FA5A-Za-z0-9_]{2,8}$/
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
  let token = req.headers.authorization
  try {
    takeId(token)
    let params = [username, id]
    // console.log(params)
    let sql = 'update cm_users set username=? where id=?'
    db.query(sql, params, (err, result) => {
      if (err) console.log(err)
      res.json({
        status: 200,
        msg: '修改昵称成功'
      })
    })
  } catch (err) {
    console.log(err)
    res.json({
      status: 400,
      err: '修改失败'
    })
  }
})

// 修改性别
router.put('/set_sex', (req, res) => {
  let sex = req.body.sex
  // 校验
  // if (!sex) {
  //   res.json({
  //     status: 400,
  //     err: '输入框内不能为空'
  //   })
  // }
  let token = req.headers.authorization
  try {
    takeId(token)
    let params = [sex, id]
    // console.log(params)
    let sql = 'update cm_users set sex=? where id=?'
    db.query(sql, params, (err, result) => {
      if (err) console.log(err)
      res.json({
        status: 200,
        msg: '修改性别成功'
      })
    })
  } catch (err) {
    console.log(err)
    res.json({
      status: 400,
      err: '修改失败'
    })
  }
})

// 修改密码手机号
router.put('/set_password', (req, res) => {
  let password = req.body.password
  // let phone = req.body.phone
  let rePassword = /^[0-9a-zA-z_]{6,18}/
  // let rePhone = /^1(3|5|7|8|9)\d{9}$/
  // 校验
  if (password) {
    if (!rePassword.test(password)) {
      res.json({
        status: 400,
        err: '您的密码必须要在6~18位'
      })
      return
    }
  }
  // if (phone) {
  //   if (!rePhone.test(phone)) {
  //     res.json({
  //       status: 400,
  //       err: '您的手机号格式不正确'
  //     })
  //     return
  //   }
  // }
  let token = req.headers.authorization
  try {
    takeId(token)
    // 密码加密
    password = md5(password + md5_key)
    let params = [password, id]
    let sql = 'update cm_users set password=? where id=?'
    db.query(sql, params, (err, result) => {
      if (err) console.log(err)
      res.json({
        status: 200,
        msg: '修改密码成功'
      })
    })
  } catch (err) {
    console.log(err)
    res.json({
      status: 400,
      err: '修改失败'
    })
  }
})

// 得到订单地址
router.get('/orders_getaddress', (req, res) => {
  let sql = 'select * from cm_address where isDefault = 0'
  db.query(sql, (err, result) => {
    if (err) return console.log(err)
    res.json(result[0])
  })
})

// 得到地址数据
router.get('/set_getaddress', (req, res) => {
  let sql = 'select * from cm_address order by isDefault'
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
// 修改默认选中
let changeDefault = function (id) {
  db.query('update cm_address set isDefault = 1;update cm_address set isDefault = 0 where id=?', id, (error) => {
    if (error) return 'id错误'
  })
}

// 添加地址
router.post('/set_address_add', (req, res) => {
  if (req.body.isDefault === false) {
    req.body.isDefault = 1
  } else {
    req.body.isDefault = 0
    changeDefault(req.body.id)
  }
  let {
    name,
    tel,
    province,
    city,
    county,
    addressDetail,
    areaCode,
    postalCode
  } = req.body
  // console.log(req.body)
  // for (let key in req.body) {
  //   if (key == 'country') {
  //     delete req.body[key]
  //   }
  // }
  delete req.body.country
  console.log(req.body)
  let token = req.headers.authorization
  try {
    takeId(token)
    req.body.user_id = id
    // console.log(req.body)
    let sql = 'insert into cm_address set ?'
    db.query(sql, req.body, (err, result) => {
      if (err) return console.log(err)
      // console.log(result)
      res.json({
        status: 200,
        msg: '添加地址成功'
      })
    })
  } catch (err) {
    console.log(err)
    res.json({
      status: 400,
      err: '添加失败'
    })
  }
})

// 根据地址id显示当前数据
router.get('/set_getaddress/:id', (req, res) => {
  let id = req.params.id
  // console.log(id)
  let sql = 'select * from cm_address where id=?'
  db.query(sql, id, (err, result) => {
    if (err) return console.log(err)
    // console.log(result)
    res.json(result[0])
  })
})

// 修改地址
router.put('/set_address_upt', (req, res) => {
  if (req.body.isDefault === false) {
    req.body.isDefault = 1
  } else {
    req.body.isDefault = 0
    changeDefault(req.body.id)
  }
  let {
    name,
    tel,
    province,
    city,
    county,
    addressDetail,
    areaCode,
    postalCode
  } = req.body
  // let sql = 'update cm_address set name=?,phone=?,province=?,city=?,area=?,zipcode=?,detail=? where id=?'
  let id = req.body.id
  delete req.body.country
  delete req.body.id
  let sql = 'update cm_address set ? where id=?'
  db.query(sql, [req.body, id], (err, result) => {
    if (err) {
      console.log(err)
      return res.json({
        status: 400,
        err: '修改失败'
      })
    }
    res.json({
      status: 200,
      msg: '修改成功'
    })
  })
})

// 删除地址
router.delete('/set_address_del/:id', (req, res) => {
  let id = req.params.id
  let sql = 'delete from cm_address where id=?'
  db.query(sql, id, (err, result) => {
    if (err) {
      console.log(err)
      return res.json({
        status: 400,
        err: '删除失败'
      })
    }
    res.json({
      status: 200,
      msg: '删除成功'
    })
  })
})


// 暴露路由
module.exports = router