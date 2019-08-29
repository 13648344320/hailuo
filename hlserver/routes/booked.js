const express = require("express");
const router = express.Router();
const pool = require("../pool");
// 页面加载时自动获取
router.get("/", (req, res) => {
    var sql = `SELECT * FROM hl_booklist `
    pool.query(sql, (err, result) => {
        if (err) {
            res.send(err);
            console.log(err);
        } else {
            res.send(result);
        }
    })
})
//  向booklist 中添加数据
router.get('/insert',(req,res)=>{
    console.log(req)
    var pid = req.query.pid;
    var uname = req.query.uname;
    var county = req.query.county;
    var lg = req.query.lg;
    var lt = req.query.lt;
    var type = req.query.type;
    var gro = req.query.gro;
    var pics = req.query.pics;
    var details = req.query.details;
    var price = req.query.price;
    var time = req.query.time;
    console.log(uname)
    console.log(pid)
    var sql = `
    INSERT INTO hl_booklist VALUE( null,?,?,?,?,?,?,?,?,?,?,? )
    `
    pool.query(sql,[pid,uname,county,lg,lt,type,gro,pics,details,price,time],(err,result)=>{
        if(err) throw err;

        if (result.affectedRows > 0){
            res.send({
                code:1,
                msg:"预定成功"
            })
        }else{
            res.send({
                code:-1,
                msg:"预定失败"
            })
        }
    })
})
// 功能  删除预定列表中的数据=====取消预定
router.get("/del", (req, res) => {
    var id = req.query.id
    var sql = `DELETE FROM hl_booklist WHERE id= ? `
    pool.query(sql, [id], (err,result) => {
         if (err) throw err;
         // 添加判断条件  如果sql  insert/delete/update 执行成功条件：影响行数 affectedRows
         if (result.affectedRows > 0) {
             res.send({
                 code: 1,
                 msg: "删除成功"
             })
         } else {
             res.send({
                 code: -1,
                 msg: "删除失败"
             })
         }
    })
})
// 功能  用户登录验证
router.get("/login", (req, res) => {
    var uname = req.query.uname;
    var password = req.query.upwd;
    var sql = `SELECT * FROM hl_user WHERE uname=? AND password=?`
    pool.query(sql, [uname, password], (err, result) => {
        if (err) throw err;
        // 如果未查询到,返回的是空数组
        if (result.length) {
            req.session.id = result[0].id;
            res.send({
                code: 1,
                msg: "success login",
                // x: req.session
            })
        } else {
            res.send({
                code: -1,
                msg: "no success login"
            })
        }
    })
})

// 功能: 验证注册的用户名是否重复
router.get("/reg", (req, res) => {
    var uname = req.query.uname;
    var sql = `SELECT * FROM hl_user WHERE uname=?`
    pool.query(sql, [uname], (err, result) => {
        if (err) throw err;
        // 如果未查询到,返回的是空数组
        if (result.length) {
            res.send({
                code: 1,
                msg: "success login"
            })
        } else {
            res.send({
                code: -1,
                msg: "no success login"
            })
        }
    })
})


// 功能: 注册用户
router.post("/insert_user", (req, res) => {
    var uname = req.body.uname;
    var password = req.body.pwd;
    var phone = req.body.phone;
    console.log(uname, password, phone)
    var sql = `INSERT INTO hl_user VALUE(?,?,?,?)`
    pool.query(sql, [null, uname, password, phone], (err, result) => {
        if (result.affectedRows > 0) {
            // req.session.uname = result[0].uname;
            res.send({
                code: 1,
                msg: "reg ok"
            });
        } else {
            res.send({
                code: -1,
                msg: "reg no"
            })
        }

    })
})
module.exports = router;