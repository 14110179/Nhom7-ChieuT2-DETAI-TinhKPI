package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.NhomTieuChiMethod;

@WebServlet("/UpdateNhomTieuChi")
public class UpdateNhomTieuChi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateNhomTieuChi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String mabm=request.getParameter("mabieumau");
		String manhomtc=request.getParameter("manhomtieuchi");
		String noidung=request.getParameter("noidung");
		NhomTieuChiMethod t=new NhomTieuChiMethod();
		boolean kt=t.UpdateNhomTC(manhomtc, mabm, noidung);
		if(kt==true)
		{
			response.sendRedirect("ThietKeBieuMau_Admin.jsp");
		}
		else
		{
			
		}
	}

}
