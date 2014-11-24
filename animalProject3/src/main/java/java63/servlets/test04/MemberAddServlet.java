package java63.servlets.test04;

import java.io.IOException;

import java63.servlets.test04.dao.MemberDao;
import java63.servlets.test04.domain.Member;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test04/member/add")
public class MemberAddServlet extends GenericServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void service(ServletRequest request, ServletResponse response)
      throws ServletException, IOException {
	  
	try{  
    request.setCharacterEncoding("UTF-8");
    
    String id = request.getParameter("id");
    
    
    
    
    Member member = new Member();
    member.setId(request.getParameter("id2"));
    member.setName(request.getParameter("name"));
    member.setTel(request.getParameter("tel"));
    member.setAddr(request.getParameter("addr"));
    member.setPwd(request.getParameter("pwd"));
    
    MemberDao memberDao = (MemberDao)this.getServletContext()
                                         .getAttribute("memberDao");
    memberDao.insert(member);
    
    
    
    
    
    HttpServletResponse orginResponse = (HttpServletResponse)response;
    orginResponse.sendRedirect("list");
	}catch(Exception e){
		HttpServletResponse orginResponse = (HttpServletResponse)response;
	    orginResponse.sendRedirect("merror-form.html");
	}
  }
  
}












