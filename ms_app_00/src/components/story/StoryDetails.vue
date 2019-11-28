<template>
  <div class="storyDetails">
    <div class="title">
      <img @click="back()" width="20px" height="20px" src="../../assets/icon-left.png" alt />
      <span>故事详情</span>
    </div>
    <div class="subtitle">
      <span class="bigtitle">平潭北港石梯民宿:穿越石海，与你结缘(福州)</span>
      <div class="liltitle">
        <span>原创:宜居民宿</span>
        <span>宜居民宿APP</span>
        <span>两天前</span>
      </div>
    </div>
    <div class="detail">
      <img src="../../assets/home_img1.jpg" alt />
      <p>
        位于平潭东北隅的北港村，如今已被定位为两岸文创村，越
        来越多的两岸青年文创团队正加入进来，为这个古老的村落
        带来新的活力，沿着“美景长廊”平潭环岛路，一路行驶进入北
        港文创村，进入村中呼吸着新鲜的空气，
        感觉神清气
        爽。
      </p>
      <p>
        眼前黛青色的“人”字形石厝，拥有着海岛的独特风
        情，在雨后散发着石头与泥土的清香。红色和灰色瓦片覆
        盖的屋檐，下面几株绿植成为陪衬。石厝错落有致，与梯
        眼前黛青色的“人”字形石厝，拥有着海岛的独特风
        情，在雨后散发着石头与泥土的清香。红色和灰色瓦片覆
        盖的屋檐，下面几株绿植成为陪衬。石厝错落有致，与梯
        眼前黛青色的“人”字形石厝，拥有着海岛的独特风
        情，在雨后散发着石头与泥土的清香。红色和灰色瓦片覆
        盖的屋檐，下面几株绿植成为陪衬。石厝错落有致，与梯
        眼前黛青色的“人”字形石厝，拥有着海岛的独特风
        情，在雨后散发着石头与泥土的清香。
      </p>
      <p>
        红色和灰色瓦片覆
        盖的屋檐，下面几株绿植成为陪衬。石厝错落有致，与梯
        眼前黛青色的“人”字形石厝，拥有着海岛的独特风
        情，在雨后散发着石头与泥土的清香。红色和灰色瓦片覆
        盖的屋檐，下面几株绿植成为陪衬。
      </p>
    </div>
    <div class="footer">
      <ul class="icon">
        <li>
          <img src="../../../public/imgs/storyDetails/eye.png" alt />
          <p>(666)</p>
        </li>
        <li>
          <img src="../../../public/imgs/storyDetails/zan.png" alt />
          <p>(888)</p>
        </li>
        <li>
          <img src="../../../public/imgs/storyDetails/heart.png" alt />
          <p>(999)</p>
        </li>
        <van-button class="see">查看民宿</van-button>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    back() {
      if (window.history.length <= 1) {
        this.$router.push({ path: "/Index" });
        return false;
      } else {
        this.$router.go(-1);
      }
    }
  }
};
</script>
<style scoped>
.subtitle {
  margin-top: 30px;
  padding: 0 15px;
}
.bigtitle {
  font-size: 28px;
}
.liltitle {
  font-size: 15px;
  color: #b6b6b6;
  margin-top: 15px;
  margin-bottom: 15px;
}
.title {
  margin-top: 20px;
}
.title span {
  margin-left: 40%;
}
.liltitle span{
  margin-right: 15px;
}
.storyDetails {
  height: auto !important;
  min-height: 100%;
  height: 100%;
  position: relative;
}
.detail {
  padding-bottom: 50px;
}
.detail img {
  width: 100%;
  height: 350px;
}
.detail p {
  font-size: 15px;
  line-height: 1.8;
  text-indent:2em; 
  padding: 0 15px;
  color: #123;
}
.footer {
  position: fixed;
  height: 50px;
  bottom: 0px;
  left: 0;
  display: flex;
  justify-content: space-around;
  width: 100%;
  background: #fff;
  border-top: 1px solid #ddd;
}
.icon li {
  float: left;
  text-align: center;
}
.icon li img {
  height: 22px;
  position: relative;
  padding-left: 65px;
  bottom: -7px;
  left: -45px;
}
.icon li p {
  position: absolute;
  padding-left: 18px;
  bottom: -6px;
}
.see {
  top: 5px;
  right: 10px;
  border: 1px solid #ee7e2d;
  color: #ee7e2d;
}
/* .footer img {
  height: 22px;
  position: relative;
  left: -45px;
  padding-left: 65px;
  bottom: -7px;
} */
</style>