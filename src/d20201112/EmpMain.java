package d20200309;

import java.util.ArrayList;

import vo.EmpDAO;
import vo.EmpVO;

public class EmpMain {
   public static void main(String[] args) {
      EmpDAO dao = new EmpDAO();
      
//      EmpVO vo = dao.selectOne(20);
//      
//      System.out.println(vo.getEmpno()+"\t"+vo.getEname()+"\t"+
//      vo.getJob()+"\t"+vo.getMgr()+"\t"+vo.getHiredate()+"\t"+
//            vo.getSal()+"\t"+vo.getComm()+"\t"+vo.getDeptno()
//      );
//      
      System.out.println("-------------------------");
      
      EmpVO vo1 = new EmpVO();
      vo1.setEmpno(90);
      vo1.setEname("종현");
      vo1.setJob("말단");
      vo1.setMgr(1111);
      vo1.setHiredate("97/07/08");
      vo1.setSal("9999");
      vo1.setComm("9999");
      vo1.setDeptno(20);
      
      int result = dao.insertOne(vo1);
      
      if(result==1) {
         System.out.println("다른일 수행해");
      }
      
      System.out.println("------------------------");
      
//      EmpVO vo2 = new EmpVO();
//      
//      vo2.setEname("종현2");
//      vo2.setJob("말단4");
//      vo2.setMgr(4444);
//      vo2.setHiredate("77/07/08");
//      vo2.setSal("7777");
//      vo2.setComm("7777");
//      vo2.setDeptno(30);
//      vo2.setEmpno(90);
//      dao.updateOne(vo2);
      
      
      
      //dao.deleteOne(90);  //delete는 한줄
      
   System.out.println("--------------------------");
   ArrayList<EmpVO> list = dao.selectAll();
         
         for(EmpVO vo:list) {
            System.out.println(
            vo.getEmpno()+"\t"+vo.getEname()+"\t"+vo.getJob()+"\t"+vo.getMgr()+"\t"+
            vo.getHiredate()+"\t"+vo.getSal()+"\t"+vo.getComm()+"\t"+vo.getDeptno()
                  );
         }
   
      
      
      
      
   }

}