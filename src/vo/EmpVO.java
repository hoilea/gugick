package vo;

public class EmpVO {
   private int empno;
   private String ename;
   private String job;
   private int mgr;
   private String hiredate;
   private String sal;
   private String comm;
   private int deptno;
   
   public EmpVO() {}
   
   public EmpVO(int empno, String ename, String job, int mgr,
         String hiredate, String sal, String comm, int deptno) {
      super();
      this.empno = empno;
      this.ename = ename;
      this.job = job;
      this.mgr = mgr;
      this.hiredate = hiredate;
      this.sal = sal;
      this.comm = comm;
      this.deptno = deptno;
      
      
   }

   public int getEmpno() {
      return empno;
   }

   public void setEmpno(int empno) {
      this.empno = empno;
   }

   public String getEname() {
      return ename;
   }

   public void setEname(String ename) {
      this.ename = ename;
   }

   public String getJob() {
      return job;
   }

   public void setJob(String job) {
      this.job = job;
   }

   public int getMgr() {
      return mgr;
   }

   public void setMgr(int mgr) {
      this.mgr = mgr;
   }

   public String getHiredate() {
      return hiredate;
   }

   public void setHiredate(String hiredate) {
      this.hiredate = hiredate;
   }

   public String getSal() {
      return sal;
   }

   public void setSal(String sal) {
      this.sal = sal;
   }

   public String getComm() {
      return comm;
   }

   public void setComm(String comm) {
      this.comm = comm;
   }

   public int getDeptno() {
      return deptno;
   }

   public void setDeptno(int deptno) {
      this.deptno = deptno;
   }
   

}