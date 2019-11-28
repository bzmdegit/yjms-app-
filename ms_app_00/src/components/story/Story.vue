<template>
  <div class="story">
    <div class="title">
      <h4>故事</h4>
      <van-dropdown-menu active-color="#8DB78B" class="menu">
        <van-dropdown-item title="默认" />
        <van-dropdown-item v-model="value2" :options="option2" />
      </van-dropdown-menu>
    </div>
    <div class="content">
      <div class="story-content" @click="detailsPage()">
        <img src="../../../public/imgs/story/story-1.jpg" alt />
        <div class="info">
          <span>娜驿宿:那年那海那天,你我在此相见 (衡阳)</span>
          <p>夏末狂欢，不如秋风斜阳，秋风遮阳不如小雪相伴，小雪相伴不如带上心爱的她来衡阳做一场美梦吧！登山驻足，看看风景，玩累了，择一处民宿嗨一场暖雪残阳，而这座</p>
        </div>
      </div>

      <div class="story-content">
        <img src="../../../public/imgs/story/story-2.jpg" alt />
        <div class="info">
          <span>棠湖春天: 我能想到最浪漫的事,就是和你在这里慢慢变老 (成都)</span>
          <p>你想要去一座城市感受它的温情，去听这个城市最有韵味的故事，体验当地人的生活，除了白天去大街小巷走走逛逛，还应该在客栈听听故事。成都的轻奢牌民宿，就是我</p>
        </div>
      </div>
      <div class="story-content">
        <img src="../../../public/imgs/story/story-3.jpg" alt />
        <div class="info">
          <span>原乡里：听说你悄悄为我准备了惊喜（延庆）</span>
          <p>一群人的文化，铸就一座城的灵魂，吸引无数人的追寻。一个人的梦想,点燃一群人的情怀,构筑一座民宿的灵魂，牵引若干人的向往。三司村东的彩绘牌楼，一段一百多</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      // value1: 0,
      value2: "a",
      // option1: [
      //   { text: "默认", value: 0 },
      // ],
      option2: [
        { text: "综合排序", value: "a" },
        { text: "浏览 多-少", value: "b" },
        { text: "浏览 少-多", value: "c" }
      ]
    };
  },
  methods: {
    detailsPage() {
      this.$router.push("/StoryDetails");
    }
  }
};
</script>
<style scoped>
.story {
  text-align: center;
  margin-bottom: 50px;
}
.title {
  position: fixed;
  z-index: 999;
  background-color: #fff;
  width: 100%;
  margin-bottom: 20px;
}
.content {
  padding-top: 80px;
}
.story h4 {
  color: #050505;
  padding-top: 10px;
  padding-bottom: 14px;
  font-size: 16px;
}
.story img {
  width: 100%;
  height: 315px;
}
.van-dropdown-menu[data-v-5abc284a] {
  background-color: #fff;
  height: 40px;
}
.info {
  text-align: left;
  line-height: 20px;
  letter-spacing: 2.5px;
  padding: 10px 10px 15px 15px;
}
.info span {
  color: #575757;
}
.info p {
  margin-top: 10px;
  color: #54543b;
  text-indent: 2rem;
}
hr {
  margin-top: -3px;
  margin-bottom: 10px;
  border-bottom: 1px solid #ccc;
}
.van-dropdown-menu {
  background-color: #f3f3f3;
  height: 40px;
}
</style>