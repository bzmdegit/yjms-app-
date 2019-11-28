const mysql=require('mysql');
//2.1:配置连接池
var pool = mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    port:3306,
    database:"ms",
    connectionLimit:15
  })
  module.exports=pool;