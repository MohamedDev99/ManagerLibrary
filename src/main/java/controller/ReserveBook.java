package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BooksManager;

/**
 * Servlet implementation class HomeC
 */
@WebServlet("/ReserveBook")
public class ReserveBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ReserveBook() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String book = request.getParameter("bookN");
		String type = request.getParameter("bookT");
		String code = request.getParameter("Code");
		String email = request.getParameter("email");
		String name = request.getParameter("FName");
		int n = BooksManager.ReserveBook(book, type, code, email, name);
		if(n != 0) {
			response.sendRedirect("Reserve-State.jsp?res=Success");
		}else {
			response.sendRedirect("Reserve-State.jsp");
		}
	}

}
