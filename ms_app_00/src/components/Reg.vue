<template>
  <!-- 头部标题 -->
  <div>
    <div class="head">
      <div class="head1">
        <img @click="back()" src="../assets/icon-left.png" />
      </div>
      <span class="head2">注册</span>
    </div>
    <div class="biao">
      <div class="b1">
        <img src="../assets/icon-phone.png" />
        <mt-field style="width:94%" v-model="phone" placeholder="手机号"></mt-field>
      </div>
      <!-- <mt-field style="width:94%" placeholder="请输入验证码">
      </mt-field>-->
      <div class="showYZM_div">
        <img src="../assets/icon-yz.png" />
        <div class="yzm_div">
          <!-- <span>验证码：</span> -->
          <mt-field type="text" v-model="check_yzm" @blur="checkYZM" @keyup.enter="$event.target.blur"  placeholder="请输入验证码"></mt-field>
        </div>
        <div class="yzm_picture_div">
          <span>{{yzm_code}}</span>
          <!-- <span v-model="yzm_code">{{yzm_code}}</span> -->
        </div>
        <div class="yzm_text_div">
          <a href="javascript:void(0);" @click="changeYZM">获取验证码</a>
        </div>
      </div>
      <div class="b3">
        <img src="../assets/icon-sock.png" />
        <mt-field v-model="upwd" style="width:94%" type="password" placeholder="请输入密码(至少6位)" >
          <img id="upwd" src="../assets/icon-noshow.png" />
        </mt-field>
      </div>
      <mt-button style="background:darkseagreen" class="biaoz" size="large"  @click="reg()">注册</mt-button>
      <p class="biaox">
        <input type="checkbox" />
        <span> 阅读并同意  <a href="JavaScript:;">《用户协议》</a>
          <a href="JavaScript:;">《预定服务条款》</a>
        </span>
      </p>
      <p class="biaoy">
        已有账号
        <a href="JavaScript:;" @click="JumpLogin()">直接登录</a>
      </p>
      <div class="footer">
        <p>注册/登录即表示同意</p>
        <span>《隐私政策》</span>
        <span>《服务协议》</span>
        <span>《免责声明》</span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname:"",
      phone: "",
      upwd: "",
      uage: "",
      yzm_code: "",
      check_yzm: "",
      check_yzm_status: false,
      yzm_code_length: 4,
      o: 0,
      t1: "../assets/icon-noshow.png",
      t2: "../assets/icon-show.png"
    };
  },
  methods: {
    changeYZM: function() {
      let yzm_code = ""; //点击更换时-初始验证码
      let yzm_code_length = this.yzm_code_length; //验证码长度获取
      let codeChars = new Array( 0, 1, 2, 3,  4, 5, 6, 7, 8,  9, "a",  "b", "c",  "d", "e",  "f","g", "h",  "i",  "j","k","l","m","n", "o", "p", "q", "r","s", "t", "u","v", "w","x","y","z", "A", "B","C","D", "E", "F", "G", "H","I", "J", "K", "L","M","N", "O", "P", "Q","R", "S", "T", "U", "V","W", "X","Y", "Z"
      ); //候选字符
      //通过循环获取yzm_code_length位codeChars中的字符下标，并通过下标获取指定字符，最后拼接
      for (let i = 0; i < yzm_code_length; i++) {
        let charNum = Math.floor(Math.random() * 62); //获取随机验证码下标
        yzm_code += codeChars[charNum]; //根据下标获取指定字符并拼接
      }
      console.log("修改后验证码---" + yzm_code);
      return (this.yzm_code = yzm_code);
    },
    checkYZM: function() {
      if (this.check_yzm == "") {
        this.ErrorMessage = "验证码不能为空";
        this.showErrorMssage = true;
        return;
      } else if (this.check_yzm.toUpperCase() != this.yzm_code.toUpperCase()) {
        console.log("待校验验证码---" + this.check_yzm.toUpperCase());
        console.log("正确验证码---" + this.yzm_code.toUpperCase());
        this.ErrorMessage = "验证码输入有误";
        this.showErrorMssage = true;
        return;
      } else {
        this.ErrorMessage = "";
        this.showErrorMssage = false;
        this.check_yzm_status = true;
      }
    },
    back() {
      if (window.history.length <= 1) {
        this.$router.push({ path: "/Index" });
        return false;
      } else {
        this.$router.go(-1);
      }
    },
    JumpLogin() {
      this.$router.push("/Login");
    },
    reg() {
      var p = this.phone;
      var u = this.upwd; 
      var teg = /^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/
      var reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/
      if (!teg.test(p)) {
        this.$messagebox("消息", "手机号格式不正确");
        return;
      }
      //4:验证密码如果不匹配
      if (!reg.test(u)) {
        this.$messagebox("消息", "密码格式不正确");
        return;
      }
      //5:发送axios请求
      var url = "/use/reg";
      var obj = { phone: p, upwd: u };
      this.axios.get(url, { params: obj }).then(res => {
        console.log(res.data.code);
        if (res.data.code == 1) {
          this.$toast("注册成功")
          this.$router.push("/Login");
        } else {
          this.$toast("注册失败");
        }
      });
    }
  }
};
</script>
<style>
.head {
  background: #fff;
  display: flex;
  z-index: 999;
  margin-top: 20px;
  margin-left: 25px;
  margin-right: 25px;
  justify-content: space-between;
}
.head1 img {
  width: 20px;
  height: 20px;
}
.head2 {
  font-size: 20px;
  margin: 0 auto;
  margin-bottom: 150px;
}
.b1,
.showYZM_div,
.b3 {
  display: flex;
  align-items: center;
  border: 1px solid #ddd;
  border-radius: 5px;
  box-sizing: border-box;
  padding-left: 15px;
  margin-bottom: 20px;
}
.biao img {
  width: 25px;
  height: 25px;
}
.biao {
  text-align: center;
  margin-left: 25px;
  margin-right: 25px;
  display: flex;
  justify-content: space-around;
  flex-direction: column;
}
.biaoz {
  margin-bottom: 20px;
  background: #8bbd6f;
}
.biaox {
  text-align: center;
  font-size: 15px;
  margin-bottom: 45px;
  color: darkgrey;
}
.biaox a {
  text-decoration: none;
  color: #8bbd6f;
}
.biaoy {
  margin-bottom: 120px;
  color: darkgrey;
}
.biaoy a {
  text-decoration: none;
  color: #8bbd6f;
}
.biaozd {
  color: darkgray;
}
.a3 a {
  text-decoration: none;
  color: black;
  margin-top: 40px;
}
.footer p {
  color: #aaa;
  margin-bottom: 10px;
}
/* 验证码 */
.yzm_div{
  border:none;
}
.yzm_text_div{
  width: 90px;
  margin-right: 5px;
}
.yzm_text_div a{
  color:#368E05;
  margin-left: 5px;
}
.yzm_picture_div{
  width: 76px;
  height: 16px;
  color: #368E05;
  background-color: #F4F4F4;
  letter-spacing: 5px;
  padding: 7px 10px 10px 10px;
}
</style>