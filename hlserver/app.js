// 使用express构建web服务器
const express = require("express");
const bodyParser = require('body-parser');
const index = require("./routes/index");
const booked = require("./routes/booked");
const find = require("./routes/find");
const cors = require("cors");
var app = express();
//  配置session模块
const session = require("express-session")
app.use(session({
    secret: "128位字符串", //安全字符串
    resave: true, //请求时要更新数据
    saveUninitialized: true //保持初始数据
}));
// 引入路由模块





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



