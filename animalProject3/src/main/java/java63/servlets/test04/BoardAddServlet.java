package java63.servlets.test04;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;


@WebServlet("/test04/member/boardAddF")
public class BoardAddServlet extends GenericServlet{

	private static final long serialVersionUID = 1L;
	
	
	
	 public BoardAddServlet(){
		
	}

	@Override
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		 RequestDispatcher dis = request.getRequestDispatcher("board-form.jsp");
	        dis.forward(request, response);

		
	}

}
