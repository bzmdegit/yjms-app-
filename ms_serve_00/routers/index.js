const express = require("express");
const pool = require("../pool.js");
var router = express.Router();
//轮播图
router.get("/Carousel", (req, res) => {
  var sql = "SELECT Carousel_imgurl FROM ms_Carousel";
  pool.query(sql, (err, result) => {
    if (err) throw err;
    res.send({ code: 200, data: result });
  });
});
//首页主体部分  根据城市id (i) 请求房屋表数据
router.get("/cities", (req, res) => {
  var i = req.query.i;
  //console.log(i)
  var sql =
    "SELECT House_imgurl,House_name,House_price,House_tag,House_Building,House_Bed FROM ms_House WHERE House_City_id=?";
  pool.query(sql, [i], (err, result) => {
    if (err) throw err;
    res.send({ code: 200, msg: "ok", data: result });
  });
});
router.get("/cities2", (req, res) => {
  var j = req.query.j;
  // console.log(i)
  var sql =
    "SELECT House_imgurl,House_name,House_price,House_tag,House_Building,House_Bed FROM ms_House WHERE House_City_id=?";
  pool.query(sql, [j], (err, result) => {
    if (err) throw err;
    res.send({ code: 200, msg: "ok", data: result });
  });
});

router.get("/story", (req, res) => {
  var sql = "SELECT * FROM ms_story";
  pool.query(sql, [], (err, result) => {
    if (err) {
      console.log(err);
      res.send({ code: 0 });
    } else {
      res.send(result);
    }
  });
});
module.exports = router;
