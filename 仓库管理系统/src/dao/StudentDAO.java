package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import bean.Student;
import db.DbConnect;

public class StudentDAO implements IStudentDAO {
	protected static final String FIELDS_INSERT = "id,name,sex,age,weight,hight";
	protected static String INSERT_SQL = "insert into stu_info ("
			+ FIELDS_INSERT + ")" + "values (?,?,?,?,?,?)";
	protected static String SELECT_SQL = "select " + FIELDS_INSERT
			+ " from stu_info where id=?";
	protected static String UPDATE_SQL = "update stu_info set "
			+ "id=?,name=?,sex=?,age=?,weight=?,hight=? where id=?";
	protected static String DELETE_SQL = "delete from stu_info where id=?";

	// ʵ�������ݿ�����Ӽ�¼�ķ���
	public Student create(Student stu) throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		int n = 0;
		try {
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement(INSERT_SQL);
			prepStmt.setInt(1, stu.getId());
			prepStmt.setString(2, stu.getName());
			prepStmt.setString(3, stu.getSex());
			prepStmt.setInt(4, stu.getAge());
			prepStmt.setFloat(5, stu.getWeight());
			prepStmt.setFloat(6, stu.getHight());
			n = prepStmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			DbConnect.closeDB(con, prepStmt, rs);
		}
		if (n >= 1) {
			return stu;
		} else {
			return null;
		}
	}

	// ʵ�ֲ�ѯ���ݿ��ж�ָ���ļ�¼�Ƿ���ڵķ���
	public Student find(Student stu) throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		Student stu2 = null;
		try {
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement(SELECT_SQL);
			prepStmt.setInt(1, stu.getId());
			rs = prepStmt.executeQuery();
			if (rs.next()) {
				stu2 = new Student();
				stu2.setId(rs.getInt(1));
				stu2.setName(rs.getString(2));
				stu2.setSex(rs.getString(3));
				stu2.setAge(rs.getInt(4));
				stu2.setWeight(rs.getFloat(5));
				stu2.setHight(rs.getFloat(6));
			}
		} catch (Exception e) {
			// handle exception
		} finally {
			DbConnect.closeDB(con, prepStmt, rs);
		}
		return stu2;
	}

	// ʵ���г����ݿ�ȫ����¼�ķ���
	public List<Student> findAll() throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		List<Student> student = new ArrayList<Student>();
		con = DbConnect.getDBconnection();
		prepStmt = con.prepareStatement("select * from stu_info");
		rs = prepStmt.executeQuery();
		while (rs.next()) {
			Student stu2 = new Student();
			stu2.setId(rs.getInt(1));
			stu2.setName(rs.getString(2));
			stu2.setSex(rs.getString(3));
			stu2.setAge(rs.getInt(4));
			stu2.setWeight(rs.getFloat(5));
			stu2.setHight(rs.getFloat(6));
			student.add(stu2);
		}
		DbConnect.closeDB(con, prepStmt, rs);
		return student;
	}

	// ʵ��ɾ�����ݿ���ָ���ļ�¼����
	public void remove(Student stu) throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		try {
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement(DELETE_SQL);
			prepStmt.setInt(1, stu.getId());
			prepStmt.executeUpdate();
		} catch (Exception e) {
			//
		} finally {
			DbConnect.closeDB(con, prepStmt, rs);
		}
	}

	// ʵ����ָ���Ķ����޸����ݿ��м�¼�ķ���
	public void update(Student stu) throws Exception {
		Connection con = null;
		PreparedStatement prepStmt = null;
		ResultSet rs = null;
		try {
			con = DbConnect.getDBconnection();
			prepStmt = con.prepareStatement(UPDATE_SQL);
			prepStmt.setInt(1, stu.getId());
			prepStmt.setString(2, stu.getName());
			prepStmt.setString(3, stu.getSex());
			prepStmt.setInt(4, stu.getAge());
			prepStmt.setFloat(5, stu.getWeight());
			prepStmt.setFloat(6, stu.getHight());
			prepStmt.setInt(7, stu.getId());
			int rowCount = prepStmt.executeUpdate();
			if (rowCount == 0) {
				throw new Exception("Update Error:Student Id:" + stu.getId());
			}
		} catch (Exception e) {
			// handle exception
		} finally {
			DbConnect.closeDB(con, prepStmt, rs);
		}
	}
}
