package d20200318;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//servlet : 웹에서 동작하는 작은 자바 프로그램
//servlet이 되려면 상속이 필요함 : Httpservlet

@WebServlet("/hello.html")	//주소명 앞에 /가 빠지면 동작하지않음, 주소명이 같은 servlet이있으면 동작하지않는다.
public class helloservlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//req = 요정객체
		//resp = 응답객체
		
		PrintWriter out = resp.getWriter();	//출력
		
		//html형식으로 사용 가능
		out.println("<html>");
		out.println("<head>");
		out.println("<title>hello servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>hello servlet world</h2>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
