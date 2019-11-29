// const express=require('express');
// const pool=require('../pool.js');
// var router=express.Router();
// //配置express-session

// //登录注册接口
// //添加用户注册路由
// router.get('/reg',(rep,res)=>{
//     var obj=rep.query;
//     if(obj.user_name==''){
//         res.send({code:400,msg:'用户名不能为空'});
//         return;
//     }
//     if(obj.user_pwd){
//         res.send({code:401,msg:'密码不能为空'});
//         return;
//     }
//     if(obj.user_phone){
//         res.send({code:402,msg:'手机号不能为空'});
//         return;
//     }
//     if(obj.user_email){
//         res.send({code:403,msg:'邮箱不能为空'});
//         return;
//     }
//     if(obj.user_gender){
//         res.send({code:404,msg:'性别不能为空'});
//         return;
//     }
//     new data('user_reg_time');
//     pool.query('INSERT INTO ms_user SET?'[obj],function(err,result){
//         if(err) throw err;
//         console.log(result);
//         //是否注册成功
//         if(result.affectedRows>0){
//             res.send({code:200,msg:'reg success'});
//         }
//     });
// });
// //添加路由
// router.get('/',(req,res)=>{
//     console.log(111);
//     res.send('这是注册路由');
//     pool.query('SELECT *  FROM ms_user',[],(err,result)=>{
//         console.log(222);
//         if(err){throw err};
//         //if(result.length>0){
//             console.log(333);
//             res.send({code:200,msg:result});
//        //}else{
//         //    res.send({code:201,msg:'login err'});
    
//         //}
//     })
// });
// //添加用户登录路由
// router.get('/login',(req,res)=>{
//     var obj=req.query;
//     console.log(obj);
//     if(!obj.user_name){
//         res.send({code:400,msg:'user_name required'});
//         return;
//     }
//     if(!obj.user_pwd){
//         res.send({code:401,msg:'user_pwd required'});
//         return;
//     }
//     //new data('user_login_time');
//     //执行sql
//     pool.query('SELECT user_name,user_pwd  FROM ms_user  WHERE uname=? && upwd=?',[obj.user_name,obj.user_pwd],(err,result)=>{
//         if(err){throw err};
//         if(result.length>0){
//             res.send({code:200,msg:'login success'});
//         }else{
//             res.send({code:201,msg:'login err'});
    
//         }
//     })
// })
// module.exports=router;


const express = require("express");
const pool = require("../pool.js");
var router = express.Router();
//登录接口
router.get("/login", (req, res) => {
  var user_phone=req.query.phone;
  var user_pwd=req.query.upwd;
   if(!user_phone){
        res.send({code:400,msg:'手机号不能为空'});
        return;
    }
    //console.log(user_name);
    if(!user_pwd){
        res.send({code:401,msg:'密码不能为空'});
        return;
    }
    var sql = `SELECT * FROM ms_user WHERE user_phone=? && user_pwd=?`
    pool.query(sql,[user_phone,user_pwd], (err, result) => {
        if (err) throw err;
        //console.log(result);
        if(result.length>0){
            req.session.user_id=result[0].user_id;
            res.send({ code: 1, msg: "登录成功", data: result });
            
        }else{
            res.send({code:-1,msg:"登录失败"});
        }
    });
});
//注册接口
router.get("/reg",(req,res)=>{
    var user_phone=req.query.phone;
    var user_pwd=req.query.upwd;
    var sql="INSERT INTO ms_user VALUE (null,null,?,null,?,null,null,null,null)";
    pool.query(sql,[user_phone,user_pwd],(err,result)=>{
        //if(err){throw err;}
        if(result.affectedRows>0){
            res.send({code:1,data:"注册成功"});
        }
    })
})
//查找是否已存在该用户名
router.get('/selName',(req,res)=>{
    var user_name=req.query.user_name;
    var sql="SELECT * FROM ms_user WHERE user_name=?";
    pool.query(sql,[user_name],(err,result)=>{
        if(err){throw err;}
        if(result.length>0){
            res.send({code:-1,data:"该用户名已存在"});
        }else{
            res.send({code:1,data:"该用户名可以使用"});
        }
    })
})


//修改信息借口
router.get("/user_update", (req, res) => {
  var name = req.query.name;
  var email = req.query.email;
  var phone = req.query.phone;
  var sex = req.query.sex;
  var sql =
    "UPDATE ms_user SET user_name=?,user_email=?,user_phone=?,user_gender=? WHERE user_id=?";
  pool.query(sql, [name, email, phone, sex, 3], (err, result) => {
    if (err) throw err;
    if (result.affectedRows > 1) {
      res.send({ code: 1, msg: "保存成功", data: result });
    }
  });
});
module.exports = router;