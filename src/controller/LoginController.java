package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tododao.LoginDao;
import todomodel.LoginPage;


@WebServlet("/login")
public class LoginController extends HttpServlet {
	
	private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.sendRedirect("login/login.jsp");

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 authenticate(request, response);
	}

	 private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	        LoginPage loginBean = new LoginPage();
	        loginBean.setUsername(username);
	        loginBean.setPassword(password);

	        try {
	            if (loginDao.validate(loginBean)) {
	                RequestDispatcher dispatcher = request.getRequestDispatcher("todo/todo-list.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                HttpSession session = request.getSession();
	                
	            }
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }

	    }
      }
