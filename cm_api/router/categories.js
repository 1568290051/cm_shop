// 引入express并且创建router
const router = require("express").Router()
// 引入数据库
const db = require('../mysql/db')
router.get(`/categories`, (req, res) => {
    let query = "SELECT cate_name FROM cm_pri_cates "
    db.query(query, (error, results) => {
        if (error) console.log(error)
        res.json({
            'ok': 1,
            'data': results
        })
    })
})
router.get(`/categoriesdetails`, (req, res) => {

    let query = "select * from cm_sec_cates where pri_id = ?;select * from cm_thi_cates;"
    db.query(query,req.query.id ,(error, results) => {
        if (error) console.log(error)
        let data = results[0]
       for (let index = 0; index < data.length; index++) {
            data[index].children = []  
       }

        for (let index = 0; index <= results[1].length - 1; index++) {
            for (let i = 0; i < data.length; i++) {
                if (results[1][index].sec_id == data[i].id) {
                        data[i].children.push(results[1][index])
                        continue;
                }
            }

        }
        res.json({
            'ok': 1,
            'data': data
        })
    })
})
router.get('/search',(req,res)=>{
    console.log(req.query.sign)
    if(req.query.signs ==='0'){
        db.query('select * from cm_pc_goods',(error,results)=>{
            if(error)console.log(error)
            res.json({
                'ok':1,
                data:results
            })
        })
    }else if(req.query.signs === '1'){
        db.query('select * from cm_pc_goods order by sales',(error,results)=>{
            if(error)console.log(error)
            res.json({
                'ok':1,
                data:results
            })
        })
    }
})
// 暴露
module.exports = router


