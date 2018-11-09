<template>
    <div class="design">
        <!--头-->
        <div class="head-nav">
               <router-link to="home">
                 <img src='../../img/icon/return_gray.png' class="login"/>
               <img src='../../img/icon/login1.png' class="login" style="display:none"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>找设计</span>
            <img src='../../img/icon/share_gray.png' class="share"/>
        </div>
        <!--搜索-->
        <div class="d_search">
            <p>设计师</p>
            <input type="text" placeholder="输入您想查找的设计师">
            <img src="../../img/icon/search.png" alt="">
        </div>
        <div class="d_select">
            <div>甄别设计师</div>
            <router-link to="">
                108位设计师 >
            </router-link>
        </div>
        <div class="d_bar"></div>
        <div class="d_s">
            <div class="d_select">
                <div>梦想改造家</div>
                <router-link to="">
                    查看更多 >
                </router-link>
            </div>
            <div class="d_space">
               <p class="active p"></p>
               <p class="p"></p>
               <p class="p"></p>
            </div>
        </div>
        <div class="d_bar"></div>
        <div class="d_s">
            <div class="d_select">
                <div>设计天团</div>
                <router-link to="">
                    查看更多 >
                </router-link>
            </div>
            <div class="d_space">
               <p class="active p2"></p>
               <p class="p2"></p>
               <p class="p2"></p>
            </div>
        </div>
        <div class="d_bar"></div>
        <!--设计师-->
        <div class="d_info" v-for="(item,i) in list" :key="i">
            <router-link :to="'/designer/'+item.id" class="d_img">
                <img :src="item.img_url" class="d_bg1">
                <img :src="item.touxiang" class="d_tx">
                <ul>
                    <li><h4>{{item.dname}}</h4></li>
                    <li>
                        <span><img src="../../img/design/icon/icon1.png" alt=""></span>
                        <span><img src="../../img/design/icon/icon2.png" alt=""></span>
                        <span><img src="../../img/design/icon/icon3.png" alt=""></span>
                        <span><img src="../../img/design/icon/icon4.png" alt=""></span>
                    </li>
                    <li>公司职位:设计总监</li>
                </ul>
            </router-link>
            <div class="d_text">
                <img src="../../img/design/icon/position.png" alt="">
                <span>驻地城市:&nbsp;{{item.position}}</span>
            </div>
            <div class="d_bar"></div>
        </div>
        <div class="load d_load">
        <p class="footer-text">- - {{footerText}} - -</p>
    </div>
    </div>
</template>
<script>
import {Toast} from 'mint-ui';
  export default {
      data(){
          return {
             list:[],
             morelist:[],
             footerText:'上滑加载更多',
          }
      },
      created() {
           this.get();
            var w=this
       
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
                   w.list=w.list.concat(w.morelist.slice(6));
                  
                 },1000)}else{
                   w.footerText="已加载完毕,到底了!"
                 }  
          }
        }
      },
      mounted() {
        this.active();
       
      },
      methods:{
        active(){
            var p=document.querySelectorAll(".p")
            var p2=document.querySelectorAll(".p2")
            //console.log(p)
            for(var i=0;i<p.length;i++){
                p[i].onclick=function(){
                     for(var j=0;j<p.length;j++){
                        p[j].className="";
                    this.className="active";
                  
                     }
                }
                p2[i].onclick=function(){
                     for(var j=0;j<p.length;j++){
                        p2[j].className="";
                    this.className="active";
                  
                     }
                }
           }
       },
       get(){
           var url="design/list"
           this.$http.get(url).then((res)=>{
               this.list=res.body;
               this.morelist=res.body
               //console.log(this.list)
           })
       }
    }
  }
</script>
<style>
    .design{width:375px;}
    .d_search{
        padding-top:60px;
        display: flex;
        background:#fff;
        justify-content: center;
        align-items: center;
        border-bottom:1px solid #ccc;
    }
    .d_search input{
        width:265px !important;
        margin-left: 10px !important;
         margin-right: 10px !important;
    }
    .d_search>p{
        color:#000;
        font-size:16px;
    }
    .d_search img{
        width:25px;
        height:25px;
        margin-bottom:10px;
    }
    .d_select{
        display: flex;
        justify-content: space-between;
        height:39px;
        background:#fff;
        line-height: 39px;
        padding:0 10px;
    }
    .d_select div{
        font-size:18px;
        font-weight: bold;
    }
    .d_select a{
        color:#00CACF;
        font-size:14px;
    }
    .d_bar{
        height:10px;
        width:375px;
    }
    .d_s{
        background:#fff;
    }
    .d_space{
        display: flex;
        justify-content: center;
        height:40px;
        align-items: center;
    }
    .d_space p{
        height:8px;
        width:69px;
        background:#eee;
        margin-left:6px;
    }
    .active{
        background:#00CACF !important;
    }
    .d_info{
        width:375px;
        height:250px;
    }
    .d_info .d_img{
        width:100%;
        height:200px;
    }
    .d_info .d_text{
        height:42px;
        background:#fff;
    }
    .d_img{
        display: flex;
        font-size:12px;
        padding-top:118px;
        position: relative;
    }
    .d_img .d_bg1{
        position:absolute;
        top:0;
        left:0;
        z-index: -10;
        opacity: 0.9;
        width:375px;
        height:240px;
    }
    .d_img .d_tx{
        width:70px;
        height:70px;
        border:2px solid #fff;
        border-radius: 50%;
        margin:0 10px;
        
    }
    .d_img ul{
        color:#fff;

    }
    .d_img ul li img{
        width:16px;
        margin-right:5px;
    }
    .d_text{
        font-size: 14px;
        line-height:42px;
    }
    .d_text>img{
        width:12px;
        height:14px;
        margin:0 10px;
    }
    .d_load{
        padding-bottom:0;
       
    }
    .d_load>p{
         color:#999 !important;
    }
    .d_load>img{
        width:20px;
       vertical-align:bottom;
       margin-right:5px;
    }
</style>