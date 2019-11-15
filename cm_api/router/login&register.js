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

// 用户登录

// 用户退出


// 暴露路由
module.exports = router