package btwebfinal.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.ChamDiemDanhGia;
import method.models.TieuChiMethod;
import thongtin.DSTieuChi;

/**
 * Servlet implementation class TruongKhoaChamDiem
 */
@WebServlet("/TruongKhoaChamDiem")
public class TruongKhoaChamDiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public TruongKhoaChamDiem() {
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
		String nth=request.getParameter("danhsachgv");
		String load=session.getAttribute("trangload").toString();						
		
			
		
			TieuChiMethod tcmt3=new TieuChiMethod();
			ArrayList<DSTieuChi> dstieuchi3=tcmt3.getAllTieuChi3("BM2016-2017",nth);
			ChamDiemDanhGia chamdiem=new ChamDiemDanhGia();
			
			for(DSTieuChi tc : dstieuchi3)
				{			
					String matc=tc.getMaTieuChi();
					String diemso=request.getParameter(tc.getMaTieuChi());
					try {												
							chamdiem.UpdateDiemSoTruongKhoa(matc, diemso, "BM2016-2017", nth);												
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			response.sendRedirect(load);
	}

}
