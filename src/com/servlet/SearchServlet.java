package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

public class SearchServlet extends HttpServlet{
	/**
	 * 查找员工
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		UserDao ud = new UserDaoImpl();

		List<User> userAll = ud.search_em(name);
		request.setAttribute("userAll", userAll);
		request.setAttribute("msg", "查找成功");
		request.getRequestDispatcher("/show_all.jsp").forward(request, response);
	}
}
