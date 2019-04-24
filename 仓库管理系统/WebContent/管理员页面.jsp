<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<style>
    	body{
    	background-image:url("c.jpg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
    
</head>
<body>
<center>
</form>
  		<form action="delete_user.jsp" method="post">
  		<input type="submit" value="删除用户">
  		</form> 
  		<br><br><br>
  		<form action="insert_user.jsp" method="post">
  		<input type="submit" value="增加用户">
  		</form>
  		<br><br><br>
  		<form action="update_user.jsp" method="post">
  		<input type="submit" value="修改用户信息">
  		</form>
  		<br><br><br>
  		<form action="chakan_user.jsp" method="post">
  		<input type="submit" value="查看全部系统用户">
  		</form>
</center>	
</body>
</html>