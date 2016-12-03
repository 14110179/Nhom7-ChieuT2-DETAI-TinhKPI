package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import method.models.ChamDiemDanhGia;
import method.models.TieuChiMethod;
import thongtin.DSTieuChi;

@WebServlet("/ChamDiemBieuMau")
public class ChamDiemBieuMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ChamDiemBieuMau() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		HttpSession session =request.getSession();
		String load=session.getAttribute("trangload").toString();
		System.out.println(load);
		TieuChiMethod tcmt3=new TieuChiMethod();
		String nguoithuchien=session.getAttribute("taikhoan").toString();
		ArrayList<DSTieuChi> dstieuchi3=tcmt3.getAllTieuChi3("BM2016-2017",session.getAttribute("taikhoan").toString());
		ChamDiemDanhGia chamdiem=new ChamDiemDanhGia();
		for(DSTieuChi tc : dstieuchi3)
			{
				String matc=tc.getMaTieuChi();
				String diemso=request.getParameter(tc.getMaTieuChi());
				try {
					chamdiem.UpdateDiemSo(matc, diemso, "BM2016-2017", nguoithuchien);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
		response.sendRedirect(load);
		
	}

}
