<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="method.models.TaiKhoan" %>
<%@page import="method.models.ThongTinTaiKhoan" %>
<%@ page import="method.models.ThongTinUser" %>
<%@ page import="method.models.LayThongTinUser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Người Dùng</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
      <link href="css/bootstrap.min.css" rel="stylesheet">

      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
</head>
<body>
	<script>
        $(document).ready(function(){
        	<%
    			if(request.getAttribute("ketqua")=="thanhcong"||request.getAttribute("ketqua2")=="thanhcong")
    			{
    		%>
    				alert("thành công");
    		<%
    			}       		
    			if(request.getAttribute("ketqua")=="thatbai"||request.getAttribute("ketqua2")=="thatbai")
    			{
    		%>
    				alert("thất bại");
    				
    		<%	
    			}
    			if(request.getAttribute("kqsearch")=="khongtontai")
    			{
    		%>
    				alert("Không tìm thấy!!!");
    		<%	}%>
		});
	</script>
	<div class="container">
    <table border="0" width="1002" cellpadding="0" cellspacing="0" align="center">
    <tr>
      <td height="24"></td>
    </tr>
    <tr>
      <td>
        <div class="img-responsive img-thumbnail">
          <img border="0" src="Image/spkt.jpg" height="143" style="width: 1002px">
        </div>
        <div align="right">
          <a href="TrangChuAdmin.jsp"><button class="btn btn-default" >Thoát</button></a>
        </div>
      </td>
    </tr>
    </table> 
    <div class="row">
      <div class="col-md-8 col-md-offset-2">
        <div class="table-responsive">
          <table class="table" id="table">
          <h3 align="center"><strong>Quản lí người dùng</strong></h3> <br>
          
          <form action="SearchTaiKhoan">
          <div align="right">
            <input class="form-control" name="noidungtimkiem" id="noidungtimkiem" type="text" placeholder="Từ khóa" value="">           
            <button class="btn btn-default" type="submit" >Tìm kiếm</button>
          </div>
         </form>   
          <br>
          <tr><th>STT</th><th>Tên Tài Khoản</th><th>Mật khẩu</th><th>Phân quyền</th><th>Hủy bỏ</th></tr>
          	<%
          		
				ThongTinTaiKhoan tttk=new ThongTinTaiKhoan();
				ArrayList<TaiKhoan> listTK=tttk.getAllAccout(); 
			%>
          	<%
          		int i=0;
		 		for(TaiKhoan tk : listTK)
		 		{
		 			i++;
		 			String modalURL = "ThongTinTaiKhoan.jsp?taikhoan="+tk.getTenTaiKhoan();
		 			String xoaURL ="DeleteTaiKhoan?taikhoan2="+tk.getTenTaiKhoan();
			%>
			<tr>
				<td><%=i%></td>			
				<td><a href="<%=modalURL%>" ><%=tk.getTenTaiKhoan() %></a></td>
				<td><%=tk.getMatKhau() %></td>
				<td><%=tk.getChucVu() %></td>
				<td><a href="<%=xoaURL%>"><span class="glyphicon glyphicon-remove"></span></a></td>
			</tr>
			<%
			 	}
			%>
          </table>        
          <div >
        	           
        <a href="ThemNguoiDung.jsp"><button style="position: relative; left: 40%;" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Thêm người dùng</button></a>
     	
          </div>
        </div>
      </div>
      <div  class="col-md-4">
      
        
      </div>
    </div>
    </div>
      <table>
      <tr>
        <td height="24"></td>
      </tr>
    </table>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>