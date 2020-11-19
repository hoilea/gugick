package vo;

public class ReBoardVO {
	
	private int renum;
	private String id;
	private String contents;
	private String date;
	private int ref;
	
	
public ReBoardVO() {
	
}
	
	
	
	
	public ReBoardVO(int renum, String id, String contents, String date, int ref) {
		super();
		this.renum = renum;
		this.id = id;
		this.contents = contents;
		this.date = date;
		this.ref = ref;
	}




	public int getRenum() {
		return renum;
	}




	public void setRenum(int renum) {
		this.renum = renum;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getContents() {
		return contents;
	}




	public void setContents(String contents) {
		this.contents = contents;
	}




	public String getDate() {
		return date;
	}




	public void setDate(String date) {
		this.date = date;
	}




	public int getRef() {
		return ref;
	}




	public void setRef(int ref) {
		this.ref = ref;
	}
	
	

}


