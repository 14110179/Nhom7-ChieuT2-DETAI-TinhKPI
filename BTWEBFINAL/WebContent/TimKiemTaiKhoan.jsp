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
    <title>Thông Tin Tài Khoản</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>      
</head>
<body>
			<% 
       			LayThongTinUser ltt=new LayThongTinUser();
				ThongTinUser x ;
				x= ltt.LayThongTin2(request.getAttribute("taikhoansearch").toString());   								
        	%>
         <form action="UpdateThongTinTaiKhoan" method="post">
        <div class="modal fade" id="myModal" role="dialog">
  			<div class="modal-dialog" >
    			<div class="modal-content">
      				<div class="modal-header">
        				 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        				<h4 class="modal-title" id="myModalLabel">Kết quả tìm kiếm</h4>
      				</div>
      				<div class="modal-body">
        				
        			<table class="table">
          	
            			<tr>
              				<td><label for="user">Tên tài khoản</label></td>
              				<td><input type="text"  readonly="readonly" id="tentaikhoan" name="tentaikhoan" class="form " value="<%= x.getUsername()%>"></td>
            			</tr>
            			<tr>
              				<td><label for="password">Mật khẩu</label></td>
              				<td><input  type="text" id="matkhau" name="matkhau" class="form" value="<%= x.getPass()%>"></td>
           				</tr>
            			<tr>
              				<td><label for="chon">Phân quyền</label></td>
              				<td>
              				
                				<select id="chon" name="chon">
                  					<option selected="true" value="<%= x.getChucvu()%>"><%= x.getChucvu()%></option>
                  					<%
                  						String[] arr=new String[5];
              							if(x.getChucvu().equals("Giảng Viên"))
              							{
              								arr[0]="Trưởng Bộ Môn";
              								arr[1]="Trưởng Khoa";
              								arr[2]="Phòng TCCB";
              								arr[3]="Hiệu Trưởng";
              								arr[4]="Admin";
              							}
              							else if(x.getChucvu().equals("Trưởng Bộ Môn"))
              							{
              								arr[0]="Giảng Viên";
              								arr[1]="Trưởng Khoa";
              								arr[2]="Phòng TCCB";
              								arr[3]="Hiệu Trưởng";
              								arr[4]="Admin";
              							}
              							else if(x.getChucvu().equals("Trưởng Khoa"))
              							{
              								arr[0]="Giảng Viên";
              								arr[1]="Trưởng Bộ Môn";
              								arr[2]="Phòng TCCB";
              								arr[3]="Hiệu Trưởng";
              								arr[4]="Admin";
              							}
              							else if(x.getChucvu().equals("Phòng TCCB"))
              							{
              								arr[0]="Giảng Viên";
              								arr[1]="Trưởng Bộ Môn";
              								arr[2]="Trưởng Khoa";
              								arr[3]="Hiệu Trưởng";
              								arr[4]="Admin";
              							}
              							else if(x.getChucvu().equals("Hiệu Trưởng"))
              							{
              								arr[0]="Giảng Viên";
              								arr[1]="Trưởng Bộ Môn";
              								arr[2]="Trưởng Khoa";
              								arr[3]="Phòng TCCB";
              								arr[4]="Admin";
              							}
              							else
              							{
              								arr[0]="Giảng Viên";
              								arr[1]="Trưởng Bộ Môn";
              								arr[2]="Trưởng Khoa";
              								arr[3]="Phòng TCCB";
              								arr[4]="Hiệu Trưởng";
              							}
                  					%>                					                 					
                  					<option value="<%=arr[0]%>"><%=arr[0]%></option>
                 					<option value="<%=arr[1]%>"><%=arr[1]%></option>
                  					<option value="<%=arr[2]%>"><%=arr[2]%></option>
                  					<option value="<%=arr[3]%>"><%=arr[3]%></option>
                  					<option value="<%=arr[4]%>"><%=arr[4]%></option>
                				</select>
              				</td>
            			</tr>
            			<tr>
              				<td><label for="hoten">Họ tên</label></td>
              				<td><input type="text" id="hoten" name="hoten" class="form " value="<%= x.getHoten()%>"></td>
            			</tr>
            			<tr>
              				<td><label for="gioitinh">Giới tính</label></td>
              				<td>
              					<select id="chon" name="gioitinh">
                  					<option selected="true" value="<%= x.getGioitinh()%>"><%= x.getGioitinh()%></option>
                  					<%
                  						String gioitinh="Nam";
                  						if(x.getGioitinh().equals("Nam"))
                  							gioitinh="Nữ";              							              							
                  					%>
                  					<option value="<%=gioitinh %>"><%=gioitinh %></option>                					
                				</select>              				
              				</td>
            			</tr>
            			<tr>
              				<td><label for="ngaysinh">Ngày sinh</label></td>
             
              				<td><input type="date" id="ngaysinh" name="ngaysinh" class="form " value="<%=x.getNgaysinh()%>" ></td>
            			</tr>
             			<tr>	
              				<td><label >Nơi sinh</label></td>
              				<td><input type="text" id="noisinh"  name="noisinh" class="form " value="<%= x.getNoisinh()%>"></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Dân tộc</label></td>
             	 			<td><input type="text" id="dantoc" name="dantoc" class="form " value="<%= x.getDantoc()%>"></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Số CMND</label></td>
              				<td><input type="text" id="socmnd" name="socmnd" class="form " value="<%= x.getSocmnd()%>"></td>
            			</tr>
             			<tr>
              				<td><label for="hoten">Tôn giáo</label></td>
              				<td><input type="text" id="tongiao" name="tongiao" class="form " value="<%= x.getTongiao()%>"></td>
            			</tr>
            			<tr>
            			<tr>
              				<td><label for="diachi">Địa chỉ</label></td>
              				<td><input type="text" id="diachi" name="diachi" class="form " value="<%= x.getDiachi()%>"></td>
            			</tr>
            			<tr>
              				<td><label for="diachi">Số điện thoại</label></td>
              				<td><input type="text" id="sdt" name="sdt" class="form " value="<%= x.getSdt()%>"></td>
            			</tr>
            			<tr>
              				<td><label for="email">Email</label></td>
              				<td><input type="text" id="email" name="email" class="form " value="<%=x.getEmail()%>"></td>
            			</tr>
            			<tr>
              				<td><label for="email">Ghi chú</label></td>
              				<td><textarea  style="height: 80px; width: 80%; resize: none;" cols="50" id="ghichu" name="ghichu" value=""><%=x.getGhichu()%></textarea></td>
              				
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
			$('#myModal').on('hidden.bs.modal', function (e) {
				window.location="QuanLyNguoiDung_Admin.jsp";
			})
			
		</script>
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
</body>
</html>