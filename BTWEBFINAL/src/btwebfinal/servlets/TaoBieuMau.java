package btwebfinal.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.BieuMauMethod;

@WebServlet("/TaoBieuMau")
public class TaoBieuMau extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TaoBieuMau() {
        super();
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		HttpSession session =request.getSession();
		String mabieumau=request.getParameter("mabieumau");
		String tenbieumau=request.getParameter("tenbieumau");
		String namhoc=request.getParameter("namhoc");
		String nguoitao=session.getAttribute("taikhoan").toString();		
		BieuMauMethod tao=new BieuMauMethod();
		System.out.println("ok");
		String button=request.getParameter("btn");
		request.setAttribute("loadtrang", "");
		switch(button)
		{
			case "Tao":
			{
				request.setAttribute("suabieumau","");
				request.setAttribute("xoabieumau","");	
				boolean check= tao.TaoBieuMau(mabieumau, tenbieumau, namhoc, nguoitao);
				if(check==true)
				{
					request.setAttribute("taobieumau","thanhcong");	
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					request.setAttribute("taobieumau","thatbai");	
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				break;
			}
			
			case "Sua":
			{
				request.setAttribute("taobieumau","");
				request.setAttribute("xoabieumau","");	
				boolean check= tao.ChinhSuaBM(mabieumau, tenbieumau, nguoitao);
				if(check==true)
				{
					request.setAttribute("suabieumau","thanhcong");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					request.setAttribute("suabieumau","thatbai");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
			}
			break;
			case "Xoa":
			{
				
				request.setAttribute("taobieumau","");	
				request.setAttribute("suabieumau","");
				boolean check= tao.XoaBieuMau(mabieumau);
				if(check==true)
				{
					request.setAttribute("xoabieumau","thanhcong");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					request.setAttribute("xoabieumau","thatbai");
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
			}
			break;
		}
		
	}

	

}
