<template>
  <div class="index">
    <!-- 首页轮播 -->
    <mt-swipe :show-indicators="false" class="mt-swipe">
      <mt-swipe-item class="swiper_item">
        <img src="../../assets/carousel1.jpg" />
        <div class="title">
          <p>宜居民宿</p>
          <p>出门在外的家。</p>
        </div>
      </mt-swipe-item>
      <mt-swipe-item class="swiper_item">
        <img title="云栖民宿，宜居宜游" src="../../assets/carousel2.jpg" />
        <div class="title">
          <p>宜居民宿</p>
          <p>旅途中，心灵的驿站。</p>
        </div>
      </mt-swipe-item>
      <mt-swipe-item class="swiper_item">
        <img src="../../assets/carousel3.jpg" />
        <div class="title">
          <p>宜居民宿</p>
          <p>我在山水画卷里等你。</p>
        </div>
      </mt-swipe-item>
      <mt-swipe-item class="swiper_item">
        <img src="../../assets/carousel4.jpg" />
        <div class="title">
          <p>宜居民宿</p>
          <p>品味慢生活，畅享中国梦。</p>
        </div>
      </mt-swipe-item>
      <mt-swipe-item class="swiper_item">
        <img src="../../assets/carousel5.jpg" />
        <div class="title">
          <p>宜居民宿</p>
          <p>放飞城市灵魂。</p>
        </div>
      </mt-swipe-item>
    </mt-swipe>
    <!-- cont1 select-->
    <div class="select">
      <div class="select_con">
        <div class="select_con_1">
          <span class="left">
            <img src="../../assets/dingwei.png" alt /> 北京
          </span>
          <span class="right">
            我的位置
            <img src="../../assets/weizhi.png" alt />
          </span>
        </div>
        <hr />
        <div class="select_con_2">
          <span>{{date.slice(2,12)}}</span>
          <span @click="selectDate">选择入住时间</span>
          <calendar
            class="rl"
            :minDate="minDate"
            :show.sync="show"
            :defaultDate="defaultDate"
            mode="during"
            @change="onChange"
          />
          <span>{{date.slice(15,25)}}</span>
        </div>
        <hr />
        <mt-button class="select_button">搜索</mt-button>
      </div>
    </div>
    <!-- cont2 -->
    <div class="con2">
      <!-- 品质保障 -->
      <div class="trait">
        <ul class="trait_item">
          <li>
            <img src="../../assets/zsfy.png" alt />
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
            <img src="../../assets/axrz.png" alt />
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
            <img src="../../assets/zmxy.png" alt />
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
            <img src="../../assets/zykf.png" alt />
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
      <!-- 房源 -->
      <div class="home_list" @click="JumpDetails()">
        <div class="home_list_item">
          <img src="../../assets/home1.jpg" alt />
          <span>广安门牛街宣武医院背景西站精品雅居套房</span>
          <ul>
            <li>5.0分</li>
            <li>|西城|</li>
            <li>可住1人</li>
          </ul>
          <div class="home_price">￥388</div>
        </div>
        <div class="home_list_item">
          <img src="../../assets/home2.jpg" alt />
          <span>广安门牛街宣武医院背景西站精品雅居套房</span>
          <ul>
            <li>5.0分</li>
            <li>|西城|</li>
            <li>可住1人</li>
          </ul>
          <div class="home_price">￥388</div>
        </div>
        <div class="home_list_item">
          <img src="../../assets/home1.jpg" alt />
          <span>广安门牛街宣武医院背景西站精品雅居套房</span>
          <ul>
            <li>5.0分</li>
            <li>|西城|</li>
            <li>可住1人</li>
          </ul>
          <div class="home_price">￥388</div>
        </div>
        <div class="home_list_item">
          <img src="../../assets/home2.jpg" alt />
          <span>广安门牛街宣武医院背景西站精品雅居套房</span>
          <ul>
            <li>5.0分</li>
            <li>|西城|</li>
            <li>可住1人</li>
          </ul>
          <div class="home_price">￥388</div>
        </div>
      </div>
      <mt-button class="con2_button" @click="loadMore">加载更多</mt-button>
    </div>
  </div>
</template>
<script>
import Calendar from "mobile-calendar-simple";
export default {
  data() {
    return {
      minDate: new Date(), //设置过期时间为当天
      show: false,
      date: '["2019-11-30","2019-12-01"]',
      defaultDate: ["2019-11-30","2019-12-01"]
    };
  },
  methods: {
    selectDate() {
      this.show = true;
      this.date = "";
    },
    onChange(date) {
      this.date = JSON.stringify(date.map(item => item.format("YYYY-MM-DD")));
    },
    JumpDetails() {
      this.$router.push("/HomeDetails");
    },
    loadMore() {
      //获取服务器商品列表的函数
      //1.创建变量url保存请求路径
      var url = "product";
      //2.自增页码
      this.pno++;
      //3.创建参数对象
      var obj = { pno: this.pno };
      //4.发ajax请求
      this.axios
        .get(url, { params: obj })
        .then(res => {
          //成功的回调  console.log(res)
          // this.list=res.data.rows;//保存服务器返回的数据
          //将赋值改为拼接
          this.list = this.list.concat(res.data.rows);
        })
        .catch(err => {
          console.log(err);
        });
      //5.获取服务器返回结果并且保存list中
      //保存list中
    }
  }
};
</script>
<style scoped>
.rl {
  height: 697px;
}
.title {
  font-size: 20px;
  color: #fff;
  position: absolute;
  top: 85px;
  left: 20px;
}
/* swipe */
.mt-swipe {
  height: 186px;
  margin: 0;
  position: relative;
}
.mt-swipe img {
  width: 100%;
}
/* select */
.select {
  height: 180px;
  background: #f4f4f4;
  padding: 15px 20px;
}
.select_con {
  height: 180px;
  background: #fff;
  border-radius: 10px;
  padding: 10px 10px;
  box-sizing: border-box;
}
.select_con_1,
.select_con_2 {
  height: 50px;
  line-height: 50px;
}
.select_con_2 {
  display: flex;
  justify-content: space-between;
  text-align: center;
}
.select_con img {
  width: 25px;
  height: 25px;
  margin-top: 10px;
}
.select_button {
  height: 35px;
  width: 100%;
  background: #8bbd6f;
  border-radius: 20px;
  color: #fff;
  margin-top: 15px;
}
.con2 {
  height: 800px;
  background: #fff;
  padding: 15px 20px;
}
.trait {
  height: 180px;
  display: flex;
  justify-content: space-around;
  text-align: center;
  border-radius: 10px;
  padding: 30px 0;
  box-sizing: border-box;
  background: #f4f4f4;
  margin: 0 auto;
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
  width: 45px;
  height: 45px;
  vertical-align: center;
}
.home_list {
  width: 100%;
  box-sizing: border-box;
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
  text-align: center;
  flex-wrap: wrap;
  text-align: left;
}
.home_list_item {
  width: 49%;
  border-radius: 10px;
}
.home_list_item img {
  width: 100%;
  border-radius: 10px;
  margin-bottom: 10px;
}
.home_list_item span {
  width: 85%;
  font-size: 14px;
  color: #484848;
  font-weight: bold;
}
.home_list_item ul {
  margin-top: 6px;
  margin-left: -10px;
  width: 100%;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.home_list_item ul li {
  line-height: 22px;
  padding-left: 10px;
  color: #777776;
  display: inline-block;
}
.home_detail {
  line-height: 20px;
}
.home_spec {
  line-height: 15px;
}
.home_price {
  font-size: 16px;
  line-height: 25px;
  color: #f44;
  font-weight: bold;
}
.con2_button {
  width: 300px;
  height: 50px;
  margin: 24px 67px;
  border-radius: 50px;
}
</style>