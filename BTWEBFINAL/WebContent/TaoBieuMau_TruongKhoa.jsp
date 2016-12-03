<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="method.models.LayDanhSachBieuMau" %>
<%@ page import="method.models.TieuChiMethod" %>
<%@ page import="thongtin.DanhSachBieuMau" %>
<%@page import="java.util.ArrayList" %>
<%@page import="thongtin.DSNhomTC" %>
<%@page import="thongtin.DSTieuChi" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tạo Biểu Mẫu Trưởng Khoa</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="Style.css">        		   
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
</head>
<body>
<script>
	window.onload=function()
	{
		
	}
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
            		<a href="TrangChuTruongKhoa.jsp"><button class="btn btn-default" >Thoát</button></a>
          		</div>
        	</td>
      	</tr>     
    </table>
    <div class="container" style="background-repeat: no-repeat;">
    <div class="row">
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
    
    <table  style="position: relative;">
       		<tbody>
         		<tr>        
       				<td width="500" align="left">
       					<img border="0" src="Image/muctieu.png" width="24" height="24">
         				<span style="color: lightblue" >TẠO BIỂU MẪU</span>
         			</td>
          		</tr>      
       		</tbody>
    	</table>
    <form action="NhomTieuChi" method="post">
    	<br>
    <%
    	LayDanhSachBieuMau t=new LayDanhSachBieuMau();
    	ArrayList<DanhSachBieuMau> listBM=t.getAllBieuMau();
    %>
  
    <select id="mabieumau" name="mabieumau">
    
    
    <%
    	for(DanhSachBieuMau bm : listBM)
    	{  		
    %>
    	<option id="bieumau" value="<%=bm.getMaBieuMau() %>"><%=bm.getMaBieuMau() %></option>
    <%	} %>
    </select>
    <button type="submit" id="" class="btn btn-primary" name="btn" value="refresh" ><span class="glyphicon glyphicon-refresh"></span></button> 		
    
    <table id="#" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style=" width:900px;word-wrap: break-word;  no-repeat; color:#333333; text-align: justify;" align="center">
   		
   		   	<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col" style="width:670px;"><p align="center">Phiếu Đăng Ký</p></th>  
       			<th colspan="" scope="col" style="width:50px;"><p align="center">Xóa</p></th>  	
       			<th colspan="" scope="col" style="width:80px;"><p align="center">Chỉnh Sửa</p></th>  	
       			<th colspan="" scope="col" style="width:100px;"><p align="center">Thêm tiêu chí</p></th>  		 			     			
       		</tr> 
       	</thead>     	
       	<tbody>	
      		<%
      			int i=0;   			
       			if(request.getAttribute("danhsachntc")!=null)
    			for(DSNhomTC item : (ArrayList<DSNhomTC>)request.getAttribute("danhsachntc"))
    			{  		
    				i++;
    				int j=0;
    				String DeleteURL="DeleteNhomTieuChi?mantc="+item.getMaNTC()+"&mabieumau="+item.getMaBieuMau();
    				String UpdateURL="ChinhSuaNhomTieuChi.jsp?mantc="+item.getMaNTC()+"&mabieumau="+item.getMaBieuMau();
    				String InsertURL="ThemTieuChi.jsp?mantc="+item.getMaNTC()+"&mabieumau="+item.getMaBieuMau();
    				TieuChiMethod tcmt=new TieuChiMethod();
    				ArrayList<DSTieuChi> dstieuchi=tcmt.getAllTieuChi(item.getMaNTC());
    		%> 
    			<tr>
    				<td style="background-color: lightblue;"><strong><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i%>.<%=item.getNoiDung()%></div></strong></td>   					   				
    				<td style=" align:center;"><a href="<%=DeleteURL%>">Xóa</a></td>
    				<td style=" align:center;"><a href="<%=UpdateURL%>">Sửa</a></td>
    				<td style=" align:center;"><a href="<%=InsertURL%>">Thêm</a></td>
    			</tr>
       		<%	
       				for(DSTieuChi tc : dstieuchi)
       				{
       					j++;
       					String DeleteTCURL="DeleteTieuChi?matieuchi="+tc.getMaTieuChi();
       					String UpdateTCURL="ChinhSuaTieuChi.jsp?matieuchi="+tc.getMaTieuChi();
       					%>
       					<tr>
       						<td><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i%>.<%=j%><br><%=tc.getNoiDung()%></div></td>
       						<td><a href="<%=DeleteTCURL%>">Xóa</a></td>
       						<td><a href="<%=UpdateTCURL%>">Sửa</a></td>
       						<td></td>
       					</tr>
       		<%
       				}
    			} 
    			
    		%>
     		      		      		     		
    	</tbody>
    	<tfoot>
      		<tr align="center">
      			<td colspan="4" >
      				<button type="button" id="taontc" class="btn btn-primary" >Tạo nhóm tiêu chí</button>
      			</td>
      		</tr>
    	</tfoot>
    </table>
    <script>
			$(document).ready(function(){
    		$("#taontc").click(function(){
        	$("#nhomtieuchi").toggle();
    			});
			});
		</script>
    	<div class="container" id="nhomtieuchi" style="display:none;">
    		<h3>Nội dung</h3>
    		<textarea  style="height: 80px; width: 100%; resize: none;" cols="50" id="noidung" name="noidung" value=""></textarea>
			<button type="submit" id="" class="btn btn-primary" name="btn" value="themtieuchi">Xác nhận</button>
		</div>
    </form>
    </div>
    <div class="col-lg-2"></div>
    </div>
    </div>
    </div>
</body>
</html>