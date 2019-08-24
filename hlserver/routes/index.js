const express = require("express");
const router = express.Router();
const pool = require("../pool");
// 页面加载时自动获取
console.log(4324)
router.get("/", (req, res) => {
  console.log(333)
  var sql = `SELECT * FROM hl_products WHERE county=?`
  pool.query(sql, ["渝中区"], (err, result) => {
    if (err) {
      res.send(err);
      console.log(err);
    } else {
      res.send(result);
    }
  })
})

module.exports=router;