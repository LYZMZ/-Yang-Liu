<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title></title>
    <style>
    	body{
    	background-image:url("a.jpg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
  </head>
  <body>
  <br><br><br><br>
  <center>
  	<form action="show.jsp" method="post">
  		用 户 名：<input name="username"><br><br>
  		用户密码：<input name="userpwd" type="password"><br><br>
  		<input type="submit" value="登录">
  		</form>
  		<form action="注册.jsp" method="post">
  		<input type="submit" value="注册">
  		</form>
  		</center>
  	<script>
  </body>
</html>