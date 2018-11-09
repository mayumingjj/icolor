<template>
    <div class="j_select">
        <div class="head-nav">
               <router-link to="/home">
                 <img src='../../img/icon/return_gray.png' class="login"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>局装家</span>
      </div>
      <div class="j_s_body">
          <p>4大步骤放心装</p>
          <div>
              <router-link to="/decoration/show"><img src="../../img/zhuangxi/select1.png" alt=""></router-link>
              <router-link to="/decoration/show"><img src="../../img/zhuangxi/select2.png" alt=""></router-link>
              <router-link to="/decoration/show"><img src="../../img/zhuangxi/select3.png" alt=""></router-link>
              <router-link to="/decoration/show"><img src="../../img/zhuangxi/select4.png" alt=""></router-link>
              <router-link to=""><img src="../../img/zhuangxi/select.png" alt=""></router-link>
          </div>
      </div>
    </div>
</template>
<script>
     export default{
          data(){
            return{
                
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
   .j_select{
       width:375px;
   }
   .j_select .j_s_body{
       background:#A9ACF3;
       height:667px;
       padding-top:80px;
       text-align: center;
   }
   .j_s_body>p{
       font-size:20px;
       color:#fff;
       margin-bottom:20px;
   }
   .j_s_body>div{
       display: flex;
       justify-content: space-around;
       flex-wrap: wrap;
   }
</style>

