const mysql=require('mysql');
//2.1:配置连接池
var pool = mysql.createPool({
    host     : process.env.MYSQL_HOST,
    port     : process.env.MYSQL_PORT,
    user     : process.env.ACCESSKEY,
    password : process.env.SECRETKEY,
    database : 'app_' + process.env.APPNAME,
    connectionLimit:5
  })
  module.exports=pool;