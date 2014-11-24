package java63.servlets.test04;

import java.io.IOException;
import java.util.Date;

import java63.servlets.test04.dao.BoardDao;
import java63.servlets.test04.domain.Board;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/test04/board/Badd")
public class Board2AddServlet extends GenericServlet {
  private static final long serialVersionUID = 1L;

  @Override
  public void service(ServletRequest request, ServletResponse response)
      throws ServletException, IOException {
    try{
	  request.setCharacterEncoding("UTF-8");
    
    Board board = new Board();
    board.setId(request.getParameter("id"));
    board.setBreed(request.getParameter("breed"));
    board.setFindPlace(request.getParameter("findPlace"));
    board.setFindDate(request.getParameter("findDate"));
    board.setGender(request.getParameter("gender"));
    board.setTitle(request.getParameter("title"));
    board.setContent(request.getParameter("content"));
    board.setId(request.getParameter("id"));
    board.setAddr(request.getParameter("addr"));
    board.setTel(request.getParameter("tel"));
    board.setPhoto(request.getParameter("photo"));
    
    
    BoardDao boardDao = (BoardDao)this.getServletContext()
                                         .getAttribute("boardDao");
    boardDao.insert(board);
    
    HttpServletResponse orginResponse = (HttpServletResponse)response;
    orginResponse.sendRedirect("Blist");
    }catch(Exception e){
    	HttpServletResponse orginResponse = (HttpServletResponse)response;
        orginResponse.sendRedirect("../member/baerror-form.html");
    }
  }
  
}












