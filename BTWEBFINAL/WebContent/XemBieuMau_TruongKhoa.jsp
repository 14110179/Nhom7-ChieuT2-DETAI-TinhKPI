<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="method.models.LayDanhSachBieuMau" %>
<%@ page import="method.models.TieuChiMethod" %>
<%@ page import="method.models.NhomTieuChiMethod" %>
<%@ page import="method.models.DangKyBieuMauMethod" %>
<%@ page import="method.models.LoadDSGiangVien" %>
<%@ page import="thongtin.DanhSachBieuMau" %>
<%@ page import="thongtin.DanhSachGiangVien" %>
<%@page import="java.util.ArrayList"%>
<%@page import="thongtin.DSNhomTC"%>
<%@page import="thongtin.DSTieuChi"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Xem Biểu Mẫu Trưởng Khoa</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="Style.css">
      
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <style type="text/css">
          #TrangChu {
            display:  block;

          }
        </style>
        <!-- <c:import url="/LoadBieuMauGV"></c:import> -->
          <script>
        $(document).ready(function(){
        	$.get('TruongKhoaXemBieuMau',{MAGV : $(this).find(":selected").val()},function(responseText){
    			
    			$('#Comf').text("");
    			$('#Comf').prepend(responseText);
    		})
        	$('#danhsachgv').change(function(){
        		
        		$.get('TruongKhoaXemBieuMau',{MAGV : $(this).find(":selected").val()},function(responseText){
        			
        			$('#Comf').text("");
        			$('#Comf').prepend(responseText);
        		})
        	})
        })
        </script>
</head>
<body>
<%	session.setAttribute("trangload","XemBieuMau_TruongKhoa.jsp"); %>
<div class="container" style="background-repeat: no-repeat;">
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
            <a href="TrangChuTruongKhoa.jsp"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>

      
    </table>
  <div class="row">
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
    
          
      
      <!-- hình trên -->
     <table  >
       <tbody>
         <tr>        
       <td width="500" align="left">
       <img border="0" src="Image/find.png" width="24" height="24">
         <span style="color: lightblue" >XEM BIỂU MẪU </span></td>
          </tr>      
       </tbody>
     </table>
     <br>
     <% 
     	ArrayList<DanhSachGiangVien> dsgv=new ArrayList<DanhSachGiangVien>();
     	LoadDSGiangVien mt=new LoadDSGiangVien();
     	dsgv=mt.getAllGVvsTBM();
     %>
     <form action="TruongKhoaChamDiem" method="post">
     <select id="danhsachgv" name="danhsachgv">
     	<%
     		for(DanhSachGiangVien item : dsgv)
     		{
     	%>
     		<option value="<%=item.getMaGV()%>"><%= item.getTenGV()%> - <%= item.getMaGV()%></option>
     	<%} %>
     </select>

    
      <br>
        
     <!-- Biểu mẫu -->
		<table id="#" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style=" width:900px;word-wrap: break-word;  no-repeat; color:#333333; text-align: justify;" align="center">  		
   		   	<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col"><p align="center">Phiếu Đăng Ký</p></th>  
       			<th colspan="3" scope="col"><p align="center">Bảng Điểm</p></th>  		 			     			
       		</tr> 
       	</thead>     	
       	<tbody id = "Comf">	    		
    	</tbody>
    	<tfoot>
      		<tr align="center">
      			<td colspan="4">
      				<button type="submit" name="btn" value="truongbomon" id="taontc" class="btn btn-primary" >Xác Nhận</button>
      			</td> 
      		</tr>
    	</tfoot>
    </table>
     
     <table>  
       <tr>
        <td height="50"></td>
      </tr>
     </table>
     </form>
     </div>
     </div>
     <div class="col-lg-2"></div>
  </div>

</body>
</html>