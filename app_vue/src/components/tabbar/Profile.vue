<template> 
   <div>
       <div class="profile" style="display:none">
            <img src="../../img/meitu/meitu-bg.png" class="p_bg1">
            <div class="p_bg2"></div>
            <div class="p_info">
                <router-link to="home" class="p_r">
                    <img src="../../img/icon/return.png" >
                </router-link>
                <div class="p_logo">
                    <img src="../../img/icon/icolor-logo2.png" >
                </div>
                <div class="p_detail">
                    <img src="../../img/icon/login2.png" >
                    <input type="text" placeholder="用户名/手机号" v-model="uname">
                    <img src="../../img/icon/close.png" >
                </div>
                <hr>
                <div class="p_detail">
                    <img src="../../img/icon/suo.png" >
                    <input type="password" placeholder="密码" v-model="upwd">
                    <img src="../../img/icon/eye-close.png" >
                </div>
                <hr>
                <div class="forget">忘记密码?</div>
                <div class="p_login">登录</div>
                <router-link to="register" class="p_register">新用户注册</router-link>
                <div class="phone">客服热线:<span class="phone">4000000000</span></div>
            </div>
       </div>
       <div class="profile">
            <img src="../../img/meitu/meitu-bg.png" class="p_bg1">
            <div class="p_bg2"></div>
            <div class="p_info">
                <router-link to="home" class="p_r">
                    <img src="../../img/icon/return.png" >
                </router-link>
                <div class="logout">退出</div>
                <div class="touxiang">
                    <img src="../../img/icon/touxiang.jpg" >
                    <div class="name">{{name}}</div>
                </div>
                <div class="p2">
                    <div class="oder1">
                        <img src="../../img/icon/oder1.png" >
                    </div>
                    <div class="oder2">
                        <img src="../../img/icon/oder2.png" >
                    </div>
                </div>
            </div>
       </div>

   </div>
  
</template>
<script>
import {Toast} from 'mint-ui';
  export default {
      data(){
          return {
              uname:"",
              upwd:"",
              name:""
          }
      },
      mounted() {
          this.login();
          this.islogin();
          this.logout();
      },
      methods:{
        login(){
            var self=this
            var login=document.querySelector(".p_login");
            login.onclick=function(){
                var url="user/signin?uname="+self.uname+"&upwd="+self.upwd
                self.$http.get(url).then((res)=>{
                    console.log(res)
                 if(res.body.ok==1){
                sessionStorage.setItem("uname",self.uname);
                //self.name=sessionStorage.getItem("uname");
                //console.log(self.name)
                Toast({
                    message: '登陆成功！2s后返回首页！',
                    duration: 2000
                    });
                setTimeout(()=>{self.$router.push("home")},2000)
              }else Toast(res.body.msg)
            
               })
            }
            //console.log(this.name)
        },
        islogin(){
         var myself=document.querySelectorAll(".profile")
         this.name=sessionStorage.getItem("uname")
          if(this.name){
            myself[0].style.display="none";
            myself[1].style.display="block";
          }else{
            myself[0].style.display="block";
            myself[1].style.display="none";
          }
        },
        logout(){
            var btn=document.querySelector(".logout");
            var self=this
            btn.onclick=function(){
                sessionStorage.removeItem('uname');
                Toast({
                    message: '退出登录成功！',
                    duration: 1500
                    });
                setTimeout(()=>{self.$router.go(0)},1500)
            }
            
        }
      }

  }
</script>
<style>
    .profile{
        width:375px;
        height:667px;
        position:relative;
    }
    .p_bg1,.p_bg2{
        width:375px;
        height:677px;
        position:absolute;
        top:0;
        left:0;
    }
    .p_bg2{
        opacity: 0.7;
        z-index: 10;
        background:#333;
        }
    .p_info{
        position: absolute;
        z-index:20;
    }
    .p_r img{
        width:20px;
        height:18px;
        margin:25px 20px;
    }
    .p_logo{
        width:375px;
        text-align: center;
    }
    .p_logo img{
        height:45px;
    }
    .p_detail{
        display: flex;
        padding:0 50px;
        margin-top:40px;
    }
    .p_detail img{
        width:20px;
        height:20px; 
    }
    ::-webkit-input-placeholder{
        color:#999;
        font-size:14px;
        }

    .p_detail input{
        color:#fff !important;
        border: 0 !important;
        border-radius: 0;
        background: none !important;
        -webkit-appearance: none;
        -webkit-rtl-ordering: logical;
        cursor: text;
        letter-spacing: normal;
        word-spacing: normal;
        text-transform: none;
        text-indent: 0px;
        text-shadow: none;
        height:25px !important;
        font-size:15px !important;
        color:#eee !important;
    }
    hr{
        width:275px;
        margin:-3px auto;
    }
    .forget{
        color:#00CACF;
        font-size:12px;
        padding:12px 48px;
        text-align:right;
    }
    .p_login,.p_register{
        display: block;
        background:#00CACF;
        text-align: center;
        width:275px;
        height:40px;
        border-radius: 4px;
        color: #fff;
        margin:20px auto;
        line-height: 40px;
        font-size:14px;
    }
    .p_register{
        background:none;
        border:1px solid #00cacf;
        margin-top:40px;
    }
    div.phone{
        text-align: center;
        font-size:14px;
        color:#fff;
    }
    span.phone{
        color:#00cacf;
    }
    div.touxiang{
        width:375px;
        text-align: center;
        margin-top:-15px;
    }
    div.touxiang img{
        width:100px;
        height:100px;
        border-radius: 50%;
        opacity: 0.8;
        box-shadow: 0 0 5px 2px #fff;
    }
    div.p2{
        width:375px;
        height:450px;
        background:#fff;
        margin-top:50px;
        position: relative;
    }
    div.oder1,div.oder2{
        width:341px;
        margin:0 auto;
        border-radius:5px;
        box-shadow: 0 0 0.18rem rgba(0, 0, 0, 0.2);
        padding:3px 0;
    }
    
    div.oder1{
        position:absolute;
        top:-20px;
        left:17px;
    }
    div.oder2{
       position:absolute;
       top:100px;
       left:17px;
    }
    div.oder1 img{
        width:100%;
        border-radius: 5px;
    }
    div.oder2 img{
        width:100%;
    }
    div.name{
        color:#fff;
        margin-top:10px;
        margin-bottom:-15px
    }
    div.logout{
        position: absolute;
        top:25px;
        right:15px;
        color:#fff;
        font-size:15px;
    }
</style>
