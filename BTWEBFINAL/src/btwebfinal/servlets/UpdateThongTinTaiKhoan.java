package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TaiKhoan;
import method.models.ThongTinUser;


@WebServlet("/UpdateThongTinTaiKhoan")
public class UpdateThongTinTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateThongTinTaiKhoan() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		ThongTinUser t=new ThongTinUser(tentaikhoan,matkhau,chucvu,hoten,ngaysinh,gioitinh,noisinh
				,dantoc,socmnd,tongiao,diachi,sdt,email,"");
		
	}


}
