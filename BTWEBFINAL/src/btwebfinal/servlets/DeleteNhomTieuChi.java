package btwebfinal.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.NhomTieuChiMethod;
import thongtin.DSNhomTC;

@WebServlet("/DeleteNhomTieuChi")
public class DeleteNhomTieuChi extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteNhomTieuChi() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String manhomtc=request.getParameter("mantc");
		String mabieumau=request.getParameter("mabieumau");
		NhomTieuChiMethod mt=new NhomTieuChiMethod();
		
		mt.DeleteNhomTC(manhomtc);
		request.setAttribute("loadtrang", "ChinhSuaBM");
		ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
		dsntc=mt.getAllNhomTieuChi(mabieumau);
		request.setAttribute("danhsachntc", dsntc);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
