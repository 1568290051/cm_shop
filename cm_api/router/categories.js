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
    db.query(query, req.query.id, (error, results) => {
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
router.get('/search', (req, res) => {
    req.query.brand = req.query.brand.split(',')
    req.query.cpuList = req.query.cpuList.split(',')
    let cpus = req.query.cpuList
    for (let index = 0; index < cpus.length; index++) {
        if (cpus[index] === 'intel i9') {
            cpus[index] = 0
        } else if (cpus[index] === 'intel i7') {
            cpus[index] = 1
        } else if (cpus[index] === 'intel i5') {
            cpus[index] = 2
        } else if (cpus[index] === 'intel i3') {
            cpus[index] = 3
        } else if (cpus[index] === '锐龙7') {
            cpus[index] = 4
        } else if (cpus[index] === '锐龙5') {
            cpus[index] = 5
        } else if (cpus[index] === '高通骁龙') {
            cpus[index] = 6
        } else if (cpus[index] === 'cpu类型') {
            cpus[index] = ''
        }
    }
    let screens = req.query.screenList.split(',')
    // console.log(screens)
    for (let index = 0; index < screens.length; index++) {
        if(screens[index] === '12英寸以下'){
            screens[index] = 'scrSize < 12'
        }else if(screens[index] === '12.0-12.9英寸'){
            screens[index] = 'scrSize>=12 and scrSize <13'
        }else if(screens[index] === '13.0-13.9英寸'){
            screens[index] = 'scrSize>=13 and scrSize <14'
        }else if(screens[index] === '14.0-14.9英寸'){
            screens[index] = 'scrSize>=14 and scrSize <15'
        }else if(screens[index] === '15.0-15.9英寸'){
            screens[index] = 'scrSize>=15 and scrSize <16'
        }else if(screens[index] === '16.0-17.3英寸'){
            screens[index] = 'scrSize>=16 and scrSize < 17.3'
        }else if(screens[index] === '17.3英寸以上'){
            screens[index] = 'scrSize>=17.3'
        }
    }
    let queryOne = ''
    let queryTwo = ''
    let queryThree = ''
    let brands = req.query.brand.join(',')
    let cpuss = cpus.join(',')
    let screenss = screens.join(',')
    if (brands.length > 1) {
        for (let index = 0; index < req.query.brand.length; index++) {
            if (index >= 1) {
                queryOne = queryOne + `or title like '%${req.query.brand[index]}%'`
            } else {
                queryOne = queryOne + ` where title like '%${req.query.brand[index]}%'`
            }
        }
    }
    if (cpuss.length >0) {
        for (let index = 0; index < req.query.cpuList.length; index++) {
            if (index >= 1) {
                queryTwo = queryTwo + ` or cpuType =  '${req.query.cpuList[index]}'`
            } else {
                queryTwo = queryTwo + `where cpuType =  '${req.query.cpuList[index]}'`
            }
        }
    }
    if(screenss.length >1){
        console.log(screens)
        for (let index = 0; index < screens.length; index++) {
            if (index >= 1) {
                queryThree = queryThree + ` or ${screens[index]}`
            } else {
                queryThree = queryThree + `where ${screens[index]}`
            }
        } 
    }
    let addQuery = `(select * from cm_pc_goods  ${queryOne})a inner join (select * from cm_pc_goods  ${queryTwo})b on a.id = b.id inner join (select * from cm_pc_goods ${queryThree})c on a.id = c.id`
    // console.log(addQuery)
    if (req.query.priceSign === '2') {
        if (req.query.signs === '0') {
            db.query('select * from' + addQuery, (error, results) => {
                if (error) console.log(error)
                res.json({
                    'ok': 1,
                    data: results
                })
            })
        } else if (req.query.signs === '1') {
            db.query(`select * from ${addQuery} order by a.sales`, (error, results) => {
                if (error) console.log(error)
                res.json({
                    'ok': 1,
                    data: results
                })
            })
        }
    } else {
        if (req.query.priceSign === '0') {
            db.query(`select * from  ${addQuery} ORDER BY a.price`, (error, results) => {
                if (error) console.log(error)
                res.json({
                    'ok': 1,
                    data: results
                })
            })
        } else if (req.query.priceSign === "1") {
            db.query(`select * from  ${addQuery} ORDER BY a.price desc`, (error, results) => {
                if (error) console.log(error)
                res.json({
                    'ok': 1,
                    data: results
                })
            })
        }
    }

})
// 暴露
module.exports = router


