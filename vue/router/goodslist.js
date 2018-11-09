const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
  var obj=[
	  {id:1,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"魅族6",p_old:"3000.00",p_now:"2100",sell:1},
	  {id:2,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"360 n7",p_old:"1100",p_now:"333.33",sell:1},
	  {id:3,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"魅族7",p_old:"3000.00",p_now:"2100",sell:1},
	  {id:4,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"360 n5",p_old:"1100",p_now:"333.33",sell:1},
	  {id:5,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"魅族8",p_old:"3000.00",p_now:"2100",sell:1},
	  {id:6,img_url:"http://127.0.0.1:3000/img/banner5.jpg",title:"360 n5s",p_old:"1100",p_now:"333.33",sell:1}
  ];
  res.send({code:1,msg:obj})
})
router.get("/find",(req,res)=>{
    var obj={id:"2",title:"360 n7",p_old:"1100",p_now:"333.33",p_sn:"2199282",p_type:"人才专用款"}
	res.send(obj)
  })

module.exports=router;