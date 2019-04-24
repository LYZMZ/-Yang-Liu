<%@page contentType="text/html; charset=UTF-8"%>
<%//设置request对象传递参数的编码，防止乱码 %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
	<head><title></title>
	<style>
    	body{
    	background-image:url("b.jpeg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
	</head>
	<body>
	<center>
	<br><br><br><br>
		<form action="zhuce1.jsp" method="post">
			<table border="0" width="238" height="252">
			<tr><td>用户名</td><td><input type="text" name="username"></td></tr>
			<tr><td>密码</td><td><input type="text" name="userpwd"></td></tr>
			<tr align="center" >
				<td clospan="2" >
					<input type="submit" value="提 交 ">&nbsp;&nbsp;&nbsp;
					<input type="reset" value="取 消">
				</td>
			</tr>
			</table>
		</form>
		</center>
	</body>
</html>