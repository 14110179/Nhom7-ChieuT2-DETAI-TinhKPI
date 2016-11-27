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

@WebServlet("/NhomTieuChi")
public class NhomTieuChi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NhomTieuChi() {
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
		
		String button=request.getParameter("btn");
		NhomTieuChiMethod mt=new NhomTieuChiMethod();
		switch(button)
		{
			
			case "themtieuchi":
			{
				if(noidung==null||noidung=="")
					return;
				mt.InsertNhomTieuChi(noidung, mabieumau);
				ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
				dsntc=mt.getAllNhomTieuChi(mabieumau);
				request.setAttribute("danhsachntc", dsntc);
				break;
			}
			case "refresh":
			{				
				ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
				dsntc=mt.getAllNhomTieuChi(mabieumau);
				request.setAttribute("danhsachntc", dsntc);
				break;
			}
		}
				
		//response.sendRedirect("QuanLyBieuMau_Admin.jsp");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ThietKeBieuMau_Admin.jsp");
		dispatcher.forward(request, response);
	}

}
