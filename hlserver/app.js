// 使用express构建web服务器
const express = require("express");
const bodyParser = require('body-parser');
const index = require("./routes/index");
const booked = require("./routes/booked");
const find = require("./routes/find");
const cors = require("cors");

// 引入路由模块




var app = express();
app.listen(5050);
app.use(cors({
    origin: ["http://localhost:8080", "http://127.0.0.1:8080", ],
    credentials: true //请求验证

}));
app.use(bodyParser.urlencoded({extended:false}))
app.use(express.static('public'));
// 使用路由器管理路由
app.use("/index", index);
app.use("/booked",booked);
app.use("/find",find)



