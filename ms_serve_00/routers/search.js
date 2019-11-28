const express=require('express');
const moment=require("moment");
const pool=require('../pool.js');
var router=express.Router();
//房屋查询接口
router.get("/",(req,res)=>{
  var condition=req.query;
  //console.log(condition);
  let {
    House_City_id,
    Time_start,
    Time_end,
    people,
    children,
    baby,
    price,
    latitude,
    longitude,
  } = condition;
  if(!Time_start){
    let startDate=new Date('2000-01-01').toLocaleDateString();
    Time_start=startDate
  }
  if(!Time_end){
    let endDate=new Date('2000-12-31').toLocaleDateString();
    Time_end=endDate;
  }
  //console.log('经度'+longitude);
  //console.log("纬度"+latitude);
  var longitudeS=parseFloat(longitude)+0.2;
  var longitudeE=parseFloat(longitude)-0.2;
  var latitudeS=parseFloat(latitude)+0.2;
  var latitudeE=parseFloat(latitude)-0.2;
  //console.log(longitudeS,longitudeE,latitudeS,latitudeE);
  var sql=`SELECT * FROM ms_House WHERE House_City_id=? AND House_price >=? and House_price <=? AND House_longitude <= ? and House_longitude >= ? AND House_latitude <= ? and House_latitude >= ? AND House_id NOT IN (SELECT Time_House_id FROM ms_House_Time WHERE Time_start >= ? AND Time_end <= ?)`;
  pool.query(sql,[House_City_id,price[0],price[1],longitudeS,longitudeE,latitudeS,latitudeE,Time_start,Time_end],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports=router;
