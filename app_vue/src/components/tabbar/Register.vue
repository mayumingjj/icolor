<template> 
   <div>
       <div class="profile" >
            <img src="../../img/meitu/meitu-bg.png" class="p_bg1">
            <div class="p_bg2"></div>
            <div class="p_info">
                <router-link to="home" class="p_r">
                    <img src="../../img/icon/return.png" >
                </router-link>
                <div class="p_logo">
                    <img src="../../img/icon/icolor-logo2.png" >
                </div>
                <ul class="r_info">
                    <li><input type="text" placeholder="请输入用户名/6-18字母或数字" id="uname" v-model="uname"><div class="r_text"></div></li>
                    <li><input type="text" placeholder="请输入手机号" id="uphone" v-model="uphone"><div class="r_text"></div></li>
                    <li><input type="password" placeholder="设置密码/6-12位数字加字母组成!" id="upwd" v-model="upwd"><div class="r_text"></div></li>
                    <li><input type="password" placeholder="确认密码 " id="upwd2" v-model="upwd2"><div class="r_text"></div></li>
                </ul>
                <div class="p_login r_register">注册</div>
                <router-link to="profile" class="p_register">已有账号？立即&nbsp;<span>登录</span></router-link>
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
              upwd2:"",
              uphone:""
          }
      },
      mounted() {
         this.register();
      },
      methods:{
         register(){
             var self=this;
             var un=document.getElementById("uname");
             var uph=document.getElementById("uphone");
             var up=document.getElementById("upwd");
             var up2=document.getElementById("upwd2");
             var num=0;
             //验证用户名
           un.onblur=function(){
                var reg=/^[0-9a-zA-Z\-\!]{6,16}$/
                var next=this.nextElementSibling
                if(reg.test(self.uname)){
                next.innerHTML="✔&nbsp;用户名可用";
                next.style.color="#00CACF" 
                num+=1
                }else{
                next.innerHTML="✘&nbsp;请输入6-16位字母"
                next.style.color="yellow"  
                }
            }
            //验证手机号
            uph.onblur=function(){
                var reg=/^([1][3|5|8]+\d{9})$/
                var next=this.nextElementSibling
                if(reg.test(self.uphone)){
                next.innerHTML="✔&nbsp;手机号可用";
                next.style.color="#00CACF" 
                num+=1
                }else{
                next.innerHTML="✘&nbsp;请输入正确手机号！"
                next.style.color="yellow"  
                }
            }
            //验证密码
            up.onblur=function(){
                var reg=/^[a-z\d]{6,12}$/
                var next=this.nextElementSibling
                if(reg.test(self.upwd)){
                next.innerHTML="✔&nbsp;密码可用";
                next.style.color="#00CACF" 
                num+=1
                }else{
                next.innerHTML="✘&nbsp;密码必须由6-12位数字加字母组成!"
                next.style.color="yellow"  
                }
            }
            //确认密码
            up2.onblur=function(){
                var next=this.nextElementSibling
                if(self.upwd2==self.upwd && self.upwd2){
                next.innerHTML="✔&nbsp;验证通过";
                next.style.color="#00CACF" 
                num+=1
                }else{
                next.innerHTML="✘&nbsp;密码不一致，请重新输入!"
                next.style.color="yellow"  
                }
            }
            var btn=document.querySelector(".r_register")
            btn.onclick=function(){
                if(num==4){
                     var url="user/register?uname="+self.uname+"&upwd="+self.upwd+"&uphone="+self.uphone;
                     self.$http.get(url).then((res)=>{
                            console.log(res)
                            if(res.ok==1){
                                Toast({
                                    message: '注册成功！前往登录页面！',
                                    duration: 2000
                                });
                                setTimeout(()=>{
                                   self.$router.push("profile")
                                },2000)
                            }else alert("服务器繁忙...")
                        });
                }else{
                    Toast("请认真填写信息！")
                }
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
    ::-webkit-input-placeholder{
        color:#999;
        font-size:14px;
        }
    .r_info{
        width:280px;
        margin:30px auto;
        margin-bottom:0;
    }
    
    .r_text{
        height:10px;
        font-size: 12px;
        margin-bottom:12px;
        margin-top:-12px;
        color:#00CACF;
        padding-left:2px;
    }
    .r_info input{
        color:#fff !important;
        border: 0 !important;
        background: #222 !important;
        -webkit-appearance: none;
        -webkit-rtl-ordering: logical;
        cursor: text;
        letter-spacing: normal;
        word-spacing: normal;
        text-transform: none;
        text-indent: 0px;
        text-shadow: none;
        height:40px !important;
        font-size:15px !important;
        color:#eee !important;
    }
    .r_register{
        margin-bottom:-7px;
    }
    .p_register span{
        color:#00CACF;
    }
</style>
