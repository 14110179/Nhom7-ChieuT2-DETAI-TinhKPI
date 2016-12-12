package btwebfinal.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.PhanCongCongViec;


@WebServlet("/GuiThongBao")
public class GuiThongBao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GuiThongBao() {
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
		String noidung=request.getParameter("noidung");
		String tieude=request.getParameter("tieude");
		String nguoinhan=request.getParameter("Comf");
		
		String nguoigui=session.getAttribute("taikhoan").toString();
		Date timeTG=new Date(System.currentTimeMillis());
		
		SimpleDateFormat dinhdangTime=new SimpleDateFormat("yyyy-MM-dd");
		String ngaygui=timeTG.toString();
		try {
			dinhdangTime.parse(ngaygui);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PhanCongCongViec pccv=new PhanCongCongViec();
		boolean kt=pccv.GuiThongBao(tieude, noidung, nguoigui,ngaygui, nguoinhan, "Đã gửi");
		if(kt==true)
		{
			request.setAttribute("message", "true");
			  
		}
		else
		{
			request.setAttribute("message", "false");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/PhanCongViec.jsp");
		  dispatcher.forward(request, response);
	}

}
