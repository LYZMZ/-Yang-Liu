<%@page import="bean.goods" %>
<%@page import="dao.GoodDAO" %>
<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<title></title>
<style>
    	body{
    	background-image:url("44.jpg");
    	background-size:cover;
        
    	}
    </style>  

</head>
<body>
	<%
		String aa = request.getParameter("id");
		int a = Integer.parseInt(aa);
		session.setAttribute("temp", a);
		goods s = new goods();
		s.setId(a);
		GoodDAO studentDAO = new GoodDAO();
		goods stu = studentDAO.find(s);
		if (stu != null) {
			int id = stu.getId();
			String name2 = stu.getName();
			String sex2 = stu.getSex();
			int age = stu.getAge();
			double weight = stu.getWeight();
			double hight = stu.getHight();
	%>
	<form action="update" method="post">
		<table border="0" width="238" height="252">
			<tr>
				<td>物品号</td>
				<td><input name="id" value=<%=id%>></td>
			</tr>
			<tr>
				<td>寄存人</td>
				<td><input name="name2" value=<%=name2%>></td>
			</tr>
			<tr>
				<td>隶属仓库</td>
				<td><input name="sex2" value=<%=sex2%>></td>
			</tr>
			<tr>
				<td>寄存时间</td>
				<td><input name="age" value=<%=age%>></td>
			</tr>
			<tr>
				<td>重量</td>
				<td><input name="weight" value=<%=weight%>></td>
			</tr>
			<tr>
				<td>高度</td>
				<td><input name="hight" value=<%=hight%>></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="取消"></td>
			</tr>
		</table>
	</form>
	<%
		} else {
	%>
	没有找到合适条件的记录！！<%
		
		}
	%>
</body>
</html>