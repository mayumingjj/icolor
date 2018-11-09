<template>
   <div class="app">
      <div class="head-nav">
               <router-link to="profile">
                 <img src='../../img/icon/login.png' class="login"/>
               <img src='../../img/icon/login1.png' class="login" style="display:none"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>给你真正想要的家</span>
            <img src='../../img/icon/share_gray.png' class="share"/>
      </div>
   <!--轮播图区-->
      <mt-swipe :auto="3500">
          <mt-swipe-item>
                <img src="../../img/lunbo/banner1.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/banner2.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/banner3.jpeg" />
          </mt-swipe-item>
      </mt-swipe>
    <!--六宫格-->
      <ul class="function">
          <li>
            <router-link to="/meitu">
                <img src="../../img/icon/fx.png" />
                <div class="text">看美图</div>
            </router-link>
          </li>
          <li >
            <router-link to="/design">
                <img src="../../img/icon/sj.png" />
                <div class="text">找设计</div>
            </router-link>
          </li>
          <li>
            <router-link to="decoration">
                <img src="../../img/icon/jz.png" />
                <div class="text">局装家</div>
            </router-link>
          </li>
          <li>
            <router-link to="#">
                <img src="../../img/icon/zx.png" />
                <div class="text">选装修</div>
            </router-link>
          </li>
          <li >
              <a href="https://yun.kujiale.com/design/3FO4J770N1IB/show">
                <img src="../../img/icon/dp.png" />
                <div class="text">搭配家</div>
              </a>
          </li>
      </ul>     
      
       <!--独家揭秘-->
      <div class="introduce">
         <router-link to="#">
           <img src="../../img/index/1.jpeg"/>
         </router-link>
         <div class="title">独家揭秘</div>
      </div>
      
      <div class="introduce">
         <a href="https://yun.kujiale.com/design/3FO4J770N1IB/show">
           <img src="../../img/index/2.jpeg"/>
         </a>
      </div>
       <!--局部装修-->
      <div class="introduce">
         <router-link to="#">
           <img src="../../img/index/3.jpeg"/>
         </router-link>
         <div class="title">局部装修</div>
      </div>
      <!--轮播 设计-->
      <div class="introduce lb">
         <mt-swipe :auto="3500">
          <mt-swipe-item>
                <img src="../../img/lunbo/swipe1.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/swipe2.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/swipe3.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/swipe4.jpeg" />
          </mt-swipe-item>
          <mt-swipe-item>
                <img src="../../img/lunbo/swipe5.jpeg" />
          </mt-swipe-item>
      </mt-swipe>
      <div class="title">设计师</div>
      </div>
       <!--设计臻品-->
      <div class="introduce">
         <router-link to="#">
           <img src="../../img/index/4.jpeg"/>
         </router-link>
         <div class="title">设计臻品</div>
      </div>
       <!--刷新-->
      <div class="introduce">
         <router-link to="#">
           <img src="../../img/index/5.jpg"/>
         </router-link>
         <div class="title">&nbsp;&nbsp;刷新&nbsp;&nbsp;</div>
      </div>
       <!--装修-->
      <div class="introduce">
         <router-link to="#">
           <img src="../../img/index/6.jpg"/>
         </router-link>
         <div class="title">&nbsp;&nbsp;装修&nbsp;&nbsp;</div>
      </div>
      <!--轮播 美图-->
      <div class="introduce lb">
         <mt-swipe :auto="3500">
            <mt-swipe-item>
                  <img src="../../img/lunbo/banner11.jpeg" />
            </mt-swipe-item>
            <mt-swipe-item>
                  <img src="../../img/lunbo/banner12.jpeg" />
            </mt-swipe-item>
            <mt-swipe-item>
                  <img src="../../img/lunbo/banner13.jpeg" />
            </mt-swipe-item>
            <mt-swipe-item>
                  <img src="../../img/lunbo/banner14.jpeg" />
            </mt-swipe-item>
            <mt-swipe-item>
                  <img src="../../img/lunbo/banner15.jpeg" />
            </mt-swipe-item>
         </mt-swipe>
         <div class="title">&nbsp;&nbsp;美图&nbsp;&nbsp;</div>
      </div>
       <!--分期贷-->
      <div class="introduce bottom">
         <router-link to="#">
           <img src="../../img/index/7.jpg"/>
         </router-link>
      </div>
      <div class="lg-bap">
          <a class="mgSignUp">
              <div class="ic_pack_wrap">
                  <div class="ic_after">
                      <img src="../../img/icon/lg-ba2.png" alt="iColor">
                      <span class="line"></span>
                  </div>
              </div>
          </a>
      </div>
       
      <div class="main-nav">
            <router-link to="/home">
                <img src="../../img/icon/faxian-active.png"/>
            </router-link>
            <router-link to="/meitu">
                <img src="../../img/icon/meitu.png"/>
            </router-link>
            <a></a>
            <router-link to="/design" class="mid">
               <img src="../../img/icon/sheji.png"/>
            </router-link>
            <a></a>
            <router-link to="decoration">
               <img src="../../img/icon/juzhuang.png"/>
            </router-link>
            <router-link to="/profile">
                <img src="../../img/icon/wo.png"/>
            </router-link>
        </div>

   </div>
</template>
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
       this.load()
       var log=document.querySelectorAll(".login")
       if(sessionStorage.getItem("uname")) {
         log[0].style.display="none";
         log[1].style.display="block"
       }else{
         log[1].style.display="none";
         log[0].style.display="block"
       }
     },
     methods:{
      load(){
      var img= document.querySelector(".ic_after>img");
      var n=1; var d=-1
      setInterval(()=>{
        n+=0.04*d;
        img.style.transform=`scale(${n},1)`
        if(n<-0.9999) d=1
        if(n>0.9999) d=-1
      },100)
     }
   } 
   }
</script>
<style> 
*{
  box-sizing:border-box;
  margin:0;
  padding:0;
}
ul{
  list-style:none;
  margin-bottom:5px;
}
.app{
   margin-top:48px;
}
 
  .app .mint-swipe{
    height:200px;
   
  }
  .app .mint-swipe img{
    width:100%;
  }

     /*移动端图片显示要是实现图片1半大小*/
  /*功能格 */
  .function{
    display:flex;
    justify-content:space-around;
    width:100%;
    height:110px;
    background:#fff;
    font-size:14px;
    text-align:center;
    padding-top:15px;
  }
  .text{
    color:#666;
  }
  .bar-gray{
    width:100%;
    height:20px;
    background:#eee;
  }
  .bar-white{
    width:100%;
    height:20px;
    background:#fff;
  }
  .introduce{
     position:relative;
  }
  .introduce img{
    width:100%;
    margin-top:20px;
  }
  .introduce a{
    display:block;
  }
  .title{
    position:absolute;
    top:30px;
    left:8px;
    background:#08CACF;
    border-radius:10px;
    color:#fff;
    font-size:12px;
    padding:2px 10px;
  }
  .lb{
    margin-bottom:5px;
  }
  .app{
    width:375px;
    margin-bottom:48px;
    position:relative;
  }
  .lg-bap {
    width: 75px;
    position: fixed;
    bottom:85px;
    left:285px;
    z-index: 9999;
   
}
.ic_after img{
   width:100%;
   transform: scale(1,1);
}
</style>
    
