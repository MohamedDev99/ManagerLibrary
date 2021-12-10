package DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Model.Student;

public class StudentManager {

	public static int AddStudent(Student e) {
		DBinterraction.connect();
		String sql = "insert into student values('"+e.getId()+"','"+e.getName()+"','"+e.getPass()+"','"+e.getEmail()+"')";
		int n = DBinterraction.Maj(sql);
		DBinterraction.disconnect();
		return n;
	}
	
	public static Student Login(String code,String pass) {
		DBinterraction.connect();
		String sql = "select * from student where Code ='"+code+"' and Password ='"+pass+"';";
		ResultSet res = DBinterraction.Select(sql);
		Student st = null;
		try {
				if(res.next()) {
					st = new Student(res.getString(1),res.getString(2),res.getString(3),res.getString(4));
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBinterraction.disconnect();
		return st;
	}
	
	public static List<Student> SelectStudents(String search) {
		List<Student> sts = new ArrayList<Student>();
		DBinterraction.connect();
		String sql = "select * from mohamed.student where Code like '"+search+"' or type Name '"+search+"' or Email like '"+search+"'";
		ResultSet res = DBinterraction.Select(sql);
		try {
			while(res.next()) {
				Student st = new Student();
				st.setId(res.getString(1));
				st.setName(res.getString(2));
				st.setPass(res.getString(3));
				st.setEmail(res.getString(4));
				sts.add(st);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBinterraction.disconnect();
		return sts;
	} 
	
	public static int deleteStudent(String code) {
		DBinterraction.connect();
		String sql = "delete from student where Code ='"+code+"';";
	    int n = DBinterraction.Maj(sql);
	    DBinterraction.disconnect();
	  return n;
	}
	
	public static List<Student> AllStudents() {
		List<Student> sts = new ArrayList<Student>();
		DBinterraction.connect();
		ResultSet res = DBinterraction.Select("select * from student");
		try {
			while(res.next()) {
				Student st = new Student();
				st.setId(res.getString(1));
				st.setName(res.getString(2));
				st.setPass(res.getString(3));
				st.setEmail(res.getString(4));
				sts.add(st);
			}
	    } catch (SQLException e) {
		   // TODO Auto-generated catch block
		  e.printStackTrace();
	    }
	    DBinterraction.disconnect();
		return sts;
	}
}
