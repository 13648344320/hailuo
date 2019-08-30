const express = require("express");
const router = express.Router();
const pool = require("../pool");
 
// 查询所有的信息
// 页面加载时自动获取
router.get("/", (req, res) => {
    var obj = req.query.obj
    if(!obj){
         var sql = `SELECT * FROM hl_products`
    }else{
        var sql = `SELECT * FROM hl_products WHERE county LIKE '%${obj}%' OR type LIKE '%${obj}%'`
    }
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


//  detail 页面加载时获取  对应的 id 值查询图片   hl_details表
router.get("/details",(req,res)=>{
    var pid = req.query.pid
    var sql = `SELECT * FROM hl_details WHERE pid=?`
    pool.query(sql, [pid], (err, result)=>{
        if(err) throw err;
        if (!result.length) {
            res.send({
                code: -1
            })
        } else {
            res.send(result)
        }
    })
})

//  detail 页面加载时获取  对应的 id 值查询  hl_products 表
router.get("/products", (req, res) => {
    var pid = req.query.pid
    var sql = `SELECT * FROM hl_products WHERE pid=?`
    pool.query(sql, [pid], (err, result) => {
        if (err) throw err;
        if (!result.length) {
            res.send({
                code: -1
            })
        } else {
            res.send(result)
        }
    })
})



module.exports = router;