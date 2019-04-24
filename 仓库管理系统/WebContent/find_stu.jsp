<%@page import="dao.GoodDAO"%>
<%@page import="bean.goods"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8" import="java.sql.*"%>
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
	<center>
		<%
			request.setCharacterEncoding("UTF-8");
			String id = request.getParameter("id");
			goods s = new goods();
			s.setId(Integer.parseInt(id));
			GoodDAO studentDAO = new GoodDAO();
			goods stu = studentDAO.find(s);
		%>
		<table border="2" bgcolor="ccceee" width="650">
			<tr bgcolor="CCCCCC" align="center">
				<td>物品好</td>
				<td>寄存人</td>
				<td>隶属仓库</td>
				<td>寄存时间</td>
				<td>重量</td>
				<td>高度</td>
			</tr>
			<tr align="center">
				<td><%=stu.getId()%></td>
				<td><%=stu.getName()%></td>
				<td><%=stu.getSex()%></td>
				<td><%=stu.getAge()%></td>
				<td><%=stu.getWeight()%></td>
				<td><%=stu.getHight()%></td>
			</tr>
		</table>
	</center>
</body>
</html>