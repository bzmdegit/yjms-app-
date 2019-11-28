const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//故事接口
router.get("/",(req,res)=>{
  var sql="SELECT * FROM ms_story";
  pool.query(sql,[],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:0});
    }else{
      res.send(result);
    }
  });
});
router.get("/search_result",(req,res)=>{
  var $city=req.query.city;
  var sql=`SELECT * from ms_story WHERE city=?`;
  pool.query(sql,[$city],(err,result)=>{
    if(err){throw err;}
    if(result.length>0){
      res.send({code:1,data:result});
    }else{
      res.send({code:-1,data:"没有查询到相关信息"});
    }
  })
})
//获取热门城市
router.get("/hot_place",(req,res)=>{
  var sql="SELECT * FROM ms_hot_place";
  pool.query(sql,[],(err,result)=>{
    if(err){throw err;}
    if(result.length>0){
      res.send({code:1,data:result});
    }else{
      res.send({code:-1,data:"没有查询到相关信息"});
    }
  })
})
module.exports=router;