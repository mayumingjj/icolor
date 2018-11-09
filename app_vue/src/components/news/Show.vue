<template>
    <div class="j_select">
        <div class="head-nav">
               <router-link to="/decoration/select">
                 <img src='../../img/icon/return_gray.png' class="login"/>
               </router-link>
               <img src="../../img/icon/icolor-logo.png" class="logo" />
               <span>遇见好装修</span>
      </div>
      <div class="j_s_show">
         <img src="../../img/zhuangxi/show.png" alt="">
         <ul>
             <li>
                 <input type="text" placeholder="您的称呼">
                 <div class="bar"></div>
             </li>
             <li>
                 <input type="text" placeholder="手机号码">
                 <div class="bar"></div>
             </li>
             <li>
                 <select name="location" >
                     <option value="">所在地区&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择＞</option>
                     <option value="">北京</option>
                     <option value="">上海</option>
                     <option value="">深圳</option>
                     <option value="">广州</option>
                     <option value="">河北</option>
                     <option value="">天津</option>
                     <option value="">辽宁</option>
                     <option value="">河南</option>
                     <option value="">山西</option>
                     <option value="">重庆</option>
                     <option value="">四川</option>
                     <option value="">贵州</option>
                     <option value="">哈尔滨</option>
                     <option value="">乌鲁木齐</option>
                 </select>
                 <div class="bar"></div>
             </li>
             <li>
                 <select name="location" >
                     <option value="">选择户型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择＞</option>
                     <option value="">三室两厅</option>
                     <option value="">两居室</option>
                     <option value="">两室一厅</option>
                     <option value="">一居室</option>
                     <option value="">三室一厅</option>
                     <option value="">三居室</option>
                 </select>
                 <div class="bar"></div>
             </li>
             <li>
                 <select name="location" >
                     <option value="">装修需求&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请选择＞</option>
                     <option value="">精装</option>
                     <option value="">毛坯</option>
                     <option value="">局部改造</option>
                     <option value="">现房翻新</option>
                     <option value="">工装</option>
                     
                 </select>
                 <div class="bar"></div>
             </li>
         </ul>
         <p>为了您的利益及我们的口碑</p>
         <p>您的隐私将被严格保密</p>
         <div class="btn">提交需求</div>
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
   .j_select .j_s_show{
       height:667px;
       padding-top:48px;
       text-align: center;
       background:#fff;
   }
  .j_s_show input{
       border:0 !important;
       height:20px !important;
       margin-top:15px !important;
   }
  .j_s_show ::-webkit-input-placeholder{
        color:#000;
        }
   .bar{
       margin:0 12px;
       height:1px;
       background:#ccc;
   }
   .j_s_show ul{
       margin-bottom:20px;
   }
  select{
    margin:0 !important;
    padding:15px 15px !important;
  }
  .j_s_show p{
      font-size:16px;
      color:#000;
  }
  .j_s_show .btn{
      width:320px;
      text-align: center;
      color:#fff;
      background:#41D6DA;
      height:30px;
      line-height:30px;
      margin:15px auto;
      border-radius: 5px;
  }
  
</style>

