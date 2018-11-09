<template>
   <div class="app" id="app"> 
      <div class="head-nav">
               <router-link to="profile">
                 <img src='../../img/icon/login.png' class="login"/>
                 <img src='../../img/icon/login1.png' class="login" style="display:none"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>美图-美居</span>
            <img src='../../img/icon/share_gray.png' class="share"/>
      </div>
      <div class="top">
        <ul class="nav-top">
            <li>
              <span>户型</span><span class="bz">▼</span>
            </li>
            <li>
              <span>空间</span><span class="bz">▼</span>
            </li>
            <li>
              <span>风格</span><span class="bz">▼</span>
            </li>
        </ul>
      </div>
      <!--隐藏面纱-->
      <div class="bg"></div>
      <!--隐藏列表-->
      <div class="list">
        <ul class="list_info">
          <li>户型 </li>
          <li>小户型</li>
          <li>公寓</li>
          <li>别墅</li>
          <li>复式</li>
          <li>loft</li>
          <li>大平层</li>
        </ul>
      </div>
       <div class="list">
        <ul class="list_info">
          <li>空间 </li>
          <li>客厅</li>
          <li>厨房</li>
          <li>餐厅</li>
          <li>卧室</li>
          <li>卫生间</li>
          <li>儿童房</li>
          <li>阳台</li>
          <li>书房</li>
        </ul>
      </div>
       <div class="list">
        <ul class="list_info">
          <li>风格</li>
          <li>现在简约</li>
          <li>新中式</li>
          <li>北欧</li>
          <li>欧式</li>
          <li>美式</li>
          <li>混搭</li>
        </ul>
      </div>
      <div class="products">
          <div class="product" v-for="(item,i) in list" :key="i">
             <router-link :to="'/info/'+item.id">
                <img :src="item.img_url">
                <p>{{item.title}}</p>
             </router-link>
          </div>
      </div>
      <div class="load">
        <p class="footer-text">--{{footerText}}--</p>
    </div>

    <div class="main-nav">
            <router-link to="/home">
                <img src="../../img/icon/faxian.png"   />
                
            </router-link>
            <router-link to="/meitu">
                
                <img src="../../img/icon/meitu-active.png"/>
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
         list:[],
         morelist:[],
         footerText:'上滑加载更多',
       }
     },
     created(){
     
        var w=this
        this.getproduct();
        //上滑加载更多
        //获取滚动条当前的位置 
          function getScrollTop() {
              var scrollTop = 0;
              if(document.documentElement && document.documentElement.scrollTop) {
                  scrollTop = document.documentElement.scrollTop;
              } else if(document.body) {
                  scrollTop = document.body.scrollTop;
              }
             return scrollTop;
        }
 
         //获取当前可视范围的高度 
         function getClientHeight() {
             var clientHeight = 0;
             if(document.body.clientHeight && document.documentElement.clientHeight) {
                 clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight);
             } else {
                 clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight);
             }
             return clientHeight;
         }

         //获取文档完整的高度 
         function getScrollHeight() {
             return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
        }
        
         //滚动事件触发
         window.onscroll = function() {
             if(getScrollTop() + getClientHeight() == getScrollHeight()) {
                 //console.log('更多'+this.morelist)
                  //console.log(w.morelist)
                   if(w.list.length<28) {
                var t= setTimeout(()=>{
                   w.list=w.list.concat(w.morelist.slice(8));
                  
                 },1000)}else{
                   w.footerText="已加载完毕,到底了!"
                 }  
          }
        }
       
         
     },
     mounted() {
       this.canvas();
     },
     beforeDestroy(){
           
        },
     methods:{
        getproduct(){
          var url="imagelist/list"
          this.$http.get(url).then((res)=>{
            //console.log(res)
            this.list=res.body.msg
            this.morelist=res.body.msg
          })
        },
        canvas(){
          var n=0
          var btns=document.querySelectorAll(".nav-top>li")
          var divs=document.querySelectorAll(".list")
          var bg=document.querySelector(".bg")
          
          //console.log(btns)
          for(var i=0;i<btns.length;i++){
            btns[i].onclick=function(){
              n++
              if(n==3) n=1
               this.children[1].style.transform=`rotate(${n*180}deg)`
              //console.log(10)
              for(var j=0;j<divs.length;j++){
                divs[j].style.width="0";
              }
             
              if(this.children[0].innerHTML=="户型"){divs[0].style.width="168px"}else if(this.children[0].innerHTML=="空间"){divs[1].style.width="168px"}else{divs[2].style.width="168px"}
              bg.style.width="375px";
              bg.style.height="528px"
              
              if(n==2){
                bg.style.width="0";
                bg.style.height="0"
                for(var j=0;j<divs.length;j++){
                divs[j].style.width="0";
              } 
              }
            }
          }
        }
     } 
   }
</script>
<style>
  .app{
    width:375px;
    position:relative;
  }
   .top{
     position:fixed;
     top:48px;
     left:0;
     height:40px;width:375px;
     line-height:40px;
     border-bottom:1px solid #ccc;
     font-size:14px;
     color:#333;
     background: #EFEFF4;
   }
   .nav-top{
     width:375px;
     display:flex;
     justify-content:space-around;
   }
   .products{
     padding:10px 0;
     background:#eee;
     margin-top:90px;
     text-align:center;
     flex-wrap:wrap;
     color:#000;
     display:flex;
     justify-content:space-around;
   }
   .product p{
     color:#333;
   }
   .product img{width:177px;height:180px;}
   .load{
     text-align:center;
     padding-bottom:18px;
   }
   .footer-text{
     color:#08CACF;
     font-size:16px;
   }
   .bz{
     display:inline-block;
     margin-left:5px;
     transition:all 1s;
   }
   .list{
     height:527px;
     width:0;
     position:fixed;
     top:88px;
     right:0;
     z-index:10;
     background:#fff;
     overflow: hidden;
     white-space: nowrap;
     transition: all 0.8s ease-out;
   }
   
   .list_info li{
     border-bottom:1px solid #ddd;
     line-height:50px;
     padding-left:10px;
     color:#333;
     font-size:15px;
   }
   .list_info li:first-child{
     color:#08CACF;
     font-weight: bold;
     font-size:16px;
     border-color:#08CACF;
   }
   .bg{
     z-index:5;
     width:0px;
     height:0px;
     position: fixed;
     top:88px;
     left:0;
     background:#000;
     opacity: 0.5;
     transition: all 0.8s;
   }
   .main-nav{
     height:52px;
   } 
</style>