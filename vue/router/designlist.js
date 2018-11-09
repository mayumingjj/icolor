const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
    var sql="SELECT * FROM icolor_design";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports=router;