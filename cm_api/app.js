// 引入框架
const express = require('express')
// 引入config
const config = require('./config')
// 创建框架对象
const app = express()
// 引入 body-parser post请求
const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({extended: false}))
// 解决port请求的数据显示问题
app.use(bodyParser.json())
// 解决跨域问题
const cors = require('cors')
app.use(cors())

// 配置路由
// app.use('/api/v1', require('./router/index'))
app.use('/api/v1', require('./router/login&register'))

// 设置连接端口
app.listen(
  config.server.port,
  config.server.ip,
  console.log(`server at ${config.server.ip} : ${config.server.port}`)
)