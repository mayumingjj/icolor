<template>
   <div class="meitu">
    <div class="header">
       <div>
           <img src="../../img/icon/return.png"  class="r">
           <span>美图</span>
       </div>
       <div>
           <img src="../../img/icon/share.png" >
       </div>
    </div>
    <!--图片-->
    <div class="middle" id="slider">
        <img v-for="(src,index) in imgList" :key="index" :src="src" @touchstart="touchstart" @touchmove="touchmove"/>
    </div>
    <div class="bottom"></div>
    
    
   </div>
</template>
<script>
 
   export default{
          data(){
            return{
                imgList:[],
                startPointX: 0,
                changePointX: 0,
                showIndex: 0,
            }  
          },
          created(){
             this.getdetail()
          },
          mounted() {
             this.ret()
          },
          methods:{
             getdetail(){
                var id=this.$route.params.id
                var url="imagelist/info?id="+id;
                this.$http.get(url).then((res)=>{
                   // console.log(res.body.msg[0])
                      this.imgList.push(res.body.msg[0].img_url1)
                      this.imgList.push(res.body.msg[0].img_url2)
                      this.imgList.push(res.body.msg[0].img_url3)
                      this.imgList.push(res.body.msg[0].img_url4)
                })
             },
             ret(){
                 var r=document.querySelector(".r")
                 var self=this;
                 r.onclick=function(){
                     self.$router.push("/meitu")
                 }
             },
            show(index){
                this.changePointX=this.startPointX;
                let slider = document.getElementById('slider');
                slider.style.marginLeft=`-${375*index}px`;
            },
            touchstart(e){
                this.startPointX = e.changedTouches[0].pageX;
            },
            touchmove(e){
                if(this.startPointX==this.changePointX){
                    return ;
                }
                let currPointX = e.changedTouches[0].pageX;
                let leftSlide = this.startPointX-currPointX;
                if(leftSlide>30&&this.showIndex<this.imgList.length-1){
                    this.show(++this.showIndex)
                }else if(leftSlide<-30&&this.showIndex>0){
                    this.show(--this.showIndex)
                }
            },
        
          }
   }
</script>
<style>
  .meitu{width:375px;}
  .header{
      background:#242424;
      height:48px;
      width:100%;
      color:#fff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding:0 20px;
  }
  .header img{
      width:22px;
      height:22px;
      vertical-align:middle;
  }
  .header span{
      margin-left:6px;
      
  }
  .header .r{
     height:15px;
  }
  .middle{
      height:571px;
      display:flex;
      flex-wrap:no-wrap;
      overflow:hidden;
      transition: all 0.8s;
  }
  .middle img{
      width:100%;
      height:100%;
  }
  .bottom{
      height:48px;
      background:#242424;
  }
</style>
