<%@page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<title>修改编辑页面</title>
</head>
<body>
	<%
			//使用PreparedStatement对象实现数据库记录的修改，其步骤如下：
			//（1）建立数据库的连接
			String driverName = "com.mysql.cj.jdbc.Driver";
			String userName = "root";
			String userPwd = "123456";
			String dbName = "cangkuguanli";
			String url1 = "jdbc:mysql://localhost:3306/" + dbName;
			String url2 = "?user=" + userName + "&password=" + userPwd;
			String url3 = "&useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
			String url = url1 + url2 + url3;
			Class.forName(driverName);
			Connection conn = DriverManager.getConnection(url);
			
			String id = request.getParameter("id");
			
			session.setAttribute("id", id);
			
			String sql = "select * from stu_info where id=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String id1 = rs.getString("id");
				String name2 = rs.getString("name");
				String sex2 = rs.getString("sex");
				int age = rs.getInt("age");
				double weight = rs.getDouble("weight");
				double hight = rs.getDouble("hight");
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
	<form action="update_stu_3.jsp" method="post">
		<table border="0" width="238" height="252">
			<tr>
				<td>学号</td>
				<td><input name="id" value=<%=id1 %>></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input name="name2" value=<%=name2 %>></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input name="sex2" value=<%=sex2 %>></td>
			</tr>
			<tr>
				<td>年龄</td>
				<td><input name="age" value=<%=age %>></td>
			</tr>
			<tr>
				<td>体重</td>
				<td><input name="weight" value=<%=weight %>></td>
			</tr>
			<tr>
				<td>身高</td>
				<td><input name="hight" value=<%=hight %>></td>
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