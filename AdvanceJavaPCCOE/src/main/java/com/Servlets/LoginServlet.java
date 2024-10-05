package com.Servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.Dao.UserDao;
import com.User.User;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		System.out.println(email+ " "+password);
		User user=new User();
		user.setEmail(email);
		user.setPassword(password);
		UserDao dao=new UserDao();
		User user1=dao.loginUser(user);
		if(user1!=null)		{
			System.out.println("Yes");
			HttpSession session=request.getSession();
			session.setAttribute("userD",user1 );
			response.sendRedirect("home.jsp");
		}
		else		{
			HttpSession session=request.getSession();
			session.setAttribute("login-failed", "Invalid username or password");
			response.sendRedirect("login.jsp");	
		}	}	}
