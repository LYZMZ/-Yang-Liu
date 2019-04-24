<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<title></title>
<style>
    	body{
    	background-image:url("22.jpg");
    	background-size:cover;
        
    	}
    	h2{color:red;}
    </style>  

</head>
<body>
<center>
	<h2>请选择要删除物品的单号：</h2>
	<hr width="100%" size="3">
	<form action="delete" method="post">
		<h2>单号：<input type="text" name="id"> <br> <br></h2> 
		<input type="submit" value="提 交"> &nbsp;&nbsp;&nbsp;&nbsp; <input
			type="reset" value="取 消">
	</form>
	</center>
</body>
</html>