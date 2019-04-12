package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.UserDao;
import com.dao.UserDaoImpl;

public class Log_in_Servlet extends HttpServlet {
	/**
	 * 管理员登陆
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		//System.out.println(name);
		String pwd = request.getParameter("pwd");
		//System.out.println(pwd);
		UserDao ud = new UserDaoImpl();

		// 1 获得用户输入的验证码
		String verifyCode = request.getParameter("verifyCode");
		// 2 获得服务器session 存放数据 ,如果没有返回null
		String sessionCacheData = (String) request.getSession().getAttribute("img");
		if (!sessionCacheData.equalsIgnoreCase(verifyCode)) {
			// 用户输入错误
			// * 存放request作用域
			request.setAttribute("msg", "验证码输入错误");
			// * 请求转发
			request.getRequestDispatcher("/log_in.jsp").forward(request, response);
		} else {
			if (ud.login_user(name, pwd)) {
				/*
				 * HttpSession session = request.getSession(); 把登录好的用户名存到cookie中
				 * Cookie cookie = new Cookie("user", name);
				 * cookie.setMaxAge(60*60); response.addCookie(cookie);
				 */
				request.setAttribute("msg", "欢迎用户" + name);
				request.getRequestDispatcher("/success.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "用户名密码错误");
				response.sendRedirect("fail.jsp");
			}
		}
	}
}
