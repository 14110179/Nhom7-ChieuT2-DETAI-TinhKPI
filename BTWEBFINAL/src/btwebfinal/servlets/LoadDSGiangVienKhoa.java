package btwebfinal.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.LoadDSGiangVien;

import thongtin.DanhSachGiangVien;

/**
 * Servlet implementation class LoadDSGiangVienKhoa
 */
@WebServlet("/LoadDSGiangVienKhoa")
public class LoadDSGiangVienKhoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadDSGiangVienKhoa() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String khoa="";
		try{
			khoa = request.getParameter("KHOA");
			
			}
			catch(Exception e){
				System.out.println("faild");
			}
		
		String html="";
	
		LoadDSGiangVien load=new LoadDSGiangVien();
		ArrayList<DanhSachGiangVien> dsgv= load.getAllGVKhoa(khoa);
		for(DanhSachGiangVien item : dsgv)
		{  	
			html+=" <option value='"+item.getMaGV()+"'>"+item.getTenGV()+"</option>";
		}
		
		request.setAttribute("html", html);
		response.setContentType("text/plain");
		response.getWriter().write(html);
	}

}
