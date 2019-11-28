<template>
  <div>
    <mt-tab-container class="page-tabbar-container" v-model="active">
      <mt-tab-container-item id="home">
        <home class="home"></home>
      </mt-tab-container-item>
      <mt-tab-container-item id="find">
        <find></find>
      </mt-tab-container-item>
      <mt-tab-container-item id="story">
      <story></story>
      </mt-tab-container-item>
      <mt-tab-container-item id="user">
        <user></user>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar fixed v-model="active">
      <mt-tab-item id="home" @click.native="changeState(0)">
        <tabbaricon
          :focused="current[0].select"
          :selectImage="require('../assets/icon_H_b.png')"
          :normalImage="require('../assets/icon_H_a.png')"
        ></tabbaricon>首页
      </mt-tab-item>
      <mt-tab-item id="find" @click.native="changeState(1)">
        <tabbaricon
          :focused="current[1].select"
          :selectImage="require('../assets/icon_I_b.png')"
          :normalImage="require('../assets/icon_I_a.png')"
        ></tabbaricon>发现
      </mt-tab-item>
      <mt-tab-item id="story" @click.native="changeState(2)">
        <tabbaricon
          :focused="current[2].select"
          :selectImage="require('../assets/icon_S_b.png')"
          :normalImage="require('../assets/icon_S_a.png')"
        ></tabbaricon>故事
      </mt-tab-item>
      <mt-tab-item id="user" @click.native="changeState(3)">
        <tabbaricon
          :focused="current[3].select"
          :selectImage="require('../assets/icon_U_b.png')"
          :normalImage="require('../assets/icon_U_a.png')"
        ></tabbaricon>我的
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script>
//1.引入顶部导航栏子组件
import Home from "./home/Home.vue";
import TabBarIcon from "./TabBarIcon.vue";
import User from "./user/User";
import Story from "./story/Story";
import Find from "./find/Find";
export default {
  data() {
    return {
      active: "home",
      current: [
        { select: true }, //四个按钮
        { select: false },
        { select: false },
        { select: false }
      ]
    };
  },
  methods: {
    changeState(index) {
      console.log(index);
      // 1创建便利循环每个按钮状态
      // 2如果当前下标与参数下标相同
      // 3修改当前元素状态为true其他为false
      for (var i = 0; i < this.current.length; i++) {
        if (i == index) {
          this.current[i].select = true;
        } else {
          this.current[i].select = false;
        }
      }
    }
  }, //2.注册子组件
  components: {
    home: Home,
    user: User,
    story: Story,
    find: Find,
    tabbaricon: TabBarIcon
  }
};
</script>
<style scoped>
/* titbar */
/* indexhome */
/* tabbar */
/* 最外层父元素溢出隐藏 */
.mint-tabbar > .mint-tab-item {
  color: #999;
}
/* tabbar默认文字颜色  覆盖组件样式 */
.mint-tabbar > .mint-tab-item.is-selected {
  background: transparent;
  color: #8BBD6F;
}
/* 选中后文字颜色,覆盖组件样式 */
</style>