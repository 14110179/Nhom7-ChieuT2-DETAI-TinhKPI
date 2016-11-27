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
    
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
</head>
<body>
	
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
		
    
    <!--Tạo biểu mẫu-->
   
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
            <button type="button" onclick="clickc()" class="btn btn-default center-block">Thiết kế biểu mẫu</button>
       <script>
       	function clickc()
       	{
       		window.location="ThietKeBieuMau_Admin.jsp";
       	}
       </script>
        </div> 
        </form>     
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