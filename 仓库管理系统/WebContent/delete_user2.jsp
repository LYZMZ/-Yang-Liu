<%@page contentType="text/html; charset=UTF-8" import="java.sql.*" %>
<html>
	<head><title></title></head>
	<style>
    	body{
    	background-image:url("c.jpg");
    	background-size:cover;
    	}
    	a{color:red;}
    </style>
	<body>
		<center>
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
			
			request.setCharacterEncoding("UTF-8");
			String username = request.getParameter("username");
			String userpwd = request.getParameter("userpwd");
			String sql = "delete from new_table where username=username";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//（5）调用PreparedStatement对象中的executeUpdate()方法
			int n = pstmt.executeUpdate();
			//（6）根据executeUpdate()方法的返回值，判断执行结果
			if(n>=1) {%><center><a> 删除用户成功！</a></center><br><%}
			else {%> 数据修改操作失败！<br><%}
			
			//（7）关闭所有资源
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		 %>
	</body>
</html>