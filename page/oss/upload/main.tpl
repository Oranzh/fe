<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>localStorage,sessionStorage</title>
<style>
	.header{
width:100%;
height:80px;
background:#000;
}
.header-a{
    width:1190px;
    margin:0 auto;
    position:relative;
}
.header-a a{
    width:100%;
    height:80px;
    display:block;
}
.close{
    cursor:pointer;
    color:#fff;
    position:absolute;
    top:5px;
    right:5px;
    background:rgb(129, 117, 117);
    width: 20px;
    text-align: center;
    line-height: 20px;
}
#img-box img{
    width: 300px;
    /*height: 30px;*/
    display: inline-block;
    border: 1px solid #ceCece;
}

</style>
</head>
<body>
	<div class="header">
	    <div class="header-a">
	        <a href=""></a>
	        <i class="close"><button>存入</button></i>
	    </div>
	</div>  
	<button id="btn">退出登录</button>

    <form name=theform>
        <input type="radio" name="myradio" value="local_name" checked=true/> 上传文件名字保持本地文件名字
        <input type="radio" name="myradio" value="random_name" /> 上传文件名字是随机文件名, 后缀保留
    </form>
    <h4>您所选择的文件列表：</h4>
    <div id="ossfile">你的浏览器不支持flash,Silverlight或者HTML5！</div>
    <br/>
    <div id="container">
        <a id="selectfiles" href="javascript:void(0);" class='btn'>选择文件</a>
    </div>
    <div id="img-box">
    </div>
<script src="jquery.js"></script>
<script>
 // localStorage.setItem("key","value");//以“key”为名称存储一个值“value”

// localStorage.getItem("key");//获取名称为“key”的值

// localStorage.removeItem("key");//删除名称为“key”的信息。

// localStorage.clear();​//清空localStorage中所有信息

//localStorage方法localStorage生命周期是永久
// function haxi(){
//         // 判断localStorage里有没有isClose
//         if(localStorage.getItem("isClose")){  
//             $(".header").hide();
//         }else{
//             $(".header").show();
//         }
//         //点击关闭隐藏图片存取数据
//         $(".close").click(function(){
//             $(".header").fadeOut(1000);
//             localStorage.setItem("isClose", "localStorage"); 
//              sessionStorage.setItem("isClose", "sessionStorage"); 
//         })
//     }
//     haxi();
//  //删除本地存储   
//  $("#btn").click(function(){
//  	alert(1)
//  	//本地储存
//  	localStorage.clear()
//  	//会话储存
//  	sessionStorage.clear()
//  })



	//sessionStorage关闭页面或浏览器后被清除
// function haxi(){
//         //判断localStorage里有没有isClose
//         if(sessionStorage.getItem("isClose")){  
//         	console.log(sessionStorage.getItem("isClose"))           
//             $(".header").hide();
//         }else{
//             $(".header").show();
//         }
//         //点击关闭隐藏图片存取数据
//         $(".close").click(function(){
//             $(".header").fadeOut(1000);

//             sessionStorage.setItem("isClose", "你好"); 
//             sessionStorage.setItem("isClose", "我不知道阿"); 
//         })
//     }
//     haxi();
	
	//注册
//  $.ajax({
//  	url:"https://www.xiaohui.li/im/register",
//  	type:"post",
//  	async: false,
//  	data:{
//  		name:"asad",
//  		password:"123456"
//  	},
//  	success:function(data){
//  		console.log(data)
//     }
// });

//存本地数据
//  $.ajax({
//  	url:"https://www.xiaohui.li/im/login",
//  	type:"post",
//  	async: false,
//  	data:{
//  		name:"asad",
//  		password:"123456"
//  	},
//  	success:function(data){
//  	 encrypted = data.token.encrypted
//  	 hash_key = data.token.hash_key
//  	 id = data.user.id
//  	 name = data.user.name
 	
// 	localStorage.setItem("encrypted", encrypted); 
// 	localStorage.setItem("hash_key", hash_key); 
// 	localStorage.setItem("id", id); 
// 	localStorage.setItem("name", name); 
//     }
// });

//返回给服务器
// $.ajax({
//  	url:"https://www.xiaohui.li/im/MyGroups",
//  	type:"post",
//  	data:{
//  		"_t[encrypted]":encrypted,
//  		"_t[hash_key]":hash_key
//  	},
//  	success:function(data){
//  		console.log(data)
//     }
// })

	//加入群组
//  $.ajax({
//  	url:"https://www.xiaohui.li/im/joinGroup",
//  	type:"post",
//  	data:{
//  		"_t[encrypted]":encrypted,
//  		"_t[hash_key]":hash_key,
//  		group_id:11
//  	},
//  	success:function(data){
//  		console.log(data)
//     }
// })

//返回给服务器
// $.ajax({
//  	url:"https://www.xiaohui.li/im/MyGroups",
//  	type:"post",
//  	data:{
//  		"_t[encrypted]":encrypted,
//  		"_t[hash_key]":hash_key
//  	},
//  	success:function(data){
//  		console.log(data)
//     }
// })

</script>
<script type="text/javascript" src="plupload.full.min.js"></script>
<script type="text/javascript" src="upload.js"></script>	
</body>
</html>