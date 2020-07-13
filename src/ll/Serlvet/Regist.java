package ll.Serlvet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ll.Dao.LoginCheck;

import org.apache.catalina.connector.Request;
import org.apache.catalina.connector.Response;

public class Regist extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Regist() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("un");
		String userPassword = request.getParameter("up");
		String mail = request.getParameter("mail");
		String tel = request.getParameter("tel");
		String sex = request.getParameter("sex");
		String city = request.getParameter("city");
		System.out.println("用户输入的用户名为："+userName);
		//System.out.println(userPassword);
		//System.out.println(mail);
		//System.out.println(sex);
		//System.out.println(city);
		LoginCheck Dao = new LoginCheck();
		boolean flag = Dao.insertUser(userName, userPassword, mail,tel,sex, city);
		
		if(flag){
			String a = URLEncoder.encode("恭喜注册成功，现在跳转到登陆页面！", "UTF-8");  
	        out.print("<script>alert(decodeURIComponent('"+a+"') );window.location.href='login.jsp'</script>");
	       }
		else{
			String a = URLEncoder.encode("用户名已存在，请重新输入！", "UTF-8");  
	        out.print("<script>alert(decodeURIComponent('"+a+"') );window.location.href='regist.jsp'</script>");
	       }
	
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
