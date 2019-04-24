<%@page contentType="text/html; charset=UTF-8"%>
<%//设置request对象传递参数的编码，防止乱码 %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
	<head><title>添加任意学生的提交页面</title></head>
	<style>
    	body{
    	background-image:url("44.jpg");
    	background-size:cover;
        
    	}
    	h2{color:red;}
    	table{color:red;}
    	input{color:red;}
    </style>  
	
	<body>
	<center>
	<h2>
		<form action="insert" method="post">
			<table border="0" width="238" height="252">
			<tr><td><h2>物品号</h2></td><td><input type="text" name="id"></td></tr>
			<tr><td><h2>寄存人</h2></td><td><input type="text" name="name"></td></tr>
			<tr><td><h2>隶属仓库</h2></td><td><input type="text" name="sex"></td></tr>
			<tr><td><h2>寄存时间</h2></td><td><input type="text" name="age"></td></tr>
			<tr><td><h2>重量</h2></td><td><input type="text" name="weight"></td></tr>
			<tr><td><h2>高度</h2></td><td><input type="text" name="hight"></td></tr>
			<tr align="center" >
				<td clospan="2" >
					<input type="submit" value="提 交 ">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="取 消">
				</td>
			</tr>
			</table>
		</form>
		</h2>
		</center>
	</body>
</html>