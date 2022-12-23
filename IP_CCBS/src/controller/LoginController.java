package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.*;

@WebServlet("/controller")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public LoginController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		request.setAttribute("user", user);
		
		Auth auth = new Auth();
		auth.setUserName(userName);
		auth.setPassword(password);
		request.setAttribute("auth", auth);
		
		try {
			if((auth.match == true) && (userName == "admin")) {
				RequestDispatcher adminrd = request.getRequestDispatcher("/admin.jsp");
				adminrd.forward(request, response);
			}
			else if((auth.match == true) && (userName == "user")) {
				RequestDispatcher userrd = request.getRequestDispatcher("/user.jsp");
				userrd.forward(request, response);
			}
			else if((auth.match == true) && (userName == "companyMBO")) {
				RequestDispatcher MBOrd = request.getRequestDispatcher("/MBO.jsp");
				MBOrd.forward(request, response);
			}
		}
		catch(Exception e) {
			RequestDispatcher errorRd = request.getRequestDispatcher("/errorLogin.jsp");
			errorRd.forward(request, response);
		}
	}

}
