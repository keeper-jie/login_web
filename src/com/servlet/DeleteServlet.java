package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;

public class DeleteServlet extends HttpServlet {
	/**
	 * 删除员工
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		int userId = Integer.parseInt(id);

		UserDao ud = new UserDaoImpl();

		if (ud.delete_em(userId)) {
			request.setAttribute("msg", "删除成功");
			request.getRequestDispatcher("/SearchAll").forward(request, response);
		} else {
			request.setAttribute("msg", "删除失败");
			response.sendRedirect("fail.jsp");
		}
	}

}
