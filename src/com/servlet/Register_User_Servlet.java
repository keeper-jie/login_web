package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

public class Register_User_Servlet extends HttpServlet {
	/**
	 * 管理员注册
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String info = request.getParameter("info");

		User user = new User();
		user.setName(name);
		user.setPwd(pwd);
		user.setInfo(info);

		UserDao ud = new UserDaoImpl();
		//1 获得用户输入的验证码
        String verifyCode = request.getParameter("verifyCode");
        //2 获得服务器session 存放数据 ,如果没有返回null，还没有弄好  sessionCacheData
        String sessionCacheData = (String) request.getSession().getAttribute("img");
         if(! sessionCacheData.equalsIgnoreCase(verifyCode)){
            //用户输入错误
            // * 存放request作用域
            request.setAttribute("msg", "验证码输入错误");
            // * 请求转发
            request.getRequestDispatcher("/register_user.jsp").forward(request, response);
        }
        else	{
		if (ud.register_user(user)) {
			request.setAttribute("username", name);
			request.setAttribute("msg","提交成功" );
			request.getRequestDispatcher("/log_in.jsp").forward(request, response);
		} else {
			request.setAttribute("msg","提交成功" );
			response.sendRedirect("/register_user.jsp");
		}
	}
	}
}
