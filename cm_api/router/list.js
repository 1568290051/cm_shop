const router = require('express').Router()
const db = require('../mysql/db')

// 获取清单顶部
router.get('/list_title', (req, res) => {
  db.query('SELECT * FROM cm_pri_list', (error, results) => {
    res.json({
      status: 200,
      data: results
    })
  })
})

// 获取清单内容
router.get('/list_content', (req, res) => {
  let priID = req.query.id //一级id
  let numReg = /^[0-9]*$/
  if (!numReg.test(priID)) {
    res.json({
      status: 400,
      error: 'id格式错误!'
    })
    return
  }

  let sql = `SELECT id,list_title FROM cm_sec_list WHERE pri_id=${priID}; 
              SELECT * FROM cm_thi_list where sec_id IN 
               (SELECT id FROM cm_sec_list WHERE pri_id=${priID});`
  db.query(sql, (error, results) => {
    results[0].forEach((obj) => {
      obj.children = results[1].filter(item => item.sec_id == obj.id)
    })
    res.json({
      status: 200,
      data: results[0]
    })
  })
})

module.exports = router