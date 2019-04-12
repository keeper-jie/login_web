package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

public class UpdateServlet extends HttpServlet {
	/**
	 * 更新数据
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		int userId = Integer.parseInt(id);

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String sex = request.getParameter("sex");
		String position = request.getParameter("position");
		String salary_str = request.getParameter("salary");
		double salary = Double.parseDouble(salary_str);
		String home = request.getParameter("home");
		String info = request.getParameter("info");

		//System.out.println("------------------------------------" + userId);

		UserDao ud = new UserDaoImpl();

		if (ud.update_em(userId, name, pwd, sex, position,salary,home, info)) {
			request.setAttribute("msg", "更新成功");
			request.getRequestDispatcher("/SearchAll").forward(request, response);
		} else {
			request.setAttribute("msg", "更新失败");
			response.sendRedirect("/fail.jsp");
		}
	}
}
