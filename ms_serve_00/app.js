//1:引入第三方模块
const express = require("express");
const cors = require("cors");
const bodyParser=require("body-parser")
const session = require("express-session");
const detailsRouter=require("./routers/details.js");
const indexRouter=require("./routers/index.js");
const addRouter=require("./routers/add.js");
const searchRouter=require("./routers/search.js");
const searchdisRouter=require("./routers/searchdis.js");
const userRouter=require("./routers/user.js");
const storyRouter=require("./routers/story.js");
const useRouter=require("./routers/use.js");
//2:配置第三方模块
 //2.2:跨域
var server = express();
server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
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
server.listen(3000);
 
 //测试一下服务器端


server.use("/details",detailsRouter);
server.use("/index",indexRouter);
server.use("/add",addRouter);
server.use("/search",searchRouter);
server.use("/searchdis",searchdisRouter);
server.use("/user",userRouter);
server.use("/story",storyRouter);
server.use("/use",useRouter);

