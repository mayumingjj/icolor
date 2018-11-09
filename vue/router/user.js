const express=require("express");
const router=express.Router();
const pool=require("../pool");
//登录功能
router.get("/signin",(req,res)=>{
    var {uname,upwd}=req.query;
    var sql="SELECT * FROM icolor_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) console.log(err);
        //console.log(result)
        if(result.length>0) res.send({ok:1,msg:result});
        else res.send({ok:0,msg:"用户名或密码错误！"})               
    })
})
router.get("/register",(req,res)=>{
    var upwd=req.query.upwd,uname=req.query.uname,uphone=req.query.uphone;
    var sql="INSERT INTO `icolor_user`(`uid`, `uname`, `upwd`,`uphone`) VALUES (null,?,?,?)";
    pool.query(sql,[uname,upwd,uphone],(err,result)=>{
        if(err) console.log(err);
        if(result.affectedRows>0) res.send({ok:1});
        else res.send({ok:0})
    })
})
module.exports=router;