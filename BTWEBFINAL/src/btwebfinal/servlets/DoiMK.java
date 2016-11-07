package btwebfinal.servlets;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.DoiMatKhau;

@WebServlet("/DoiMatKhau")
public class DoiMK extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DoiMK() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {				
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session =request.getSession();
		String username=request.getParameter("taikhoan");
		String password=request.getParameter("matkhaucu");
		String passnew=request.getParameter("matkhaumoi");
		String passnew2=request.getParameter("matkhaunhaplai");
		DoiMatKhau a=new DoiMatKhau();		
		boolean kt=a.DoiMKhau(username, password, passnew, passnew2);	
		String text="";
		if(kt==true)
		{
			text="Đổi mật khẩu thành công"	;
		}
		else
		{
			text="Đổi mật khẩu thất bại"	;
		}
		  session.setAttribute("thongbao", text);
		  RequestDispatcher dispatcher = request.getRequestDispatcher("/TrangDangNhap.jsp");
		  dispatcher.forward(request, response);
	}
	
}
