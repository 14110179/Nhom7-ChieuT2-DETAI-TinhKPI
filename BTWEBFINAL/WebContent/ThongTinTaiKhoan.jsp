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
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TEST</title>
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
        		ThongTinUser x= ltt.LayThongTin2(request.getParameter("taikhoan")); 
        	%>
        	<form action="UpdateThongTinTaiKhoan">
        	<div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 align="center" class="modal-title">Thông tin người dùng</h4>
              </div>
              <div class="modal-body">
           
			<table class="table">
          
            <tr>
              <td><label for="user">Tên tài khoản</label></td>
              <td><input type="text" name="tentaikhoan" class="form " value="<%= x.getUsername()%>"></td>
            </tr>
            <tr>
              <td><label for="password">Mật khẩu</label></td>
              <td><input type="text" name="matkhau" class="form" value="<%= x.getPass()%>"></td>
            </tr>
            <tr>
              <td><label for="chon">Phân quyền</label></td>
              <td>
                <select id="chon">
                  <option selected="true" value="<%= x.getChucvu()%>"><%= x.getChucvu()%></option>
                  <option value="Trưởng bộ môn">Trưởng bộ môn</option>
                  <option value="Trưởng khoa">Trưởng khoa</option>
                  <option value="Phòng TCCB">Phòng TCCB</option>
                  <option value="Hiệu trưởng">Hiệu trưởng</option>
                  <option value="Admin">Admin</option>
                </select>
              </td>
            </tr>
            <tr>
              <td><label for="hoten">Họ tên</label></td>
              <td><input type="text" name="hoten" class="form " value="<%= x.getHoten()%>"></td>
            </tr>
            <tr>
              <td><label for="hoten">Giới tính</label></td>
              <td><input type="text" name="gioitinh" class="form " value="<%= x.getGioitinh()%>"></td>
            </tr>
            <tr>
              <td><label for="ngaysinh">Ngày sinh</label></td>
              <td><input type="date" name="ngaysinh" class="form " value="<%=x.getNgaysinh()%>" ></td>
            </tr>
             <tr>	
              <td><label >Nơi sinh</label></td>
              <td><input type="text" name="noisinh" class="form " value="<%= x.getNoisinh()%>"></td>
            </tr>
             <tr>
              <td><label for="hoten">Dân tộc</label></td>
              <td><input type="text" name="dantoc" class="form " value="<%= x.getDantoc()%>"></td>
            </tr>
             <tr>
              <td><label for="hoten">Số CMND</label></td>
              <td><input type="text" name="socmnd" class="form " value="<%= x.getSocmnd()%>"></td>
            </tr>
             <tr>
              <td><label for="hoten">Tôn giáo</label></td>
              <td><input type="text" name="tongiao" class="form " value="<%= x.getTongiao()%>"></td>
            </tr>
            <tr>
            <tr>
              <td><label for="diachi">Địa chỉ</label></td>
              <td><input type="text" name="diachi" class="form " value="<%= x.getDiachi()%>"></td>
            </tr>
            <tr>
              <td><label for="diachi">Số điện thoại</label></td>
              <td><input type="text" name="sdt" class="form " value="<%= x.getSdt()%>"></td>
            </tr>
            <tr>
              <td><label for="email">Email</label></td>
              <td><input type="email" name="email" class="form " value="<%= x.getEmail()%>"></td>
            </tr>
          </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Xác nhận</button>
              </div>
              </form>
</body>
</html>