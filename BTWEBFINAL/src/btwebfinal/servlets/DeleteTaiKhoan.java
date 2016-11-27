package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import method.models.TaiKhoanMethod;

@WebServlet("/DeleteTaiKhoan")
public class DeleteTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
    public DeleteTaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tk=request.getParameter("taikhoan2");
		TaiKhoanMethod xoa= new TaiKhoanMethod();
		boolean check=xoa.DeleteTKhoan(tk);
		if(check==true)
		{
			response.sendRedirect("QuanLyNguoiDung_Admin.jsp");
		}
		else
			response.sendRedirect("QuanLyNguoiDung_Admin.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
