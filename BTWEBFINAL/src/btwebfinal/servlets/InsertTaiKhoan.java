package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TaiKhoanMethod;
import thongtin.ThongTinUser;

@WebServlet("/InsertTaiKhoan")
public class InsertTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public InsertTaiKhoan() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String tentaikhoan= request.getParameter("tentaikhoan");
		String matkhau=request.getParameter("matkhau");
		String hoten=request.getParameter("hoten");
		String gioitinh=request.getParameter("gioitinh");
		String ngaysinh=request.getParameter("ngaysinh");
		String noisinh=request.getParameter("noisinh");
		String dantoc=request.getParameter("dantoc");
		String socmnd=request.getParameter("socmnd");
		String tongiao=request.getParameter("tongiao");
		String diachi=request.getParameter("diachi");
		String sdt=request.getParameter("sdt");
		String email=request.getParameter("email");
		String chucvu=request.getParameter("chon");
		String ghichu=request.getParameter("ghichu");
		ThongTinUser t=new ThongTinUser(tentaikhoan,matkhau,chucvu,hoten,ngaysinh,gioitinh,noisinh
				,dantoc,socmnd,tongiao,diachi,sdt,email,ghichu);
		TaiKhoanMethod ttk=new TaiKhoanMethod();
		boolean check=ttk.InsertTK(t);
		if(check==true)
		{
			request.setAttribute("ketqua2", "thanhcong");			
		}
		else
		{
			request.setAttribute("ketqua2", "thatbai");
		}
		response.sendRedirect("QuanLyNguoiDung_Admin.jsp");
		// RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyNguoiDung_Admin.jsp");
		// dispatcher.forward(request, response);
	}

}
