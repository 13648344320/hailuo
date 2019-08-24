const express = require("express");
const router = express.Router();
const pool = require("../pool");
// 页面加载时自动获取
router.get("/", (req, res) => {
  var sql = `SELECT * FROM hl_products WHERE county=?`
  pool.query(sql, ["渝中区"], (err, result) => {
    if (err) {
      res.send(err);
    } else {
      res.send(result);
    }
  })
})

module.exports=router;