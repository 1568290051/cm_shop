// 配置连接路由
const router = require('express').Router()
// 连接数据库
const db = require('../mysql/db')
// 获取商品信息
router.get('/goods',(req,res)=>{
    db.query('select * from cm_pc_goods where id = ?',req.query.id,(error,results)=>{
        if(error)console.log(error)
        res.json({
            'ok':1,
            data:results[0]
        })
    })
})
// 暴露路由
module.exports = router