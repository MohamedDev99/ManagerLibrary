package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Book;

public class BooksManager {
	//for reserving a book from library
	public static int ReserveBook(String book,String type, String Code, String email, String name) {
		DBinterraction.connect();
		String sql = "insert into reserve (bookName,type,codeApogee,Email,Name) values('"+book+"','"+type+"','"+Code+"','"+email+"','"+name+"')";
		int n = DBinterraction.Maj(sql);
		DBinterraction.disconnect();
		return n;
		
	}
	
	public static int AddBook(Book b) {
		DBinterraction.connect();
		String sql = "insert into books values('"+b.getName()+"','"+b.getType()+"','"+b.getImg()+"','"+b.getWriter()+"')";
		int n = DBinterraction.Maj(sql);
		DBinterraction.disconnect();
		return n;
	}
	
	public static List<Book> SelectBooks(String search) {
		List<Book> books = new ArrayList<Book>();
		DBinterraction.connect();
		String sql = "select * from mohamed.books where name like '"+search+"' or type like '"+search+"' or writer like '"+search+"'";
		ResultSet res = DBinterraction.Select(sql);
		try {
			while(res.next()) {
				Book book = new Book();
				book.setName(res.getString(1));
				book.setType(res.getString(2));
				book.setImg(res.getString(3));
				book.setWriter(res.getString(4));
				books.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBinterraction.disconnect();
		return books;
	}
	
	public static int deleteBook(String code) {
		DBinterraction.connect();
		String sql = "delete from books where name ='"+code+"';";
	    int n = DBinterraction.Maj(sql);
	    DBinterraction.disconnect();
	  return n;
	}
	
	public static List<Book> AllBooks() {
		List<Book> books = new ArrayList<Book>();
		DBinterraction.connect();
		ResultSet res = DBinterraction.Select("select * from books");
		try {
			while(res.next()) {
				Book book = new Book();
				book.setName(res.getString(1));
				book.setType(res.getString(2));
				book.setImg(res.getString(3));
				book.setWriter(res.getString(4));
				books.add(book);
			}
	    } catch (SQLException e) {
		   // TODO Auto-generated catch block
		  e.printStackTrace();
	    }
	    DBinterraction.disconnect();
		return books;
	}
}
