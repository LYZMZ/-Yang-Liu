<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
	<head><title></title>
	<style>
    	body{
    	background-image:url("a.jpg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
	</head>
	<body>
		<%
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
			String sql = "Insert into new_table(username,userpwd)values(?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			String username = request.getParameter("username");
			int userpwd = Integer.parseInt(request.getParameter("userpwd"));
			pstmt.setString(1, username);
			pstmt.setInt(2, userpwd);
			int n = pstmt.executeUpdate();
			if(n==1) {%><center><a> 注册成功! 请返回登陆页面</a></center><br><%}
			else {%> 数据插入操作失败！<br><%}
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		 %>
	</body>
</html>