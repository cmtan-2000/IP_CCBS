package src.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BasicController
 */
@WebServlet("/BasicController")
public class BasicController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BasicController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		
		PrintWriter pw = response.getWriter();
		pw.println("<h3> Your name is " + fullname + "<h3>");
		pw.println("<h3> Your email is " + email+ "<h3>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
