<template>
  <div class="app-login">
    <div class="header">
      <img src="../assets/icon-left.png" @click="back()" style="wdith:20px;height:20px" />
      <h2 style="margin:auto; font-size:18px">登录</h2>
    </div>
    <div class="mt-1">
      <img src="../assets/icon-phone.png" style="width:25px;height:25px" />
      <mt-field placeholder="手机号" type="tel" v-model="phone"></mt-field>
    </div>
    <div class="mt-2">
      <img src="../assets/icon-sock.png" style="width:25px;height:25px" />
      <input placeholder="密码" class="mt-2-2" type="password" v-model="upwd"/>
    </div>
    <mt-button size="large" class="mt-login" @click="login()">登录</mt-button>
    <div class="mt-3">
      <a href="#" @click="JumpIndex()">先去逛逛&gt;</a>
    </div>
    <div>其他方式登录</div>
    <div class="login-icon">
      <img src="../assets/icon-weixin.png" />
      <img src="../assets/icon-zpay.png" />
      <img src="../assets/icon-weibo.png" />
    </div>
    <span class="noreg">
      未注册?
      <a href="#" @click="JumpReg">立即注册</a>
    </span>
    <div class="footer">
      <p>注册/登录即表示同意</p>
      <span>《隐私政策》</span>
      <span>《服务协议》</span>
      <span>《免责声明》</span>
    </div>
  </div>
</template>
<script>
export default {
  //1:保存两个数据
  data() {
    return {
      phone: "",
      upwd: ""
    };
  },
  //2:添加函数login 完成登录
  methods: {
    back() {
      if (window.history.length <= 1) {
        this.$router.push({ path: "/Index" });
        return false;
      } else {
        this.$router.go(-1);
      }
    },
    JumpIndex() {
      this.$router.push("/Index");
    },
    JumpReg() {
      this.$router.push("/Reg");
    },
    login() {
      //功能:完成用户登录操作
      //1:创建正则表达式 3~12
      var teg = /^1(3|4|5|7|8)\d{9}$/;
      var reg = /^[a-z0-9]{3,12}$/i;
      //2:获取用户输入 手机号/密码
      var u = this.upwd;
      var p = this.phone;
      console.log(u + "_" + p);
      //3:验证手机号如果不匹配
      if (!teg.test(p)) {
        this.$messagebox("消息", "手机格式不正确");
        return;
      }
      //4:验证密码如果不匹配
      if (!reg.test(u)) {
        this.$messagebox("消息", "密码格式不正确");
        return;
      }
      //5:发送ajax请求完成登录验证
      var url = "/use/login";
      var obj = { phone: p, upwd: u };
      this.axios.get(url, { params: obj }).then(res => {
        console.log(res.data.code);
        if (res.data.code == 1) {
          this.$router.push("/Index");
        } else {
          this.$toast("手机和密码有误");
        }
      });
    }
  }
};
</script>
<style scoped>
.app-login {
  display: flex;
  justify-content: space-around;
  flex-direction: column;
  text-align: center;
  margin: 15px 20px;
}
.mt-1 {
  display: flex;
  align-items: center;
  padding-left: 25px;
  margin-top: 150px;
  border: 1px solid #ddd;
  border-radius: 5px;
}
.mt-2 {
  display: flex;
  align-items: center;
  float: right;
  padding-left: 25px;
  margin-top: 20px;
  border: 1px solid #ddd;
  border-radius: 5px;
}
.mt-2-2{
  border: none;
  height: 50px;
  padding-left:14px; 
  font-size: 16px;
}
.mt-login {
  width: 100%;
  height: 45px;
  margin-top: 20px;
  background: #8bbd6f;
}
.mt-3 {
  margin-top: 20px;
  margin-left: 80%;
  margin-bottom: 10px;
}
.mt-3 a {
  color: #aaa;
}
.login-icon {
  display: flex;
  justify-content: space-around;
  text-align: center;
  padding: 20px 40px;
}
.login-icon img {
  width: 30px;
  height: 30px;
}
.noreg {
  margin-bottom: 100px;
}
.noreg a {
  color: #8bbd6f;
}
.header {
  display: flex;
  align-items: center;
}
.footer {
  margin-top: 25px;
}
.footer p {
  margin-bottom: 5px;
  color: #aaa;
}
</style>
