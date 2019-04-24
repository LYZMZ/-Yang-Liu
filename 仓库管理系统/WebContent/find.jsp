<%@page language="java" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
	<head><title>查询条件提交页面</title></head>
	<style>
    	body{
    	background-image:url("33.jpg");
    	background-size:cover;
        
    	}
    	h2{color:red;}
    </style>  
	
	<body>
	<center>
	<h2>
		请输入要查询物品的单号:<br><hr width="100%" size="3">
		<form action="find_stu.jsp" method="post" align="center">
			单号：&nbsp;<input type="text" name="id"><br> <br>
			<input type="submit" value="查询">
		</form>
		</h2>
		</center>
	</body>
</html>