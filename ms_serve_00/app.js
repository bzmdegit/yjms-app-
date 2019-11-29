//1:引入第三方模块
const express = require("express");
const cors = require("cors");
const bodyParser=require("body-parser")
const session = require("express-session");
const useRouter=require("./routers/use.js");
//2:配置第三方模块
 //2.2:跨域
var server = express();
server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080",
   "http://ms02.applinzi.com" ,
	"http://msmsms.applinzi.com"
   ],
   credentials:true
}))
 //2.3:session
server.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))
 //指定静态目录
server.use(express.static("public"))
 //创建body中间件
server.use(bodyParser.urlencoded({
 	extended:false
 }));
server.listen(5050,()=>{console.log("listen 5050...")});
 
 //测试一下服务器端
server.use("/use",useRouter);

