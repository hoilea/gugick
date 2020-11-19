package d20200309;

import java.util.ArrayList;

import vo.DeptDAO;
import vo.DeptVO;

public class DeptMain {
public static void main(String[] args) {
     DeptDAO dao = new DeptDAO();
     
     //1건 조회
//     DeptVO vo = dao.selectOne(20);
//     
//     System.out.println(vo.getDeptno()+"\t"+vo.getDname()+"\t"+vo.getLoc());
    
     
     System.out.println("------------------------------------------------");
     
//     DeptVO vo1 = new DeptVO();
//     vo1.setDeptno(90);
//     vo1.setDname("영업1");
//     vo1.setLoc("구로");
//     
//     int result = dao.insertOneI(vo1);
//     
//     if(result==1) {
//        System.out.println("다른 일 수행해");
//     }
     
//     System.out.println("---------------------------------");
//     DeptVO vo2 = new DeptVO();
//     vo2.setDeptno(50);
//     vo2.setDname("영업2");
//     vo2.setLoc("자택근무");
//     dao.updateOne(vo2);
     
     
     
//     System.out.println("----------------------------------");
//     dao.deleteOne(70);
     
     
//     
//     System.out.println("--------------------------------------------");
//     ArrayList<DeptVO> list = dao.selectAll();
//     
//     for(DeptVO vo:list) {
//        System.out.println(
//             vo.getDeptno()+"\t"+vo.getDname()+"\t"+vo.getLoc()
//              );
//     }
   }
}