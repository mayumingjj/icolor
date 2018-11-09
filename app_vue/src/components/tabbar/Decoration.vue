<template> 
   <div>
      <div class="head-nav">
               <router-link to="home">
                 <img src='../../img/icon/return_gray.png' class="login"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>局装家</span>
      </div>
      <router-link to="decoration/select" class="j_bg">
          <img src="../../img/zhuangxi/bg.png">
      </router-link>
   </div>
  
</template>
<script>
import {Toast} from 'mint-ui';
  export default {
      data(){
          return {
             
          }
      },
      mounted() {
        
      },
      methods:{
       
      }

  }
</script>
<style>
     .j_bg img{
         margin-top:48px;
         width:375px;
         height:619px;
     }
</style>
