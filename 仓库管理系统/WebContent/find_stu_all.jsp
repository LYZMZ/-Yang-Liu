<%@page import="dao.StudentDAO"%>
<%@page import="bean.Student"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8" import="java.sql.*"%>
<html>
<head>
<title></title>
<style>
    	body{
    	background-image:url("33.jpg");
    	background-size:cover;
        
    	}
    </style> 
</head>
<body>
	<center>
		<%! int row; %>
		<%
			request.setCharacterEncoding("UTF-8");
			row = 1;
			StudentDAO studentDAO = new StudentDAO();
			List<Student> list = studentDAO.findAll();
			Iterator<Student> iter = list.iterator();
		%>此时仓库现存物品中共有 <font size="5" color="red"><%=list.size()%></font>件
		<table border="2" bgcolor="ccceee" width="650">
			<tr bgcolor="CCCCCC" align="center">
				<td>记录条数</td>
				<td>物品号</td>
				<td>寄存人</td>
				<td>隶属仓库</td>
				<td>寄存时间</td>
				<td>重量</td>
				<td>高度</td>
			</tr>
			<%
				while (iter.hasNext()) {
				Student stu = iter.next();
			%>
			<tr align="center">
				<td><%=row%></td>
				<td><%=stu.getId()%></td>
				<td><%=stu.getName()%></td>
				<td><%=stu.getSex()%></td>
				<td><%=stu.getAge()%></td>
				<td><%=stu.getWeight()%></td>
				<td><%=stu.getHight()%></td>
			</tr>
			<%
				++row;
				}
			%>
		</table>
	</center>
</body>
</html>