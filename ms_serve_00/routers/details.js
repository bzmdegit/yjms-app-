const express=require('express');
const pool=require('../pool.js');
var router=express.Router();
//房屋详情接口
router.get("",(req,res)=>{
  var house_id=req.query.house_id;
  var sql="select * from ms_house,ms_house_img where house_id=houseimg_house_id and house_id=?";
  var sql1="select * from ms_house right outer join ms_house_img on house_id=houseimg_house_id where house_id=?"
  pool.query(sql,[house_id],(err,result)=>{
    if(err) throw err
    if(result.length>0){
      res.send({code:1,data:result})
    }else{
      res.send({code:-1,msg:"查询失败"})
    }
  })
})
module.exports=router;