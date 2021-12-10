package Model;

public class Book {
	private String Img;
	private String Name;
	private String Type;
	private String Writer;
	
	
	
	public Book(String img, String name, String type, String writer) {
		super();
		Img = img;
		Name = name;
		Type = type;
		Writer = writer;
	}

	public Book() {
		
	}
	
	public String getImg() {
		return Img;
	}
	public void setImg(String img) {
		Img = img;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	
	public String getWriter() {
		return Writer;
	}
	public void setWriter(String writer) {
		Writer = writer;
	}

}
