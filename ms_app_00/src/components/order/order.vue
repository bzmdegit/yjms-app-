<template>
  <div>
    <div class="header">
      <img @click="back()" width="20px" height="20px" src="../../assets/icon-left.png" alt />
      <span>我的订单</span>
    </div>
    <van-tabs v-model="active">
      <van-tab title="全部">
        <div class="nopay">
          <div class="nopay-c">
            <div class="nopay-top">
              <span style="font-size:12px;color:#919191">订单号：2019113019374854</span>
              <span style="font-size:16px;color:#D38C57">待付款</span>
            </div>
            <div class="nopay-center">
              <img src="../../assets/home_img1.jpg" alt />
              <div class="cen-r">
                <span>姥姥家壹号院(姥姥家)</span>
                <p class="cen-p">入住：2019-11-30</p>
                <p>退房：2019-12-1</p>
              </div>
            </div>
            <div class="nopay-buttom">
              <span>支付金额:</span>
              <span style="color:#D38C57">￥3580</span>
              <button>去付款</button>
            </div>
          </div>
        </div>
      </van-tab>
      <van-tab title="待付款">
        <div class="nopay">
          <div class="nopay-c">
            <div class="nopay-top">
              <span style="font-size:12px;color:#919191">订单号：2019113019374854</span>
              <span style="font-size:16px;color:#D38C57">待付款</span>
            </div>
            <div class="nopay-center">
              <img src="../../assets/home_img1.jpg" alt />
              <div class="cen-r">
                <span>姥姥家壹号院(姥姥家)</span>
                <p class="cen-p">入住：2019-11-30</p>
                <p>退房：2019-12-1</p>
              </div>
            </div>
            <div class="nopay-buttom">
              <span>支付金额:</span>
              <span style="color:#D38C57">￥3580</span>
              <button>去付款</button>
            </div>
          </div>
        </div>
      </van-tab>
      <van-tab title="待入住"></van-tab>
      <van-tab title="已完成"></van-tab>
    </van-tabs>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active: 1
    };
  },
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
.nopay-buttom span {
  float: left;
}
.nopay-buttom button {
  color: #fff;
  font-size: 16px;
  text-align: center;
  float: right;
  width: 70px;
  height: 35px;
  background: #7bbe7d;
  border-radius: 5px;
  box-shadow: none;
  border: none;
  margin-top: 10px;
  line-height: 35px;
}
.nopay-buttom {
  height: 50px;
  padding: 0 15px;
  line-height: 50px;
}
.cen-r span {
  font-size: 18px;
}
.cen-r p {
  line-height: 1.8;
}
.cen-p {
  margin-top: 35px;
  font-size: 12px;
}
.cen-r {
  margin-left: 162px;
}
.nopay-center img {
  width: 150px;
  height: 90px;
  float: left;
}
.nopay-center {
  width: 100%;
  height: 95px;
  padding: 10px 15px;
  border-bottom: 1px solid #e6e6e6;
}
.nopay-top {
  height: 40px;
  border-bottom: 1px solid #e6e6e6;
  display: flex;
  justify-content: space-between;
  text-align: center;
  padding: 0 15px;
  line-height: 40px;
}
.nopay-c {
  width: 100%;
  height: 210px;
  background: #fff;
}
.nopay {
  background: #ececec;
  width: 100%;
  height: 700px;
  padding-top: 15px;
}
.header {
  height: 30px;
  margin-top: 20px;
}
.header span {
  margin-left: 40%;
}
</style>