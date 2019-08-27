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
// 功能  删除预定列表中的数据=====取消预定
router.get("/del", (req, res) => {
    var id = req.query.id
    var sql = `DELETE FROM hl_booklist WHERE id= ? `
    pool.query(sql, [id], (err,result) => {
         if (err) throw err;
         console.log(result);
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
            // req.session.uname = result[0].uname;
            res.send({
                code: 1,
                msg: "success login",
                // x: req.session.uname
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