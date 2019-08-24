const express = require("express");
const router = express.Router();
const pool = require("../pool");
 
// 查询所有的信息
// 页面加载时自动获取
router.get("/", (req, res) => {
    var obj = req.query.obj
    var sql = `SELECT * FROM hl_products WHERE county LIKE '%${obj}%' OR type LIKE '%${obj}%'`
    pool.query(sql,[obj], (err, result) => {
        if (err) {
            console.log(err)
        }
        if(!result.length){
            res.send({code:-1})
        }else{
            res.send(result)
        }
    })
})






module.exports = router;