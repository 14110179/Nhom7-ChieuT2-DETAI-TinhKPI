package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TieuChiMethod;

@WebServlet("/UpdateTieuChi")
public class UpdateTieuChi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateTieuChi() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String matc=request.getParameter("matieuchi");
		String noidung=request.getParameter("noidung");
		TieuChiMethod tcmt=new TieuChiMethod();
		boolean kt= tcmt.UpdateNhomTC(matc, noidung);
		if(kt==true)
		{
			response.sendRedirect("ThietKeBieuMau_Admin.jsp");
		}
		else
		{
			
		}
		
	}

}
