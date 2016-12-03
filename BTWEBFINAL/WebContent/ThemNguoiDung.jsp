<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="thongtin.TaiKhoan" %>
<%@ page import="thongtin.ThongTinUser" %>
<%@ page import="method.models.LayThongTinUser" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Thêm Người dùng</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
   
     
        
        
</head>
<body>

			
         <form action="InsertTaiKhoan" method="post">
        <div class="modal fade" id="myModal" role="dialog">
  			<div class="modal-dialog" >
    			<div class="modal-content">
      				<div class="modal-header">
        				 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        				<h4 class="modal-title" id="myModalLabel">Thêm người dùng</h4>
      				</div>
      				<div class="modal-body">
        				
        			<table class="table">
          	
            			<tr>
              				<td><label for="user">Tên tài khoản</label></td>
              				<td><input type="text" id="tentaikhoan" name="tentaikhoan" class="form " value=""></td>
            			</tr>
            			<tr>
              				<td><label for="password">Mật khẩu</label></td>
              				<td><input type="text" id="matkhau" name="matkhau" class="form" value=""></td>
           				</tr>
           				<tr>
              				<td><label for="hoten">Khoa</label></td>
              				<td>
              				<select id="khoa" name="khoa">
                  					<option selected="true" value="Công Nghệ Thông Tin">Công Nghệ Thông Tin</option>                 					        					                 					
                  					<option value="Cơ Khí Chế Tạo Máy">Cơ Khí Chế Tạo Máy</option>                 					
                				</select>
              				</td>
            			</tr>
            			<tr>
              				<td><label for="chon">Phân quyền</label></td>
              				<td>
              				
                				<select id="chon" name="chon">
                  					<option selected="true" value="Giảng Viên">Giảng Viên</option>                 					        					                 					
                  					<option value="Trưởng Khoa">Trưởng Khoa</option>
                 					<option value="Trưởng Bộ Môn">Trưởng Bộ Môn</option>
                  					<option value="Hiệu Trưởng">Hiệu Trưởng</option>
                  					<option value="Phòng TCCB">Phòng TCCB</option>
                  					<option value="Admin">Admin</option>
                				</select>
              				</td>
            			</tr>
            			<tr>
              				<td><label for="hoten">Họ tên</label></td>
              				<td><input type="text" id="hoten" name="hoten" class="form " value=""></td>
            			</tr>
            			<tr>
              				<td><label for="gioitinh">Giới tính</label></td>
              				<td>
              					<select id="chon" name="gioitinh">
                  					<option selected="true" value="Nam">Nam</option>
                  					
                  					<option value="Nữ">Nữ</option>                					
                				</select>              				
              				</td>
            			</tr>
            			<tr>
              				<td><label for="ngaysinh">Ngày sinh</label></td>
             
              				<td><input type="date" id="ngaysinh" name="ngaysinh" class="form " value="" ></td>
            			</tr>
             			<tr>	
              				<td><label >Nơi sinh</label></td>
              				<td><input type="text" id="noisinh"  name="noisinh" class="form " value=""></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Dân tộc</label></td>
             	 			<td><input type="text" id="dantoc" name="dantoc" class="form " value=""></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Số CMND</label></td>
              				<td><input type="text" id="socmnd" name="socmnd" class="form " value=""></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Tôn giáo</label></td>
              				<td><input type="text" id="tongiao" name="tongiao" class="form " value=""></td>
            			</tr>
            			<tr>
            			<tr>
              				<td><label for="diachi">Địa chỉ</label></td>
              				<td><input type="text" id="diachi" name="diachi" class="form " value=""></td>
            			</tr>
            			<tr>
              				<td><label for="diachi">Số điện thoại</label></td>
              				<td><input type="text" id="sdt" name="sdt" class="form " value=""></td>
            			</tr>
            			<tr>
              				<td><label for="email">Email</label></td>
              				<td><input type="text" id="email" name="email" class="form " value=""></td>
            			</tr>
            			<tr>
              				<td><label for="email">Ghi chú</label></td>
              				<td><textarea  style="height: 80px; width: 80%; resize: none;" cols="50" id="ghichu" name="ghichu" value=""></textarea></td>
              				
            			</tr>
          		</table>
        				
      				</div>
      				<div class="modal-footer">
       			 		<button type="button" id="myBtn1" class="btn btn-default" data-dismiss="modal" value="Đóng">Đóng</button>
        		 		<button type="submit" id="myBtn2" class="btn btn-primary" value="Xác nhận">Xác nhận</button>
      				</div>
    			</div>
  			</div>
		</div>
		</form>
		<script>
			$(document).ready(function(){ 
    		$("#myModal").modal("show"); 
			});
			$("#myBtn1").click(function(){
				window.location="QuanLyNguoiDung_Admin.jsp";
		    });
			$("#myBtn2").click(function(){
				window.location="QuanLyNguoiDung_Admin.jsp";
		    });
		</script>
		<script>
			$('#myModal').on('hidden.bs.modal', function (e) {
				window.location="QuanLyNguoiDung_Admin.jsp";
			})
			
		</script>
</body>
</html>