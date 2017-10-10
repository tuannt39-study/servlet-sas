package vn.hkd.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
//@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HelloWorld() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		loadParameter(request, response, "doGet");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		loadParameter(request, response, "doPost");

	}

	private void loadParameter(HttpServletRequest request, HttpServletResponse response, String method)
			throws ServletException, IOException {
		
		ServletContext context = this.getServletContext();
		String account = context.getInitParameter("account");
		String password = context.getInitParameter("password");
		
		ServletConfig config = this.getServletConfig();
		String song = config.getInitParameter("song");
		
		PrintWriter writer = response.getWriter();
		writer.println("Hello World " + method + " - Hello World");
		
		writer.println("Account: " + account + "\nPassword: " + password);
		
		writer.println("The song is: " + song);
		
	}

}
