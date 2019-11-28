<template>
  <div class="con">
    <div class="user-poster">
      <div class="poster-posi">
        <img round  src="../../assets/fangdong.png" />
        <div class="loreg">
          <a @click="JumpLogin()">登录</a>
          /<a @click="JumpReg()">注册</a>
        </div>
      </div>
    </div>
    <div class="list">
      <div class="user-list">
        <van-cell class="cellt" icon="records" title="我的订单" is-link />
        <van-cell class="cellb" icon="gold-coin-o" title="优惠券" is-link/>
      </div>
      <div class="user-list">
        <van-cell class="cellt" icon="notes-o" title="意见反馈" is-link />
        <van-cell class="cellb" icon="phone-o" title="联系客服" is-link />
      </div>
    </div>
  </div>
</template>

<script>
import { Row, Col, Icon, Cell, CellGroup } from "vant";
export default {
  data() {
    return{};
  },
  methods: {
    JumpReg(){
      this.$router.push("/Reg");
    },
    JumpLogin(){
      this.$router.push("/Login");
    }
  },
  components: {
    [Row.name]: Row,
    [Col.name]: Col,
    [Icon.name]: Icon,
    [Cell.name]: Cell,
    [CellGroup.name]: CellGroup
  }
};
</script>

<style lang="less">
.con {
  background: #f4f4f4;
  width: 100%;
  height: 168vw;
}
.user-poster {
  width: 100%;
  height: 53vw;
  // background: #3db381;
  background: #9dc089;
}
.poster-posi {
 padding-top: 77px;
 padding-left: 200px;
}
.poster-posi img{
  width: 50px;
  height: 50px;
}
.list {
  width: 100%;
  height: 250px;
  position: relative;
  top: -30px;
}
.user-list {
  margin: 0 30px;
  margin-bottom: 15px;
}
.cellt {
  border-top-right-radius: 10px;
  border-top-left-radius: 10px;
}
.cellb {
  border-bottom-right-radius: 10px;
  border-bottom-left-radius: 10px;
}
.loreg{
  font-size: 20px;
  color: #fff;
  margin-left: -18px;
  margin-top: 10px;
}
.loreg a{
  color: #fff;
}
</style>