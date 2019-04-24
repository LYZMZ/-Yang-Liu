<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
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
	<%
			//使用PreparedStatement对象实现数据库记录的修改，其步骤如下：
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
			
			String username = request.getParameter("username");

			
			session.setAttribute("username", username);
		
			
			String sql = "select * from new_table where username=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String name = rs.getString("username");
				String userpwd = rs.getString("userpwd");
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}																					
		%>
	<form action="update7.jsp" method="post">
		<table border="0" width="238" height="252">
			<tr>
				<td>用户名</td>
				<td><input name="username" value=<%=username %>></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input name="userpwd" value=<%=userpwd %>></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="提交">&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="取消">
				</td>
			</tr>
		</table>
	</form>
	<%} 
		else {%>
	没有找到合适条件的记录！！<%
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}	
			}
			 %>
</body>
</html>