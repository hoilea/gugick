package vo;

public class jsp_memberVO {
   private String id;
   private String pw;
   private String name;
   private String birth;
   private String mp;
   private String regdate;
   private int memno;
   private String email;

   public jsp_memberVO() {}

   public jsp_memberVO(String id, String pw, String name, String birth, String mp, String regdate, int memno, String email) {
      super();
      this.id = id;
      this.pw = pw;
      this.name = name;
      this.birth = birth;
      this.mp = mp;
      this.regdate = regdate;
      this.memno = memno;
      this.email = email;
   }

   public jsp_memberVO(String id, String pw, String name, String birth, String mp,String email) {
      super();
      this.id = id;
      this.pw = pw;
      this.name = name;
      this.birth = birth;
      this.mp = mp;
      this.email=email;
   
   }
      //메소드 오버로딩  = 같은 이름의 메소드를 타입 순서 갯수가 다르면 사용하게 해줍니다 / 다양성을 만족시킴
   // 객체를 편하게 사용하려면 다양성이 만족되어야함 . 

   public String getId() {
      return id;
   }

   public void setId(String id) {
      this.id = id;
   }

   public String getPw() {
      return pw;
   }

   public void setPw(String pw) {
      this.pw = pw;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getBirth() {
      return birth;
   }

   public void setBirth(String birth) {
      this.birth = birth;
   }

   public String getMp() {
      return mp;
   }

   public void setMp(String mp) {
      this.mp = mp;
   }

   public String getRegdate() {
      return regdate;
   }

   public void setRegdate(String regdate) {
      this.regdate = regdate;
   }

   public int getMemno() {
      return memno;
   }

   public void setMemno(int memno) {
      this.memno = memno;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }      
   
   
}

