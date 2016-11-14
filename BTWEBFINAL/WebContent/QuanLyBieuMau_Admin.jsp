<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="method.models.LayDanhSachBieuMau" %>
<%@ page import="thongtin.DanhSachBieuMau" %>
<%@page import="java.util.ArrayList" %>
<%@page import="thongtin.DSNhomTC" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Quản Lý Biểu Mẫu</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="Style.css">
          
		<style type="text/css">
        #TaoBM{
          display:  block;
        }
      </style>
     <script>
        function onTaoBM() {
          document.getElementById('TaoBM').style.display = 'block';
          document.getElementById('ChinhSuaBM').style.display = 'none';          
        }

        function onChinhSuaBM() {
          document.getElementById('TaoBM').style.display = 'none';         
          document.getElementById('ChinhSuaBM').style.display = 'block';
        }       
      </script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
</head>
<body>
	<script>
        $(document).ready(function(){
        	<%
				if(request.getAttribute("loadtrang")=="ChinhSuaBM")
				{
			%>
				document.getElementById('ChinhSuaBM').style.display = 'block';
				document.getElementById('TaoBM').style.display = 'none';
			<%	}%>
        	<%
    			if(request.getAttribute("taobieumau")=="thanhcong")
    			{
    		%>
    				alert("Tạo thành công");
    		<%	}
        		if(request.getAttribute("taobieumau")=="thatbai")
        		{
        	%>
        			alert("Tạo thất bại!!!");
        	<%	
        		}
        		if(request.getAttribute("suabieumau")=="thatbai")
        		{
        	%>
        			alert("Chỉnh sửa thất bại!!!");
        	<%
        		}
        		if(request.getAttribute("suabieumau")=="thanhcong")
        		{       			       		
        	%>
        			alert("Chỉnh sửa thành công");
        	<%
        		}
        		if(request.getAttribute("xoabieumau")=="thanhcong")
        		{       			       		
        	%>
        			alert("Xóa thành công");
        	<%
        		}
        		if(request.getAttribute("xoabieumau")=="thatbai")
        		{       			       		
        	%>
        			alert("Xóa thất bại!!!");
        	<%
        		}
        	%>
        	
		});
     </script>
	 <div class="container" >
	 
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
    <div class="container" style="background-repeat: no-repeat;">
    <div class="row">
    <div class="col-lg-2"></div>
    <div class="col-lg-8"> 
		<ul class="pager" style=" align:center;">
    			<li class="previous"><a onclick="onTaoBM()" href="#TaoBM" data-toggle="tab">&larr;Tạo biểu mẫu</a></li>
    			<li class="next"><a onclick="onChinhSuaBM()" href="#ChinhSuaBM" data-toggle="tab">Chỉnh sửa biểu mẫu&rarr;</a></li>
    	</ul> 
    <div class="tab-content">
    <!--Tạo biểu mẫu-->
    <div class="tab-pane" id="TaoBM" > 
    	<form action="TaoBieuMau" method="post">
    	<div id="11" class="form-group " align="left">				
     		
            <label >Mã biểu mẫu</label>
            <input type="text" style=" width:100%;" readonly="readonly" id="mabieumau" name="mabieumau" class="form " value="BM2016-2017">
            <br>			
            <label for="" ><span class="" ></span><span id="" ></span>Tên biểu mẫu</label>
            <input style=" width:100%;" type="Text" class="form-control" id="tenbieumau" name="tenbieumau" value="">
            <label for="" ><span class="" ></span><span id="" ></span>Năm học</label>
            <select name="namhoc" id="namhoc" onchange="Show();">
            	<option selected="true" value="2016-2017">2016-2017</option>
            	<option value="2017-2018">2017-2018</option>
            	<option value="2018-2019">2018-2019</option>
            	<option value="2019-2020">2019-2020</option>
            	<option value="2020-2021">2020-2021</option>
            	<option value="2021-2022">2021-2022</option>
            </select>
    <script type="text/javascript" >
    	function Show(){
            var cmb = document.getElementById("namhoc");        
            document.getElementById("mabieumau").value ="BM"+cmb.options[cmb.selectedIndex].text;          
        }
    </script>
            <br>
            <button type="submit" class="btn btn-default center-block"  name="btn" value="Tao">Tạo biểu mẫu</button>
            <button type="submit" class="btn btn-default center-block"  name="btn" value="Sua">Chỉnh sửa biểu mẫu</button>
            <button type="submit" class="btn btn-default center-block"  name="btn" value="Xoa">Xóa biểu mẫu</button>
        </div> 
        </form>
   
    </div>   
    <!--Chỉnh sửa biểu mẫu-->
    <div class="tab-pane" id="ChinhSuaBM" >   	
    <form action="NhomTieuChi" method="post">
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
    
    
      <table id="" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style="no-repeat; color:#333333; text-align: justify;" align="center">
   		
   		<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th colspan="3" scope="col"><p align="center">Phiếu Đăng Ký</p></th> 
       			<!-- <th scope="col" style="width:50px;"><p align="center">Xóa</p></th> 
       			<th scope="col" style="width:160px; align:center;"><p align="center">Thêm tiêu chí</p></th>        -->			
       		</tr>    
       	</thead>
       	<tbody>		
       		<%
       			if(request.getAttribute("danhsachntc")!=null)
    			for(DSNhomTC item : (ArrayList<DSNhomTC>)request.getAttribute("danhsachntc"))
    			{  		
    				String DeleteURL="DeleteNhomTieuChi?mantc="+item.getMaNTC()+"&mabieumau="+item.getMaBieuMau();
    		%> 
    			<tr style="width: 890px;">
    				<td style="background-color: lightblue; "><%=item.getNoiDung()%></td>   					   				
    				<td style=" align:center;"><a href="<%=DeleteURL%>">Xóa</a></td>
    				<td style=" align:center;"><a href="#">Thêm tiêu chí</a></td>
    			</tr>
       		<%	} %>	
       				
      	</tbody>	
      	<tfoot>
      		<tr align="center">
      			<td colspan="3">
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
	
	
	
    <!--  -->
   
    
	</div>
	</div>
	<div class="col-lg-2"></div>
	</div>
	</div>
	</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>