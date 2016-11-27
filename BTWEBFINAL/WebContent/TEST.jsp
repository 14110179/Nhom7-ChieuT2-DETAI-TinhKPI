<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="thongtin.TaiKhoan" %>
<%@page import="method.models.TaiKhoanMethod" %>
<%@ page import="thongtin.ThongTinUser" %>
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
	function loadtable(){
		var timkiem;		
		$.get('LoadDSTaiKhoan',{usser:timkiem},function(responseJson){
			if(responseJson!=null){
				$("#dstaikhoantable").find("tr:gt(0)").remove();
				var table1=$("#dstaikhoantable");
				<%int i=0;%>
				$.each(responseJson,function(key,value){
					
					var rowNew=$("<tr><td></td><td></td><td></td><td></td><td></td></tr>")
					rowNew.children().eq(0).text(<%=i%>);
					rowNew.children().eq(1).text(value['tentaikhoan']);
					rowNew.children().eq(2).text(value['matkhau']);
					rowNew.children().eq(3).text(value['chucvu']);
					rowNew.children().eq(4).html("<a href='DeleteTaiKhoan?taikhoan2='"+value['tentaikhoan']+"'><span class='glyphicon glyphicon-remove'></span></a>")
					rowNew.appendTo(table1);
				});
			}			
		});
	}
</script>
<script type="text/javascript">
	$(document).ready(function(){
		loadtable();
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
          <table class="table" id="dstaikhoantable">
          <h3 align="center"><strong>Quản lí người dùng</strong></h3> <br>          
          <form action="SearchTaiKhoan">
          <div align="right">
            <input class="form-control" name="noidungtimkiem" id="noidungtimkiem" type="text" placeholder="Từ khóa" value="">           
            <button class="btn btn-default" type="submit" >Tìm kiếm</button>
          </div>
         </form>   
          <br>
          <tr><th>STT</th><th>Tên Tài Khoản</th><th>Mật khẩu</th><th>Phân quyền</th><th>Hủy bỏ</th></tr>          	
          </table> 
          <!-- Tạo cái đó là j v? input..type number tạo thử coi lạ v -->    
          <input type="number" id ="trang" name="trang"> <button id ="chuyentrang">Đến</button>
          <div>        	           
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