<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>用户验证页面</title>
</head>
<body>
	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			String driverName = "com.mysql.cj.jdbc.Driver";
			String dbName = "denglu";
			String url1 = "jdbc:mysql://localhost:3306/" + dbName;
			String url2 = "?user=root&password=123456";
			String url3 = "&useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
			String url = url1 + url2 + url3;
			Class.forName(driverName);
			conn = DriverManager.getConnection(url);
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("username");
			String password = request.getParameter("userpwd");
			String sql = "select * from new_table where(username=? and userpwd=?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next()) {
	%>
	<%=name %>
	<jsp:forward page="总页面.jsp" />
	<br>
	 else {
	 	<jsp:forward page="error.jsp" />
	 }
	<br>
	<%
		}
		} catch (Exception e) {
	%>
	出现异常错误！
	<br><%=e.getMessage()%>
	<%
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	%>
</body>
</html>