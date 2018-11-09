const express=require("express");
const pool=require("../pool");
var router=express.Router();
router.get("/list",(req,res)=>{
    var sql="SELECT * FROM icolor_meitu";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
    })
});
router.get("/info",(req,res)=>{
    var id=req.query.id;
    var sql="SELECT * FROM icolor_meitu WHERE id=?";
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send({code:1,msg:result});
        //console.log(result)
    })
});

module.exports=router;