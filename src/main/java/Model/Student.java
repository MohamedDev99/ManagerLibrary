package Model;

public class Student {
	private String Id;
	private String Name;
	private String Email;
	private String Pass;
	public Student(String id, String name, String email, String pass) {
		Id = id;
		Name = name;
		Email = email;
		Pass = pass;
	}
	public String getId() {
		return Id;
	}
	public Student() {
		// TODO Auto-generated constructor stub
	}
	public void setId(String id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPass() {
		return Pass;
	}
	public void setPass(String pass) {
		Pass = pass;
	}
	
	
	

}
