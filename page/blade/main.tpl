<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>this is title</title>
    <h1>This is Blade Demo1</h1>
    <script type="text/javascript" src="demo1.js"></script>

</head>
<body>
@include('app::side')
<form>
    <h2>This is lllll!</h2>
    <input type="button" value="开始游戏" onclick="attackEnemy()"/>
</form>
<form action="" method="post">
    <p>First name: <input type="text" name="firstname" /></p>
    <p>Last name: <input type="text" name="lastname" /></p>
    <input type="submit" value="Submit" />
</form>
<div>
<h2>这里是后台接口传过来的数据</h2>
<p>msg的内容是{{$msg}}</p>
<p>content的内容是{{$content}}</p>
</div>
</body>
</html>
