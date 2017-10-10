package vn.hkd.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.hkd.servlet.model.DatabaseManagement;
import vn.hkd.servlet.model.Image;

public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentication() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		PrintWriter writer = response.getWriter();
		
		DatabaseManagement dm = new DatabaseManagement();
		
		if (dm.checkUser(username, password)) {
			
			Cookie cookie = new Cookie("location", "VietNam");
			response.addCookie(cookie);
			
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(900); //Sét thời gian session theo giây
			session.setAttribute("username", username);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ImageShow");
			
			Image image = new Image("Avatar", 200, 300);
			request.setAttribute("imageName", image);
			
			session.setAttribute("test", new Image("Test Image", 200, 300));
			session.removeAttribute("test");
			
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("login.jsp");
		}
	}
}
