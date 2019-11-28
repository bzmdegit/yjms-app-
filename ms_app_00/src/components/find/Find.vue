<template>
  <div class="find">
    <div class="title">
      <h4>郑州</h4>
      <div class="search">
        <van-search placeholder="北京" shape="round" />
      </div>
      <div class="nav">
        <van-dropdown-menu active-color="#8DB78B">
          <van-dropdown-item v-model="value1" :options="option1" />
          <van-dropdown-item v-model="value2" :options="option2" />
          <van-dropdown-item v-model="value3" :options="option3" />
          <van-dropdown-item v-model="value4" :options="option4" />
        </van-dropdown-menu>
      </div>
    </div>

    <div class="content" @click="JumpDetails()">
      <div class="room-image">
        <img src="../../../public/imgs/find/find-1.jpg" alt />
        <b class="price">
          <p>
            <font>¥</font>158
          </p>
        </b>
        <div class="heart"></div>
      </div>
      <a title="【xbed】赫本3D影视大床房">
        <span class="btn-img">
          <img src="../../../public/imgs/find/avatar-1.png" />
        </span>
      </a>
      <div class="room-detail">
        <p>【xbed】赫本3D影视大床房</p>
        <ul>
          <li>3条评论</li>
          <li>|1居|</li>
          <li>可住2人</li>
        </ul>
        <div class="room_intro_p">
          <span class="biaoqian_style" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
          <span class="biaoqian_style" style="background:#f4f4f4;">实拍</span>
        </div>
        <input type="hidden" value="0" />
      </div>

      <div class="room-image">
        <img src="../../../public/imgs/find/find-2.jpg" alt />
        <b class="price">
          <p>
            <font>¥</font>209
          </p>
        </b>
        <div class="heart"></div>
      </div>
      <a title="F先生的私人巨幕家庭影院">
        <span class="btn-img">
          <img src="../../../public/imgs/find/avatar-1.png" />
        </span>
      </a>
      <div class="room-detail">
        <p>F先生的私人巨幕家庭影院</p>
        <ul>
          <li>3条评论</li>
          <li>|1居|</li>
          <li>可住2人</li>
        </ul>
        <div class="room_intro_p">
          <span class="biaoqian_style" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
          <span class="biaoqian_style" style="background:#f4f4f4;">实拍</span>
        </div>
        <input type="hidden" value="0" />
      </div>

      <div class="room-image">
        <img src="../../../public/imgs/find/find-3.jpg" alt />
        <b class="price">
          <p>
            <font>¥</font>258
          </p>
        </b>
        <div class="heart"></div>
      </div>
      <a title="F先生的私人巨幕家庭影院">
        <span class="btn-img">
          <img src="../../../public/imgs/find/avatar-1.png" />
        </span>
      </a>
      <div class="room-detail">
        <p>浴缸巨幕投影 大卫城可做饭</p>
        <ul>
          <li>3条评论</li>
          <li>|1居|</li>
          <li>可住2人</li>
        </ul>
        <div class="room_intro_p">
          <span class="biaoqian_style" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
          <span class="biaoqian_style" style="background:#f4f4f4;">实拍</span>
        </div>
        <input type="hidden" value="0" />
      </div>

      <div class="room-image">
        <img src="../../../public/imgs/find/find-4.jpg" alt />
        <b class="price">
          <p>
            <font>¥</font>209
          </p>
        </b>
        <div class="heart"></div>
      </div>
      <a title="百盛广场地铁口火车站日式榻榻米特色一室">
        <span class="btn-img">
          <img src="../../../public/imgs/find/avatar-1.png" />
        </span>
      </a>
      <div class="room-detail">
        <p>百盛广场日式榻榻米特色一室</p>
        <ul>
          <li>3条评论</li>
          <li>|1居|</li>
          <li>可住2人</li>
        </ul>
        <div class="room_intro_p">
          <span class="biaoqian_style" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
          <span class="biaoqian_style" style="background:#f4f4f4;">实拍</span>
        </div>
        <input type="hidden" value="0" />
      </div>

      <div class="room-image">
        <img src="../../../public/imgs/find/find-5.jpg" alt />
        <b class="price">
          <p>
            <font>¥</font>188
          </p>
        </b>
        <div class="heart"></div>
      </div>
      <a title="百盛广场地铁口火车站日式榻榻米特色一室">
        <span class="btn-img">
          <img src="../../../public/imgs/find/avatar-1.png" />
        </span>
      </a>
      <div class="room-detail">
        <p>百盛广场日式榻榻米特色一室</p>
        <ul>
          <li>3条评论</li>
          <li>|1居|</li>
          <li>可住2人</li>
        </ul>
        <div class="room_intro_p">
          <span class="biaoqian_style" style="background: rgba(255,205,76,0.25);color: #FA9A00;">速订</span>
          <span class="biaoqian_style" style="background:#f4f4f4;">实拍</span>
        </div>
        <input type="hidden" value="0" />
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value1: 0,
      value2: "a",
      value3: "a",
      value4: "a",
      option1: [
        { text: "11.23-11.24", value: 0 }
        // { text: "新款商品", value: 1 },
        // { text: "活动商品", value: 2 }
      ],
      option2: [
        { text: "筛选", value: "a" },
        { text: "好评排序", value: "b" },
        { text: "销量排序", value: "c" }
      ],
      option3: [
        { text: "位置", value: "a" },
        { text: "好评排序", value: "b" },
        { text: "销量排序", value: "c" }
      ],
      option4: [
        { text: "推荐排序", value: "a" },
        { text: "好评排序", value: "b" },
        { text: "销量排序", value: "c" }
      ]
    };
  },
  methods: {
    JumpDetails(){
      this.$router.push("/HomeDetails");
    }
  }
};
</script>
<style scoped>
.find {
  text-align: center;
}
.find h4 {
  color: #050505;
  padding-top: 10px;
  padding-bottom: 10px;
  font-size: 16px;
}
.title {
  position: fixed;
  z-index: 999;
  background-color: #fff;
  width: 100%;
  margin-bottom: 20px;
}
.van-dropdown-menu__item {
  font-size: 12px;
}
.van-icon-search:before {
  color: #22a97b;
  padding-left: 5px;
}
.content {
  padding-top: 140px;
}
.room-image {
  position: relative;
  width: 100%;
}
.room-image img {
  width: 93%;
  height: 210px;
  border-radius: 6px;
  vertical-align: middle;
}
.room-image .price {
  position: absolute;
  bottom: 0;
  left: 17px;
  font-size: 22px;
  color: #fff;
}
.room-image .heart {
  position: absolute;
  top: 14px;
  right: 25px;
  z-index: 0;
  width: 33px;
  height: 30px;
  cursor: pointer;
  background: url("../../../public/imgs/find/find-icon1.png") no-repeat;
}
.btn-img img {
  width: 46px;
  height: 46px;
  /* display: inline; */
  float: right;
  top: -19px;
  right: 36px;
  position: relative;
}
b {
  font-weight: normal;
}
.price p {
  height: 36px;
  line-height: 36px;
  padding: 0 10px;
  background: rgba(50, 44, 39, 0.9);
  float: left;
  margin-right: 1px;
  border-bottom-left-radius: 6px;
  border-top-right-radius: 6px;
}
.room-detail {
  position: relative;
  padding-top: 16px;
  left: -60px;
  width: 100%;
}
.room-detail p {
  width: 85%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 14px;
  color: #484848;
  font-weight: bold;
}
.room-detail ul {
  margin-top: 6px;
  margin-left: -65px;
  width: 100%;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.room-detail ul li {
  line-height: 22px;
  padding-left: 10px;
  color: #777776;
  display: inline-block;
}
.room-detail div.room_intro_p {
  width: 100%;
  margin-left: -88px;
  font-weight: normal;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 16px;
  color: #484848;
  font-size: 0px;
}

.biaoqian_style {
  border-radius: 2px;
  font-size: 12px;
  color: #777776;
  display: inline-block;
  vertical-align: bottom;
  padding: 0 6px;
  height: 18px;
  line-height: 18px;
  margin-right: 4px;
  margin-bottom: 10px;
  background: rgba(255, 205, 76, 0.25);
  color: #fa9a00;
}

.biaoqian_style {
  border-radius: 2px;
  font-size: 12px;
  color: #777776;
  display: inline-block;
  vertical-align: bottom;
  padding: 0 6px;
  height: 18px;
  line-height: 18px;
  margin-right: 4px;
  background: #f4f4f4;
}
</style>