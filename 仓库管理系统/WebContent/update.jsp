<%@page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
	<head><title></title>
	<style>
    	body{
    	background-image:url("55.jpg");
    	background-size:cover;
        
    	}
    	h2{color:red;}
    </style>  
	</head>
		<body>
		<center>
			<h2>请选择要修改物品的单号：<hr width="100%" size="3"></h2>
			<form action="update_stu_edit.jsp" method="post">
			<h2>	单号：&nbsp;<input type="text" name="id"><br><br></h2>
				<input type="submit" value="提交">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="取消">
			</form>
		</center>
	</body>
</html>