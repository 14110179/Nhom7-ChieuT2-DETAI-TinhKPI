<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="method.models.LayDanhSachBieuMau" %>
<%@ page import="method.models.TieuChiMethod" %>
<%@ page import="method.models.NhomTieuChiMethod" %>
<%@ page import="method.models.DangKyBieuMauMethod" %>
<%@ page import="thongtin.DanhSachBieuMau" %>
<%@page import="java.util.ArrayList"%>
<%@page import="thongtin.DSNhomTC"%>
<%@page import="thongtin.DSTieuChi"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng Ký Mục Tiêu Cá Nhân Trưởng Bộ Môn</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
     <style type="text/css">
        #DangKy {
          display:  block;
        }
      </style>
     <script>
        function onDangKy() {
          document.getElementById('DangKy').style.display = 'block';
          document.getElementById('ChamDiem').style.display = 'none';          
        }

        function onChamDiem() {
          document.getElementById('DangKy').style.display = 'none';         
          document.getElementById('ChamDiem').style.display = 'block';
        }       
      </script>
        <script>
        	<% if(request.getAttribute("message")=="ThatBai"){%>
        		alert("Chưa đăng ký");
        	<% }if(request.getAttribute("message")=="ThanhCong"){%>
        		alert("Đăng ký thành công");
        	<%}%>
        </script>
        
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
            		<a href="TrangChuTruongBoMon.jsp"><button class="btn btn-default" >Thoát</button></a>
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
         				<span style="color: lightblue" >ĐĂNG KÝ MỤC TIÊU CÁ NHÂN </span>
         			</td>
          		</tr>      
       		</tbody>
    	</table>
    	
    		<ul class="pager" style=" align:center;">
    			<li class="previous"><a onclick="onDangKy()" href="#DangKy" data-toggle="tab">&larr; Đăng ký</a></li>
    			<li class="next"><a onclick="onChamDiem()" href="#ChamDiem" data-toggle="tab">Chấm điểm &rarr;</a></li>
    		</ul> 	
    	<br>
    	<!--  -->
    <div class="tab-content">
    <div class="tab-pane" id="DangKy" >   
    <form action="DangKyBieuMau" method="post">
    	<br>		   
    <table id="#" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style=" width:900px;word-wrap: break-word;  no-repeat; color:#333333; text-align: justify;" align="center">  		
   		   	<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col" style="width:670px;"><p align="center">Phiếu Đăng Ký</p></th>  
       			<th colspan="" scope="col" style="width:50px;"><p align="center">Đăng Ký</p></th>
       			<th colspan="" scope="col" style="width:50px;"><p align="center">Điểm Tối Đa</p></th> 	 		 			     			
       		</tr> 
       	</thead>     	
       	<tbody>	
      		<%
      			int i=0;   	
      			NhomTieuChiMethod mt=new NhomTieuChiMethod();
      			ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
				dsntc=mt.getAllNhomTieuChi("BM2016-2017");
       			if(dsntc!=null)
    			for(DSNhomTC item : dsntc)
    			{  		
    				i++;
    				int j=0;    				
    				TieuChiMethod tcmt=new TieuChiMethod();
    				ArrayList<DSTieuChi> dstieuchi=tcmt.getAllTieuChi(item.getMaNTC());
    		%> 
    			<tr>
    				<td style="background-color: lightblue;"><strong><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i%>.<%=item.getNoiDung()%></div></strong></td>   					   				
    				<td style=" align:center;"></td>
    				<td style=" align:center;"></td>
    			</tr>
       		<%	
       				for(DSTieuChi tc : dstieuchi)
       				{
       					j++;       					
       					%>
       					<tr>
       						<td><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i%>.<%=j%><br><%=tc.getNoiDung()%></div></td>
       						<%
       							DangKyBieuMauMethod dkbmmt=new DangKyBieuMauMethod();
       							if(dkbmmt.CheckDK(session.getAttribute("taikhoan").toString(), tc.getMaTieuChi())==true) 
       							{
       						%>
       								<td>
       								<label class="btn btn-success active">
       								<%-- <input type="checkbox" disabled="disabled" name="checkbox[]" autocomplete="off" value="<%=tc.getMaTieuChi()%>"> --%>
       								<span class="glyphicon glyphicon-ok"></span></label>
       								</td>
       						<%
       							}
       							else
       							{
       						%>
       								<td><input type="checkbox" name="checkbox[]" value="<%=tc.getMaTieuChi()%>"></input></td>
       						<%	} %>
       						<td><%=tc.getDiemToiDa()%></td>
       					</tr>
       		<%
       				}
    			} 
    			
    		%>
     		      		      		     		
    	</tbody>
    	<tfoot>
      		<tr align="center">
      			<td colspan="3">
      				<button type="submit" id="taontc" class="btn btn-primary" >Đăng Ký</button>
      			</td>
      		</tr>
    	</tfoot>
    </table>
    </form>
    </div>
    <!--  -->
    <div class="tab-pane" id="ChamDiem" > 
    	<table id="#" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style=" width:900px;word-wrap: break-word;  no-repeat; color:#333333; text-align: justify;" align="center">  		
   		   	<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col"><p align="center">Phiếu Đăng Ký</p></th>  
       			<th colspan="2" scope="col"><p align="center">Bảng Điểm</p></th>  		 			     			
       		</tr> 
       	</thead>     	
       	<tbody>	
       		<tr style="height: auto;" colspan="4">     	
       			<td  height="10px">	
       			 	<table cellspacing="0" cellpadding="4" border="0"  class="table">
       			 		<tr align="center" style="height:auto;">
       			 			<td> A : Giảng Viên</td>
       			 			
       			 			<td> B : Trưởng khoa</td>        			 			
       			 		</tr>
       			 	</table>     
       			 </td>
       			 <td>A</td>
       			 <td>B</td>  
       			    			   			 	
      		</tr>  
      		<%
      			int i1=0;   	
      			NhomTieuChiMethod mt1=new NhomTieuChiMethod();
      			ArrayList<DSNhomTC> dsntc1=new ArrayList<DSNhomTC>();
      			dsntc1=mt.getAllNhomTieuChi("BM2016-2017");
       			if(dsntc!=null)
    			for(DSNhomTC item : dsntc1)
    			{  		
    				i1++;
    				int j1=0;    				
    				TieuChiMethod tcmt1=new TieuChiMethod();
    				ArrayList<DSTieuChi> dstieuchi1=tcmt1.getAllTieuChi2(item.getMaNTC(),"BM2016-2017",session.getAttribute("taikhoan").toString());
    		%> 
    			<tr>
    				<td style="background-color: lightblue;"><strong><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i1%>.<%=item.getNoiDung()%></div></strong></td>   					   				
    				<td style=" align:center;"></td>
    				<td style=" align:center;"></td>
    				
    			</tr>
       		<%	
       				for(DSTieuChi tc : dstieuchi1)
       				{
       					j1++;       					
       					%>
       					<tr>
       						<td><div style="word-wrap: break-word;text-align: justify; width:655px;"><%=i1%>.<%=j1%><br><%=tc.getNoiDung()%><br></div></td>       				      						
       						<td>
       							<select>
        							<option selected="selected" value="0" >0</option>
        							<option  value="1">1</option>
        							<option value="2">2</option>
        							<option value="3">3</option>
        							<option value="4">4</option>
        							<option value="5">5</option>
        							<option value="6">6</option>
        							<option value="7">7</option>
        							<option value="8">8</option>
        							<option value="9">9</option>
        							<option value="10">10</option>
       							</select>
       						</td>      						
       						<td>
       							<select disabled="disabled">
        							<option selected="selected" value="0" >0</option>
        							<option  value="1">1</option>
        							<option value="2">2</option>
        							<option value="3">3</option>
        							<option value="4">4</option>
        							<option value="5">5</option>
        							<option value="6">6</option>
        							<option value="7">7</option>
        							<option value="8">8</option>
        							<option value="9">9</option>
        							<option value="10">10</option>
       							</select>
       						</td>      	    					
       						
       					</tr>
       		<%
       				}
    			} 
    			
    		%>
     		      		      		     		
    	</tbody>
    	<tfoot>
      		<tr align="center">
      			<td colspan="3">
      				<button type="submit" id="taontc" class="btn btn-primary" >Xác Nhận</button>
      			</td>
      		</tr>
    	</tfoot>
    </table>
    </div>
    </div>  
    </div>
    </div>
    <div class="col-lg-2"></div>
    </div>    
	</div>
</body>
</html>