package btwebfinal.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import method.models.NhomTieuChiMethod;
import method.models.TieuChiMethod;
import thongtin.DSNhomTC;
import thongtin.DSTieuChi;


@WebServlet("/HieuTruongXemBieuMau")
public class HieuTruongXemBieuMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HieuTruongXemBieuMau() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");	
		String maGV = "";
		//HttpSession session =request.getSession();
		try{
		maGV = request.getParameter("MAGV");
		
		}
		catch(Exception e){
			System.out.println("faild");
		}
		
		String html="";
		int i=0;
		int j=0;
		html += "<tr style='height: auto;' colspan='3'><td  height='10px'><table cellspacing='0' cellpadding='4' border='0'  class='table'><tr align='center' style='height:auto;'><td> A : Giảng Viên</td><td> B : Hiệu Trưởng</td></tr></table></td><td>A</td><td>B</td></tr>";
		NhomTieuChiMethod mt=new NhomTieuChiMethod();
			ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
			dsntc=mt.getAllNhomTieuChi("BM2016-2017");
			if(dsntc!=null)
		for(DSNhomTC item : dsntc)
		{  		
			i++;
			j=0;
			html+="<tr><td style='background-color: lightblue;'><strong><div style='word-wrap: break-word;text-align: justify; width:655px;'>"+i+". "+item.getNoiDung()+"</div></strong></td><td style=' align:center;'></td><td style=' align:center;'></td></tr>";			
			TieuChiMethod tcmt=new TieuChiMethod();
			ArrayList<DSTieuChi> dstieuchi=tcmt.getAllTieuChi2(item.getMaNTC(),"BM2016-2017",maGV);
			
			for(DSTieuChi tc : dstieuchi)
				{
				
					j++;
					html+="<tr><td><div style='word-wrap: break-word;text-align: justify; width:655px;'>"+i+"."+j+"<br>"+tc.getNoiDung()+"<br></div></td><td><select disabled='disabled'><option selected= value='"+tc.getDiemTuDanhGia()+"' >"+tc.getDiemTuDanhGia()+"</option></select></td>"
							+ "<td><select name='"+tc.getMaTieuChi()+"'>"
									+ "<option selected value='"+tc.getDiemHieuTruong()+"' >"+tc.getDiemHieuTruong()+"</option>"
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
											+ "</tr>";
				}
		}
			
		request.setAttribute("html", html);	
		response.setContentType("text/plain");
		response.getWriter().write(html);
			
	}



}
