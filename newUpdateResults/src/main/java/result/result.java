package result;


public class result {

	protected int id;
	protected String name;
	protected String subject;
	protected String marks;

	public result() {
	}

	public result(String name, String subject, String marks) {
		super();
		this.name = name;
		this.subject = subject;
		this.marks = marks;
	}

	public result(int id, String name, String subject, String marks) {
		super();
		this.id = id;
		this.name = name;
		this.subject = subject;
		this.marks = marks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMarks() {
		return marks;
	}

	public void setCountry(String marks) {
		this.marks = marks;
	}
}

