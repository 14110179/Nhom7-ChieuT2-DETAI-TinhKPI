package btwebfinal.servlets;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import method.models.TaiKhoanMethod;
import thongtin.TaiKhoan;
import com.google.gson.*;
import com.google.gson.reflect.TypeToken;
@WebServlet("/LoadDSTaiKhoan")
public class LoadDSTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoadDSTaiKhoan() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");		
		String tentaikhoan=request.getParameter("username");
		ArrayList<TaiKhoan> dstk=new ArrayList<TaiKhoan>();
		TaiKhoanMethod tttk=new TaiKhoanMethod();
		dstk=tttk.getAllAccout(); 		
		Gson gson=new Gson();
		JsonElement element=gson.toJsonTree(dstk,new TypeToken<List<TaiKhoan>>() {}.getType());
		JsonArray jsonArray = element.getAsJsonArray();
		response.setCharacterEncoding("UTF-8");	
		response.setContentType("application/json");
		response.getWriter().print(jsonArray);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
