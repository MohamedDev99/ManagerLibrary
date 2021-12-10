package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BooksManager;
import Model.Book;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
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
		Addbook(request, response);
	}
	
	protected void Addbook (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("name");
		String type = request.getParameter("type");
		String img = request.getParameter("img");
		String writer = request.getParameter("writer");
		Book b = new Book(img,Name,type,writer);
		int n = BooksManager.AddBook(b);
		if( n != 0) {
			response.sendRedirect("Admin-AddBooks.jsp");	
		}else {
			response.sendRedirect("Admin-AddBooks.jsp?AddBook=error");
		}
	}

}
