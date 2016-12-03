package btwebfinal.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;

import method.models.NhomTieuChiMethod;
import method.models.TieuChiMethod;
import thongtin.DSNhomTC;
import thongtin.DSTieuChi;

/**
 * Servlet implementation class LoadBieuMauGV
 */
@WebServlet("/LoadBieuMauGV")
public class LoadBieuMauGV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoadBieuMauGV() {
        super();
        // TODO Auto-generated constructor stub
    }




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String magv="GV001";
		HttpSession session =request.getSession();
		String html="";
		int i=0;
		int j=0;
		NhomTieuChiMethod mt=new NhomTieuChiMethod();
			ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
			dsntc=mt.getAllNhomTieuChi("BM2016-2017");
			if(dsntc!=null)
		for(DSNhomTC item : dsntc)
		{  		
			i++;
			j=0;
			html+="<tr><td style='background-color: lightblue;'><strong><div style='word-wrap: break-word;text-align: justify; width:655px;'>"+i+". "+item.getNoiDung()+"</div></strong></td><td style=' align:center;'></td><td style=' align:center;'></td><td style='align:center;'></td></tr>";			
			TieuChiMethod tcmt=new TieuChiMethod();
			ArrayList<DSTieuChi> dstieuchi=tcmt.getAllTieuChi2(item.getMaNTC(),"BM2016-2017","GV001");
			System.out.println("123");
			for(DSTieuChi tc : dstieuchi)
				{
				System.out.println("123456");
					j++;
					html+="<tr><td><div style='word-wrap: break-word;text-align: justify; width:655px;'>"+i+"."+j+"<br>"+tc.getNoiDung()+"<br></div></td><td><select disabled='disabled'><option selected= value='"+tc.getDiemTuDanhGia()+"' >"+tc.getDiemTuDanhGia()+"</option></select></td>"
							+ "<td><select name='"+tc.getMaTieuChi()+"'>"
									+ "<option selected value='"+tc.getDiemTruongBoMon()+"' >"+tc.getDiemTruongBoMon()+"</option>"
											+ "<option value='0' >0</option>"
											+ "<option value='1' >1</option>"
											+ "<option value='2' >2</option>"
											+ "<option value='3' >3</option>"
											+ "<option value='4' >4</option>"
											+ "<option value='5' >5</option>"
											+ "<option value='6' >6</option>"
											+ "<option value='7' >7</option>"
											+ "<option value='8' >8</option>"
											+ "<option value='9' >9</option>"
											+ "<option value='10' >10</option></select></td>"
											+ "<td><select disabled='disabled'>"
											+ "<option selected value='"+tc.getDiemTruongKhoa()+"'>"+tc.getDiemTruongKhoa()+"</option></select></td></tr>";
				}
		}
			System.out.println(html);
		request.setAttribute("html", html);	
			
	}

}
