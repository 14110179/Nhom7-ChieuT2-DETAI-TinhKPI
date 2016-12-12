<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Phân Công Việc</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="Style.css">
      
       <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
        $(document).ready(function(){
        	<%
    			if(request.getAttribute("message")=="true")
    			{
    		%>
    				alert("Thành công");
    				<%	request.setAttribute("message","a");%>
    		<%
    			}       		
    			if(request.getAttribute("message")=="false")
    			{
    		%>
    				alert("Thất bại");
    				<%	request.setAttribute("message","a");%>
    		<%}%>
		});
        </script>
		
        <style type="text/css">
          #TrangChu {
            display:  block;

          }
        </style>
</head>
<body>
		<script>
        $(document).ready(function(){
        	
        	$.post('LoadDSGiangVienKhoa',{KHOA : $(this).find(":selected").val()},function(responseText){
    			
    			$('#Comf').text("");
    			$('#Comf').prepend(responseText);
    			
    		})
        	$('#DANHSACHGIANGVIEN').change(function(){
        		
        		$.post('LoadDSGiangVienKhoa',{KHOA : $(this).find(":selected").val()},function(responseText){
        			
        			$('#Comf').text("");
        			$('#Comf').prepend(responseText);
        		})
        	})
        	
        })
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
            <a href="<%= session.getAttribute("trangload")%>"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>

      
    </table>
          
      
      <!-- hình trên -->
    
     <form action="GuiThongBao" method="post">
     <table  style="position: relative; left: 200px;">
       <tbody>
         <tr>        
       <td width="500" align="left">
       <img border="0" src="Image/congviec.png" width="24" height="24">
         <span style="color: lightblue" >PHÂN CÔNG-CÔNG VIỆC</span></td>
          </tr>
         
       </tbody>
     </table>
     <br>
     
     <div class="well well-lg" style="position: relative; left: 10%; right: 10%; width: 80%;">
     <table style="position: relative; left: 20%;">
     
      <tr >

       <td  style="position: relative;left: 1%; height: 25px; width: 80px" >Chọn khoa</td>
       <td style="position: relative;left: 1%; height: 25px; width: 115px;">
         <select id="DANHSACHGIANGVIEN" class="DANHSACHGIANGVIEN">
           <option selected="selected" value="Công Nghệ Thông Tin">Công Nghệ Thông Tin</option>
           <option value="Cơ Khí Chế Tạo Máy">Cơ Khí Chế Tạo Máy</option>
           <option value="Cơ Khí Động Lực">Cơ Khí Động Lực</option>
           <option value="Đào tạo chất lượng cao">Đào tạo chất lượng cao</option>
           <option value="Điện - Điện tử">Điện - Điện tử</option>
           <option value="In - Truyền thông">In - Truyền thông</option>
           <option value="Xây dựng">Xây dựng</option>
           <option value="Kinh tế">Kinh tế</option>
           <option value="Viện Sư phạm Kỹ thuật">Viện Sư phạm Kỹ thuật</option>
           <option value="Lý luận Chính trị">Lý luận Chính trị</option>
           <option value="Ngoại ngữ">Ngoại ngữ</option>
           <option value="Công nghệ may và Thời trang">Công nghệ may và thời trang</option>
           <option value="Công nghệ Hóa học và Thực phẩm">Công nghệ Hóa học và Thực phẩm</option>
         </select>
        </td>
        <td style="position: relative;left: 10%; height: 25px; width: 110px " >Chọn giảng viên</td>
        <td style="position: relative;left: 10%;">
          <select id="Comf" class="Comf" name="Comf">
          
           
         </select>
        </td>
        </tr>
     
     </table>
     
     <br>
     <br>
    
	
     <table cellspacing="0" cellpadding="4" border="0"  style="color:#333333;width:55%;height: 200px; border-collapse:collapse; text-align: justify;" align="center">
     <tbody>
     <tr><td> <span > Tiêu đề</span></td></tr>
     <tr>
     
       
        <td>
         
            <textarea style="height: 30px; width: 600px; resize: none;" cols="50" name="tieude"></textarea>
       
        </td>
       </tr>
       <tr><td> <span > Nội dung</span></td></tr>
       <tr>
         
        <td>
         
            <textarea style="height: 150px; width: 600px; resize: none;" cols="50" name="noidung"></textarea>
       
        </td>
       </tr>
       <tr>
         <td height="50">   
          	<input class="btn btn-primary" style="width: 100px; height:35px;"type="submit"  value="Gửi"/>
          
          
        
        	<a href="#"><input class="btn btn-primary" style="width: 100px; height:35px;" type="button"  value="Hủy bỏ"/></a>
        </td>
       </tr>
     </tbody>
     
     </table>
     </div>
     <table>  
       <tr>
        <td height="50"></td>
      </tr>
     </table>
     </form>
     </div>
     
   <!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script> -->
</body>
</html>