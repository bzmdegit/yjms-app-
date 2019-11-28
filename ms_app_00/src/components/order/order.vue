<template>
  <div>
    <div class="header">
      <img @click="back()" width="20px" height="20px" src="../../assets/icon-left.png" alt />
      <span>我的订单</span>
    </div>
    <van-tabs v-model="active">
      <van-tab title="全部">全部</van-tab>
      <van-tab title="待付款">待付款</van-tab>
      <van-tab title="待入住">待入住</van-tab>
      <van-tab title="已完成">已完成</van-tab>
    </van-tabs>
  </div>
</template>
<script>
export default {
  data() {
    return {
      active: 2
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
.header {
  height: 30px;
  margin-top: 20px;
}
.header span {
  margin-left: 40%;
}
</style>