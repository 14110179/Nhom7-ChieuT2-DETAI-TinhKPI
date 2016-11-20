package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TieuChiMethod;

@WebServlet("/InsertTieuChi")
public class InsertTieuChi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public InsertTieuChi() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String mabieumau=request.getParameter("mabieumau");
		String noidung=request.getParameter("noidung");		
		String manhomtc=request.getParameter("manhomtieuchi");
		TieuChiMethod t=new TieuChiMethod();
		boolean kt=t.InsertTieuChi(noidung, manhomtc, mabieumau);
		if(kt==true)
		{
			response.sendRedirect("ThietKeBieuMau_Admin.jsp");
		}
		else
		{
			
		}
	}

}
