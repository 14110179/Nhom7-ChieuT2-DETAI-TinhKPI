package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TaiKhoanMethod;


@WebServlet("/SearchTaiKhoan")
public class SearchTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SearchTaiKhoan() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("noidungtimkiem");
		
		TaiKhoanMethod kt=new TaiKhoanMethod();
		if(kt.checkUsername(username)==true)
		{
			request.setAttribute("taikhoansearch",username);	
			RequestDispatcher dispatcher = request.getRequestDispatcher("/TimKiemTaiKhoan.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("kqsearch","khongtontai");	
			RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyNguoiDung_Admin.jsp");
			dispatcher.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
