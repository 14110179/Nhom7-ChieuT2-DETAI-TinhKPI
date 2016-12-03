package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.DangKyBieuMauMethod;
@WebServlet("/DangKyBieuMau")
public class DangKyBieuMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DangKyBieuMau() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		HttpSession session =request.getSession();
		String load=session.getAttribute("trangload").toString();
		String []dsdangky=request.getParameterValues("checkbox[]");
		String nguoithuchien=session.getAttribute("taikhoan").toString();
		if(dsdangky==null)
		{
			request.setAttribute("message", "ThatBai");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/DangKyMucTieuCaNhan_GiangVien.jsp");
			dispatcher.forward(request, response);
			return;
		}
		if(dsdangky!=null)
			for (String item : dsdangky) {
				DangKyBieuMauMethod mt=new DangKyBieuMauMethod();
				mt.DangKy(nguoithuchien, item);
			}
		request.setAttribute("message", "ThanhCong");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/"+load);
		dispatcher.forward(request, response);
		//response.sendRedirect("DangKyMucTieuCaNhan_GiangVien.jsp");
	}

}
