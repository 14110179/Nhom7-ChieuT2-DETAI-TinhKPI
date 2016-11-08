<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng Ký Mục Tiêu Cá Nhân Giảng Viên</title>
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
            		<a href="TrangChuGiangVien.jsp"><button class="btn btn-default" >Thoát</button></a>
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
    	<span style="color:red;">Thời gian còn lại: 30 ngày</span>
    	<div class="tab-content">
    	<div class="tab-pane" id="DangKy" >   	  	
    	<table id="formdki" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style="no-repeat; color:#333333; text-align: justify;" align="center">
   		<tbody>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th scope="col"><p align="center">Phiếu Đăng Ký (Chưa được phê duyệt)</p></th> 
       			
       		</tr>       		
      		<tr id="add1">
      			<td style="background-color: lightblue;">
      				<a href="#them1"><span style="align:right;" class="glyphicon glyphicon-plus" data-toggle="modal" data-target="#them1"></span></a>
      				Lĩnh vực kiến thức      				
      			<!--Button Thêm-->
      			<div class="modal modal-md " id="them1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      			<div class="modal-dialog">
          			<div class="modal-content">
          				<div align="center" class="modal-header">
              				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
              				<h4 class="modal-title">Bạn có muốn thêm đăng ký không?</h4>
          				</div> <br>
          				<div class="modal-body">
                			<p>Chọn mục cần đăng ký</p>                  								            								
                			<select size="5" id="muctieu1" name="" data-toggle="tooltip" data-placement="top" style="width:100%;">           		
           						<option id="check" value="Mục tiêu 1">Mục tiêu 1</option>
            					<option id="check" value="Mục tiêu 2">Mục tiêu 2</option>
            					<option id="check" value="Mục tiêu 3">Mục tiêu 3</option>
              					<option id="check" value="Mục tiêu 4">Mục tiêu 4</option>
               					<option id="check" value="Mục tiêu 5">Mục tiêu 5</option>
                				<option id="check" value="Mục tiêu 6">Mục tiêu 6</option>
                				<option id="check" value="Mục tiêu 7">Mục tiêu 7</option>
              					<option id="check" value="Mục tiêu 8">Mục tiêu 8</option>
               					<option id="check" value="Mục tiêu 9">Mục tiêu 9</option>
                				<option id="check" value="Mục tiêu 10">Mục tiêu 10</option>
         					</select> 
              			</div>
            			<button id="btnthem1" type="button" class="btn btn-primary" data-dismiss="modal" align="center" >Thêm</button>
            			<button type="button" class="btn btn-default" data-dismiss="modal" >Hủy bỏ</button>            
          			</div>  
          		</div>
      			</div>
      			<!--  -->
      			<!--Script-->
      			<script>
					$(document).ready(function(){
    				$("#btnthem1").click(function(){      		
    					var text=$("#muctieu1").find(":selected").val()    				
    					$("<tr><td>"+"<a href='#'><span id='btnremove' style='color:red;' class='glyphicon glyphicon-remove form-control-feedback'></span></a>"+text+"</td></tr>").insertAfter("#add1");
    				});
					});
				</script>
				<script>
					$(document).ready(function(){
					var d ;
					$(document).on("click","#btnremove",function(){
					d = $(this).closest("tr");					
					d.remove();
				})
				})
				</script>
      			<!--  -->     			
      			</td>      			
      		</tr>
      		<tr>
      			<td>
      				Kiến thức cơ bản.
      			</td>
      		</tr>
      		<tr>
      			<td>
      				Kiến thức về tâm Kiến thức về tâm lí học sư phạm và tâm lí học lứa tuổi.
      			</td>
      		</tr>
      		<tr id="add2">
      			<td style="background-color: lightblue;">
      				<a href="#them2"><span  class="glyphicon glyphicon-plus" data-toggle="modal" data-target="#them2"></span></a>
      				Lĩnh vực Phẩm chất chính trị, lối sống
      				
      			<!--Button Thêm-->
      			<div class="modal modal-md " id="them2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      			<div class="modal-dialog">
          			<div class="modal-content">
          				<div align="center" class="modal-header">
              				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
              				<h4 class="modal-title">Bạn có muốn thêm đăng ký không?</h4>
          				</div>
          				<div class="modal-body">
                			<p>Chọn mục cần đăng ký</p>                  								            								
                			<select size="5" id="muctieu2" name="" data-toggle="tooltip" data-placement="top" style="width:100%;">           		
           						<option id="check" value="Mục tiêu 1">Mục tiêu 1</option>
            					<option id="check" value="Mục tiêu 2">Mục tiêu 2</option>
            					<option id="check" value="Mục tiêu 3">Mục tiêu 3</option>
              					<option id="check" value="Mục tiêu 4">Mục tiêu 4</option>
               					<option id="check" value="Mục tiêu 5">Mục tiêu 5</option>
                				<option id="check" value="Mục tiêu 6">Mục tiêu 6</option>
                				<option id="check" value="Mục tiêu 7">Mục tiêu 7</option>
              					<option id="check" value="Mục tiêu 8">Mục tiêu 8</option>
               					<option id="check" value="Mục tiêu 9">Mục tiêu 9</option>
                				<option id="check" value="Mục tiêu 10">Mục tiêu 10</option>
         					</select> 
              			</div>
            			<button id="btnthem2" type="button" class="btn btn-primary" data-dismiss="modal" align="center" >Thêm</button>
            			<button type="button" class="btn btn-default" data-dismiss="modal" >Hủy bỏ</button>            
          			</div>  
          		</div>
      			</div>
      			<!--  -->
      			<!--Script-->
      			<script>
					$(document).ready(function(){
    				$("#btnthem2").click(function(){   
    					var text=$("#muctieu2").find(":selected").val()   					 				
    					$("<tr><td>"+"<a href='#'><span id='btnremove' style='color:red;' class='glyphicon glyphicon-remove form-control-feedback'></span></a>"+text+"</td></tr>").insertAfter("#add2");
    				});
					});
				</script>
				<script>
					$(document).ready(function(){
					var d ;
					$(document).on("click","#btnremove",function(){
					d = $(this).closest("tr");					
					d.remove();
				})
				})
				</script>
      			<!--  -->
      			</td>      			
      		</tr>
      		<tr>
      			<td>
      				Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.
      			</td>
      		</tr>
      		<tr>
      			<td>
      				Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.
      			</td>
      		</tr>
      		
      		<tr>
      			<td style="background-color: lightblue;">
      			Mục tiêu của khoa
      			</td>
      		</tr>
      		<tr>
      			<td>
      				Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.
      			</td>
      		</tr>
      		<tr>
      			<td>
      				Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.
      			</td>
      		</tr>
      		<tr align="center">
      			<td>
      				<button type="button" class="btn btn-primary" >Đăng Ký</button>
      			</td>
      		</tr>
    	</tbody>
    	</table>
    	
    	</div>
    	<div class="tab-pane" id="ChamDiem" >
    	<table id="formdki" cellspacing="0" cellpadding="4" border="3"  class="table table-responsive"  style="no-repeat; color:#333333; text-align: justify;" align="center">  		
   		<thead>
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col"><p align="center">Phiếu Đăng Ký (Đã phê duyệt)</p></th>  
       			<th colspan="3" scope="col"><p align="center">Bảng Điểm</p></th>  		 			     			
       		</tr> 
       	</thead>
       	<tbody>
       		<tr style="height: auto;" colspan="4">     	
       			<td  height="10px">	
       			 	<table cellspacing="0" cellpadding="4" border="0"  class="table">
       			 		<tr align="center" style="height:24px;">
       			 			<td> A : Giảng viên </td>  
       			 			<td> B : Trưởng bộ môn </td>   
       			 			<td> C : Trưởng khoa </td>   
       			 		</tr>
       			 	</table>     
       			 </td>
       			 <td>A</td>
       			 <td>B</td>
       			 <td>C</td>	
       			 	
      		</tr>      		
      		<tr >
      			<td colspan="4"  style="background-color: lightblue;">
      				
      				Lĩnh vực kiến thức      				
      	    			
      			</td>      			
      		</tr>
      		<tr colspan="4">
      			<td>
      				Kiến thức cơ bản.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      		<tr colspan="4">
      			<td>
      				Kiến thức về tâm Kiến thức về tâm lí học sư phạm và tâm lí học lứa tuổi.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      		<tr>
      			<td colspan="4"  style="background-color: lightblue;">
      				
      				Lĩnh vực Phẩm chất chính trị, lối sống
      				
      			
      	
      			</td>      			
      		</tr>
      		<tr colspan="4">
      			<td>
      				Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      		<tr colspan="4">
      			<td>
      				Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      		<tr>
      			<td colspan="4" style="background-color: lightblue;">
      			Mục tiêu của khoa
      			</td>
      		</tr>
      		<tr colspan="4">
      			<td>
      				Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      		<tr colspan="4">
      			<td>
      				Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.
      			</td>
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
					<select disabled="true">
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
      				<select disabled="true">
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
      	</tbody>
      	<tfoot>
      		<tr align="center">
      			<td colspan="4">
      				<button type="button" class="btn btn-primary" >Xác Nhận</button>
      			</td>
      		</tr>
    	</tfoot>
    	</table>
    	
    	</div>  
    	</div>
    </div>
    <div class="col-lg-2"></div>
    </div>  
   	</div>
    
	</div>
</body>
</html>