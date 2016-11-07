package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.KiemTraDangNhap;
import method.models.LayThongTinUser;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public Login() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");			
		kiemTra(request, response);									
	}
		
	protected void kiemTra(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {	
		HttpSession session =request.getSession();
		String username=request.getParameter("InputUserName1");
		String password=request.getParameter("InputPassword1");
		String chucvu=request.getParameter("chucvu");
		KiemTraDangNhap ktdn=new KiemTraDangNhap();
		LayThongTinUser ltt=new LayThongTinUser();
		String message="";	    
		boolean ktra=ktdn.checkTaiKhoan(username,password);
		
		if(ktra==true)
		{		
			if(ktdn.ChucVu(username, password)==1)	
			{			
				if(chucvu.equals("GiangVien"))
				{		
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuGiangVien.jsp");
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuGiangVien.jsp");
					ltt.LayThongTin(username, password);	
					dispatcher.forward(request, response);					
					return;
				}
				else
				{				
					message="Bạn đã chọn sai quyền truy cập";
					
				}
			}
			else if(ktdn.ChucVu(username, password)==2)	
			{			
				if(chucvu.equals("HieuTruong"))
				{
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuHieuTruong.jsp");
					ltt.LayThongTin(username, password);
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuHieuTruong.jsp");
					
					dispatcher.forward(request, response);
					return;
				}
				else
				{					
					message="Bạn đã chọn sai quyền truy cập";
				}
			}		
			else if(ktdn.ChucVu(username, password)==5)	
			{			
				if(chucvu.equals("PhongTCCB"))
				{
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuPTCCB.jsp");
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuPTCCB.jsp");
					ltt.LayThongTin(username, password);
					dispatcher.forward(request, response);
					return;
				}
				else
				{					
					message="Bạn đã chọn sai quyền truy cập";
					
				}
			}		
			else if(ktdn.ChucVu(username, password)==4)	
			{			
				if(chucvu.equals("TruongBoMon"))
				{
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuTruongBoMon.jsp");
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuTruongBoMon.jsp");
					ltt.LayThongTin(username, password);
					dispatcher.forward(request, response);
					return;
				}
				else
				{				
					message="Bạn đã chọn sai quyền truy cập";
					
				}
			}		
			else if(ktdn.ChucVu(username, password)==3)	
			{			
				if(chucvu.equals("TruongKhoa"))
				{			
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuTruongKhoa.jsp");
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuTruongKhoa.jsp");
					ltt.LayThongTin(username, password);
					dispatcher.forward(request, response);
					return;
				}
				else
				{					
					message="Bạn đã chọn sai quyền truy cập";
					
				}
			}		
			if(ktdn.ChucVu(username, password)==6)	
			{			
				if(chucvu.equals("Admin"))
				{
					session.setAttribute("taikhoan", username);
					session.setAttribute("matkhau", password);
					session.setAttribute("chucvuuser", "TrangChuAdmin.jsp");
					RequestDispatcher dispatcher = request.getRequestDispatcher("TrangChuAdmin.jsp");
					ltt.LayThongTin(username, password);
					dispatcher.forward(request, response);
					return;
				}
				else
				{					
					message="Bạn đã chọn sai quyền truy cập";
					
				}
			}		
		}
		else
		{			
				message="Mật khẩu hoặc tài khoản không chính xác!!!";
		}
		  
		  
		  
		  session.setAttribute("message", message);
		  RequestDispatcher dispatcher = request.getRequestDispatcher("/TrangDangNhap.jsp");
		  dispatcher.forward(request, response);
	}

}
