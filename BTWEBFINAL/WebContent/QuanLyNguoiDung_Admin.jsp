<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="method.models.TaiKhoan" %>
<%@page import="method.models.ThongTinTaiKhoan" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
 <meta charset="utf-8">
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
          <div align="right">
            <input class="form-control" type="text" class="form " placeholder="Từ khóa">
            <button class="btn btn-default">Tìm kiếm</button>
          </div>
          <br>
          <tr><th>STT</th><th>Tên Tài Khoản</th><th>Mật khẩu</th><th>Phân quyền</th></tr>
          	<%
				ThongTinTaiKhoan tttk=new ThongTinTaiKhoan();
				ArrayList<TaiKhoan> listTK=tttk.getAllAccout(); 
			%>
          	<%
          		int i=0;
		 		for(TaiKhoan tk : listTK)
		 		{
		 			i++;
			%>
			<tr>
				<td><%=i %></td>
				<td><a onclick="clickon()" id="thongtin" value="<%=tk.getTenTaiKhoan() %>"><%=tk.getTenTaiKhoan() %></a></td>
				<td><%=tk.getMatKhau() %></td>
				<td><%=tk.getChucVu() %></td>
			</tr>
			<%
			 	}
			%>
          </table>
          result = <input id="result" type="text">
          <script>
          $(function () {
              $('#table a').click(function (e) {
                  e.preventDefault();
                  //$('#result').val($(this).closest('tr').find('td:first').text()); //Lấy value cột thứ nhất
               $('#result2').val($(this).closest('tr').find('td:nth-child(2)').text()); //Hoặc lấy giá trị cột thứ 2
                alert($('#result2').val($(this).closest('tr').find('td:nth-child(2)').text()));
              });
          });          
          </script>
          <div >
          <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 align="center" class="modal-title">Thông tin người dùng</h4>
              </div>
              <div class="modal-body">
			<table class="table">
          	
            <tr>
              <td><label for="user">Tên tài khoản</label></td>
              <td><input type="text" class="form " placeholder="Nhập tài khoản"></td>
            </tr>
            <tr>
              <td><label for="password">Mật khẩu</label></td>
              <td><input type="password" class="form" placeholder="Password"></td>
            </tr>
            <tr>
              <td><label for="chon">Phân quyền</label></td>
              <td>
                <select id="chon">
                  <option value="giangvien">Giảng viên</option>
                  <option value="truongbomon">Trưởng bộ môn</option>
                  <option value="truongkhoa">Trưởng khoa</option>
                  <option value="phongtccb">Phòng TCCB</option>
                  <option value="hieutruong">Hiệu trưởng</option>
                  <option value="admin">Admin</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><label for="hoten">Họ tên</label></td>
              <td><input type="text" class="form " placeholder="Nhập họ tên"></td>
            </tr>
            <tr>
              <td><label for="ngaysinh">Ngày sinh</label></td>
              <td><input type="date" class="form "></td>
            </tr>
            <tr>
              <td><label for="diachi">Địa chỉ</label></td>
              <td><input type="text" class="form " placeholder="Nhập địa chỉ"></td>
            </tr>
            <tr>
              <td><label for="email">Email</label></td>
              <td><input type="email" class="form " placeholder="Nhập địa chỉ email"></td>
            </tr>
          </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Xác nhận</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
           
         <a href="#myModal"><button style="position: relative; left: 30%;" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Thêm người dùng</button></a>
        
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Thêm người dùng</h4>
              </div>
              <div class="modal-body">
<table class="table">
          
            <tr>
              <td><label for="user">Tên tài khoản</label></td>
              <td><input type="text" class="form " placeholder="Nhập tài khoản"></td>
            </tr>
            <tr>
              <td><label for="password">Mật khẩu</label></td>
              <td><input type="password" class="form" placeholder="Password"></td>
            </tr>
            <tr>
              <td><label for="chon">Phân quyền</label></td>
              <td>
                <select id="chon">
                  <option value="giangvien">Giảng viên</option>
                  <option value="truongbomon">Trưởng bộ môn</option>
                  <option value="truongkhoa">Trưởng khoa</option>
                  <option value="phongtccb">Phòng TCCB</option>
                  <option value="hieutruong">Hiệu trưởng</option>
                  <option value="admin">Admin</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><label for="hoten">Họ tên</label></td>
              <td><input type="text" class="form " placeholder="Nhập họ tên"></td>
            </tr>
            <tr>
              <td><label for="ngaysinh">Ngày sinh</label></td>
              <td><input type="date" class="form "></td>
            </tr>
            <tr>
              <td><label for="diachi">Địa chỉ</label></td>
              <td><input type="text" class="form " placeholder="Nhập địa chỉ"></td>
            </tr>
            <tr>
              <td><label for="email">Email</label></td>
              <td><input type="email" class="form " placeholder="Nhập địa chỉ email"></td>
            </tr>
          </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Lưu</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <a href="#xoanguoidung"><button style="position: relative; left: 30%;" class="btn btn-primary" data-toggle="modal" data-target="#xoanguoidung">Xóa người dùng</button></a>
        
       <div class="modal fade" id="xoanguoidung" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Xóa người dùng</h4>
              </div>
              <div align="center" class="modal-body">
                <p>Tài khoản cần xóa</p>
                <input type="text" name="">
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Xác nhận</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
      
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