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
		String button=request.getParameter("btn");		
		switch(button)
		{
			case "Tao":
			{
					
				boolean check= tao.TaoBieuMau(mabieumau, tenbieumau, namhoc, nguoitao);
				if(check==true)
				{
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				break;
			}
			
			case "Sua":
			{
				
				boolean check= tao.ChinhSuaBM(mabieumau, tenbieumau, nguoitao);
				if(check==true)
				{
				
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
			}
			break;
			case "Xoa":
			{
				
				
				boolean check= tao.XoaBieuMau(mabieumau);
				if(check==true)
				{
			
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					
					RequestDispatcher dispatcher = request.getRequestDispatcher("/QuanLyBieuMau_Admin.jsp");
					dispatcher.forward(request, response);
				}
			}
			break;
		}
		
	}

	

}
