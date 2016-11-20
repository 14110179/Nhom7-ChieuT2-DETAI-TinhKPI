<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chỉnh Sửa Tiêu Chí</title>
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
 String update="UpdateTieuChi?&matieuchi="+request.getParameter("matieuchi");
%>
        <form action="<%=update%>" method="post">
        <div class="modal fade" id="myModal" role="dialog">
  			<div class="modal-dialog" >
    			<div class="modal-content">
      				<div class="modal-header">
        				 <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        				<h4 class="modal-title" id="myModalLabel">Nội Dung</h4>
      				</div>
      				<div class="modal-body">        				
        			<textarea  style="height: 80px; width: 100%; resize: none;" cols="50" id="noidung" name="noidung" value=""></textarea>       				
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
				window.location="ThietKeBieuMau_Admin.jsp";
		    });
			$("#myBtn2").click(function(){
				window.location="ThietKeBieuMau_Admin.jsp";
		    });
		</script>
		<script>
			$('#myModal').on('hidden.bs.modal', function (e) {
				window.location="ThietKeBieuMau_Admin.jsp";
			})
			
		</script>
</body>
</html>