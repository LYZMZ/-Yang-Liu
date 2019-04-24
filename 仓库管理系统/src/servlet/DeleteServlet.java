package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.goods;
import dao.GoodDAO;

public class DeleteServlet extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id");
		goods stu = new goods();
		stu.setId(Integer.parseInt(id));
		GoodDAO studentDAO = new GoodDAO();
		try {
				studentDAO.remove(stu);
				req.getRequestDispatcher("success.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("error.jsp").forward(req, resp);
		}
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
}