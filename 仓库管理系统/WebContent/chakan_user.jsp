<%@page contentType="text/html; charset=UTF-8" import="java.sql.*"%>
<html>
<head>
<title></title>
 <style>
    	body{
    	background-image:url("e.jpg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
</head>
<body>
	<center>
		<%
			request.setCharacterEncoding("UTF-8");
			//使用PreparedStudio对象实现数据库查询，其步骤如下：
			//（1）建立数据库的连接
			String driverName = "com.mysql.cj.jdbc.Driver";
			String userName = "root";
			String userPwd = "123456";
			String dbName = "denglu";
			String url1 = "jdbc:mysql://localhost:3306/" + dbName;
			String url2 = "?user=" + userName + "&password=" + userPwd;
			String url3 = "&useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
			String url = url1 + url2 + url3;
			Class.forName(driverName);
			Connection conn = DriverManager.getConnection(url);
			//（2）形成查询SQL语句
			String sql = "select * from new_table";
			//（3）利用数据库连接对象建立PreparedStatement对象
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//调用PreparedStatement的对象的executeQuery（）方法，并返回ResultSet对象
			ResultSet rs = pstmt.executeQuery();
			//将光标移动到最后一行之后，然后通过getRow()方法获取当前行号，从而得到学生数据表中的记录数量
			rs.last();
		%>你要查询的用户数据表中共有 <font size="5" color="red"><%=rs.getRow()%></font>人
		<table border="2" bgcolor="ccceee" width="650">
			<tr bgcolor="CCCCCC" align="center">
				<td>记录条数</td>
				<td>用户名</td>
			</tr>
			<%
				//将光标移动第一行之前，然后通过next()方法一行一行地遍历学生数据表中的记录
				rs.beforeFirst();
				while (rs.next()) {
			%>
			<tr align="center">
				<td><%=rs.getRow()%></td>
				<td><%=rs.getString("username")%></td>
			</tr>
			<%
				}
			%>
		</table>
	</center>
	<%
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>