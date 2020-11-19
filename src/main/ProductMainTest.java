package main;

import vo.ProductDAO;
import vo.ProductVO;

public class ProductMainTest {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		
		ProductVO vo = new ProductVO();
		/*
		vo.setPname("구찌가방");
		vo.setPrice(10000000);
		vo.setDcratio(10);
		vo.setPrpdesc("명품중의 명품 기다림의 미학");
		vo.setQty(3);
		vo.setImgfile("../images/GUCCI1.png");
		vo.setBigfile("../images/GUCCI1.png");
		*/
		
		vo.setPname("가라가가");
		vo.setPrice(843284);
		vo.setDcratio(93);
		vo.setPrpdesc("당첨당첨 기다림의 미학");
		vo.setQty(1);
		vo.setImgfile("../images/GUCCI1.png");
		vo.setBigfile("../images/GUCCI2.png");
		
		
		int result = dao.addData(vo);
		
		System.out.println(result);
		
	}
}
