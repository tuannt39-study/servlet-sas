package vn.hkd.servlet.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.hkd.servlet.model.Student;

/**
 * Servlet implementation class ImageShow
 */
@WebServlet("/ImageShow")
public class ImageShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageShow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doCheck(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doCheck(request, response);
	}

	private void doCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		//Image Show gọi invalidate ngay từ đầu nên hiển thị session detroyed trước khi hiện session create
		//session.invalidate(); //Ngay lập tức timeout, hết hiệu lực.
		if (username==null){
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		} else {
			for(Cookie c: request.getCookies()) {
				System.out.println(c.getName());
				System.out.println(c.getValue());
			}
	
			this.getServletContext().setAttribute("otherScope", "Application scope");
			session.setAttribute("otherScope", "Session scope");
			request.setAttribute("otherScope", "Request scope");
			
			Student student = new Student();
			student.setName("Clover");
			//request.setAttribute("student", student);
			
			List<String> languages = new ArrayList<String>();
			languages.add("Java");
			languages.add("Html");
			request.setAttribute("languages", languages);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("img.jsp");
			dispatcher.forward(request, response);
		}
	}

}
