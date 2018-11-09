const express=require("express");
const imagelist=require("./router/imagelist");
const designlist=require("./router/designlist");
const bodyParse=require("body-parser");
const goodslist=require("./router/goodslist");
const cartlist=require("./router/cartlist");
const user=require("./router/user")
var app=express();
app.use(bodyParse.urlencoded({extended:false}));
const cors=require("cors");
app.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"],
    credentials:true
}))
app.listen(3000);
app.use(express.static(__dirname+"/public"));
app.use('/imagelist',imagelist);
app.use('/design',designlist);
app.use('/goodslist',goodslist);
app.use('/cartlist',cartlist);
app.use("/user",user);