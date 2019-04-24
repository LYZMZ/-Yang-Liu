<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
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
<br><br><br><br>
<center>
	<form action="delete_user2.jsp" method="post">
  		用 户 名：<input name="username"><br><br>
  		<input type="submit" value="删除用户">
  		</form>
  		</center>
</body>
</html>