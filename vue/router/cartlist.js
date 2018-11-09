const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
  var obj={code:1,msg:[
	  {id:1,name:"小辣椒",price:2100,count:1},
      {id:2,name:"辣椒",price:210,count:1},
      {id:3,name:"椒",price:21,count:1}
  ]}
  res.send(obj)
})
 

module.exports=router;