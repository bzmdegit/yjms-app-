<template>
  <div>
    <div class="header">
      <img @click="back()" width="20px" height="20px" src="../../assets/icon-left.png" alt />
      <span>房源详情</span>
    </div>
    <!-- 轮播 -->
    <div class="swipe">
      <van-swipe @change="onChange">
        <van-swipe-item>
          <img src="../../assets/home_img1.jpg" />
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/home_img2.jpg" />
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/home_img3.jpg" />
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/home_img4.jpg" />
        </van-swipe-item>
        <van-swipe-item>
          <img src="../../assets/home_img5.jpg" />
        </van-swipe-item>
        <div class="custom-indicator" slot="indicator">{{ current + 1 }}/5</div>
      </van-swipe>
      <div class="price">
        <font>¥</font>388
      </div>
    </div>
    <!-- 房源信息 -->
    <div class="cont1">
      <span>实拍</span>
      <span>地铁</span>
      <span>长租优惠</span>
      <p>广安门牛街宣武医院北京西站精品雅居套房</p>
    </div>
    <div class="space">
      <div class="spacel">
        <img src="../../assets/men.png" alt />
        <div class="fl">
          <span>2室1厅1厨1卫</span>
          <p>公寓68平米</p>
        </div>
      </div>
      <div class="spacer">
        <img src="../../assets/chuang.png" alt />
        <div class="fl">
          <span>宜住4人 2床</span>
          <p>大床(2x1.8米)1张</p>
        </div>
      </div>
    </div>
    <hr />
    <div class="anxin">
      <img src="../../assets/axrz.png" alt />
      <span class="anxin1">蚂蚁安心入住</span>
      <span class="anxin2">·100%真实房源·到店无房额外补偿</span>
    </div>
    <hr />
    <!-- 房源介绍 -->
    <div class="press">
      <span class="press-1">房源介绍</span>
      <div class="press-2">
        <img class="press-2-1" src="../../assets/fangdong.jpg" alt="房东" />
        <div class="press-2-2">
          <span>北京-浪漫满屋</span>
          <p>已实名认证</p>
        </div>
        <van-button class="press-2-3" icon="phone-o">联系房东</van-button>
      </div>
      <p
        class="press-3"
      >你好，我在北京，欢迎你来，这里一切准备就绪，就是为了更好的遇见你。小姐姐是一个常年旅行，热爱骑行，登山，茶艺的姑凉，如果你也有同样的爱好，欢迎你来与我聊聊，认识一座城市，从交一个当地的朋友开行，登山，茶艺的姑凉，如果你也有同样的爱好，欢迎你来与我聊聊，认识一座城市，从交一个当地的朋友开始，这里一定会给你一个不一样的入住体验。</p>
    </div>
    <hr />
    <span class="weizhi">房源位置</span>
    <div class="map">
      <div class="baidumap" id="allmap"></div>
    </div>
    <hr />
    <span class="press-4">品质保障 安心入住</span>
    <div class="trait">
      <ul class="trait_item">
        <li>
          <img src="../../assets/fangchan.png" alt />
        </li>
        <li>
          <span>真实房源</span>
        </li>
        <li>
          <p>上门实拍</p>
        </li>
        <li>
          <p>资质备案</p>
        </li>
      </ul>
      <ul class="trait_item">
        <li>
          <img src="../../assets/pei.png" alt />
        </li>
        <li>
          <span>真实房源</span>
        </li>
        <li>
          <p>上门实拍</p>
        </li>
        <li>
          <p>资质备案</p>
        </li>
      </ul>
      <ul class="trait_item">
        <li>
          <img src="../../assets/kefu.png" alt />
        </li>
        <li>
          <span>真实房源</span>
        </li>
        <li>
          <p>上门实拍</p>
        </li>
        <li>
          <p>资质备案</p>
        </li>
      </ul>
    </div>
    <hr />
    <van-goods-action>
      <van-button class="bt-button" icon="phone-o">联系房东</van-button>
      <van-button class="bt-button" icon="refund-o" type="primary">￥388共1晚</van-button>
      <van-button class="bt-button" icon="bag-o" type="primary">立即预定</van-button>
    </van-goods-action>
  </div>
</template>
<script>
export default {
  data() {
    return {
      current: 0
    };
  },
  name: "pm-distribution",
  components: {},
  mounted() {
    this.baiduMap();
  },
  methods: {
    back() {
      if (window.history.length <= 1) {
        this.$router.push({ path: "/Index" });
        return false;
      } else {
        this.$router.go(-1);
      }
    },
    onChange(index) {
      this.current = index;
    },
    onClickIcon() {
      Toast("点击图标");
    },
    onClickButton() {
      Toast("点击按钮");
    },
    baiduMap() {
      var map = new BMap.Map("allmap"); // 创建地图实例

      var point = new BMap.Point(116.331398, 39.897445); // 创建点坐标
      map.centerAndZoom(point, 15); // 初始化地图，设置中心点坐标和地图级别
      map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放

      map.addControl(new BMap.NavigationControl());
      map.addControl(new BMap.ScaleControl());
      map.addControl(new BMap.OverviewMapControl());
      map.addControl(new BMap.MapTypeControl());
      //map.setMapStyle({ style: 'midnight' }) //地图风格

      var marker = new window.BMap.Marker(point); // 创建标注
      map.addOverlay(marker); // 将标注添加到地图中

      //提示信息
      var infoWindow = new BMap.InfoWindow("这是提示信息");
      // 鼠标移上标注点要发生的事
      marker.addEventListener("mouseover", function() {
        this.openInfoWindow(infoWindow);
      });

      // 鼠标移开标注点要发生的事
      marker.addEventListener("mouseout", function() {
        //this.closeInfoWindow(infoWindow)
      });
    }
  }
};
</script>
<style scoped>
.header {
  height: 30px;
  margin-top: 20px;
}
.header span {
  margin-left: 40%;
}
.swipe {
  height: 300px;
  position: relative;
}
.swipe img {
  height: 300px;
  width: 100%;
}
.custom-indicator {
  width: 25px;
  height: 15px;
  background: rgba(255, 255, 255, 0.3);
  position: absolute;
  bottom: 0;
  right: 0;
  text-align: center;
}
.price {
  width: 60px;
  height: 30px;
  font-size: 25px;
  color: aliceblue;
  background: rgba(0, 0, 0, 0.3);
  position: absolute;
  bottom: 0;
  left: 0;
  border-radius: 3px;
  line-height: 1.2;
}
.cont1 {
  margin-top: 20px;
  padding: 15px 15px;
}
.cont1 span {
  border-radius: 2px;
  font-size: 12px;
  color: #777776;
  display: inline-block;
  vertical-align: bottom;
  padding: 0 6px;
  height: 18px;
  line-height: 18px;
  margin-right: 5px;
  background: #eee;
}
.cont1 p {
  font-size: 25px;
  margin-top: 20px;
}
.space {
  display: flex;
  justify-content: space-around;
  text-align: center;
  margin-top: 20px;
  padding: 15px 0;
}
.spacel,
.spacer {
  width: 150px;
}
.space img {
  width: 25px;
  height: 25px;
  float: left;
}
hr {
  margin-top: 15px;
  margin-bottom: 15px;
}
.anxin {
  padding: 0 25px;
}
.anxin img {
  width: 18px;
  height: 18px;
  margin-right: 5px;
}
.anxin1 {
  color: #ff8000;
  margin-right: 5px;
}
.anxin2 {
  color: #aaa;
  margin-right: 5px;
}
.bt-button {
  border-radius: 0;
  width: 33.3%;
  height: 60px;
}
.trait {
  height: 180px;
  display: flex;
  justify-content: space-around;
  text-align: center;
  padding: 30px 0;
  box-sizing: border-box;
  background: #f4f4f4;
  margin: 0 auto;
  margin-top: -10px;
  padding-bottom: 40px;
}
.trait_item {
  display: flex;
  justify-content: space-around;
  flex-direction: column;
  text-align: center;
}
.trait_item span {
  font-size: 15px;
}
.trait_item img {
  width: 25px;
  height: 25px;
  vertical-align: center;
}
.press {
  display: flex;
  justify-content: space-around;
  flex-direction: column;
  padding: 0 15px;
}
.press-1 {
  margin-bottom: 20px;
  font-size: 20px;
}
.press-3 {
  margin: 15px 0;
  line-height: 1.8;
  text-indent: 2rem;
  font-size: 16px;
}
.press-2 {
  display: flex;
  justify-content: space-around;
}
.press-2-1 {
  margin-left: -25px;
}
.press-2-2 {
  margin-left: -75px;
}
.press-2-2 p {
  margin-top: 10px;
}
.press-2 img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
}
.press-4 {
  position: relative;
  top: 13px;
  margin-left: 160px;
}
.map {
  width: 100%;
  height: 300px;
  margin-top: 20px;
  margin-bottom: 20px;
}
.baidumap {
  width: 100%px;
  height: 300px;
  border: 1px solid #ddd;
  margin: auto;
}
.weizhi {
  padding-left: 15px;
  padding-bottom: 20px;
  font-size: 30px;
}

/* 去除百度地图版权那行字 和 百度logo */
.baidumap > .BMap_cpyCtrl {
  display: none !important;
}
.baidumap > .anchorBL {
  display: none !important;
}
</style>