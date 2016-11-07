<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
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
		<ul class="pager" style=" align:center;">
    			<li class="previous"><a onclick="onTaoBM()" href="#TaoBM" data-toggle="tab">&larr;Tạo biểu mẫu</a></li>
    			<li class="next"><a onclick="onChinhSuaBM()" href="#ChinhSuaBM" data-toggle="tab">Chỉnh sửa biểu mẫu&rarr;</a></li>
    	</ul> 
    <div class="tab-content">
    <!--Tạo biểu mẫu-->
    <div class="tab-pane" id="TaoBM" > 
    <div class="container" style="background-repeat: no-repeat;">
	<div class="row">
    <div class="col-lg-4"></div>
    <div class="col-lg-4">
    	<div id="11" class="form-group " align="left">				
     
            <label for="" ><span class="" ></span><span id="" ></span>Tên biểu mẫu</label>
            <input style=" width:100%;" type="Text" class="form-control" id="" name="">
            <label for="" ><span class="" ></span><span id="" ></span>Năm học</label>
            <input style=" width:100%;" type="Text" class="form-control" id="" name="">
            <br>
            <input id="" class="btn center-block"  style=" background-color: lightblue;" type="submit" value="Tạo biểu mẫu" >
        </div> 
    </div>
    <div class="col-lg-4"></div>
    </div>
    </div>
    </div>
    <!--Chỉnh sửa biểu mẫu-->
    <div class="tab-pane" id="ChinhSuaBM" >   
	
	<div class="container" style="background-repeat: no-repeat;">
	<div class="row">
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
      <table id="formdki" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style="no-repeat; color:#333333; text-align: justify;" align="center">
   		<tbody>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th scope="col"><p align="center">Phiếu Đăng Ký</p></th> 
       			
       		</tr>       		
      		
      		<tr align="center">
      			<td>
      				<button type="button" class="btn btn-primary" >Tạo nhóm tiêu chí</button>
      			</td>
      		</tr>
    	</tbody>
    	</table>
	</div>
	<div class="col-lg-2"></div>
    <!--  -->
    </div>
    </div>
	</div>
	</div>
	</div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>