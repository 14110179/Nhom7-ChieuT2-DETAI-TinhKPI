package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.DeleteTK;

@WebServlet("/DeleteTaiKhoan")
public class DeleteTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
    public DeleteTaiKhoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tk=request.getParameter("taikhoan2");
		DeleteTK xoa= new DeleteTK();
		boolean check=xoa.DeleteTKhoan(tk);
		if(check==true)
		{
			request.setAttribute("ketqua", "thanhcong");
		}
		else
			request.setAttribute("ketqua", "thatbai");
		 RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyNguoiDung_Admin.jsp");
		 dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
