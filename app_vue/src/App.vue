<template>
   <div class="app-container">
    <!--顶部导航栏-->
    <!--子组件-->
        <router-view></router-view>
    <!--tabbar-->
        
   </div>
</template>
<script src="./lib/js/jquery-1.11.3.js">
</script>
<script>

import {Toast} from 'mint-ui';
   //页面加载成功后发送请求获取图片内容
   export default{
     data(){
       return {
         
       }
     },


     created(){
     
      
        
         
     },
     mounted() {
     },
     methods:{
      
     }
   }
</script>
<style>
   *{
    box-sizing:border-box;
   }
   .app-container{
       position:relative;
   }
   .head-nav{
       width:375px;
       height:48px;
       text-align:center;
       line-height:50px;
       border-bottom:1px solid #08cacf;
       font-size:16px;
       color:#333;
       position:fixed;
       top:0;
       left:0;
       z-index:10;
       background:#EFEFF4
   }
   .head-nav img.logo{
       height:14px;
       margin-right:5px;
   }
 .share{
     position:absolute;
     top:15px;
     right:20px;
 } 
 .login{
     position:absolute;
     top:15px;
     left:20px;
 } 
.share,.login{
    width:20px;
    height:20px;
}
   .main-nav{
        position: fixed;
        z-index: 99;
        bottom: 0;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        align-items: center;
        justify-content: space-around;
        width: 375px;
        line-height: 1;
        background: #333;
        padding-top:3px;
        
   }
   .mid{
       position:absolute;
       top:-20%;
       left:50%;
       margin-left:-27px;
       display:block;
       height:56px;
       width:56px;
       border:1px solid #333;
       text-align:center;
       background:#08cacf;
       border-radius:100px;
       box-shadow: 0 0 1px 6px #333;
   }
  
   .mid>img{
       margin:9px auto;
   }
</style>
