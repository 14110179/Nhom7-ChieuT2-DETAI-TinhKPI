<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="method.models.ThongTinUser" %>
<%@ page import="method.models.LayThongTinUser" %>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/csdlwebkpi"
	user="root"
	password="Preciouspro1"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Thông Tin Cá Nhân</title>
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="Style.css">
      
        <script src="html5shiv.min.js"></script>
        <script src="respond.min.js"></script>
        <script src="jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <style type="text/css">
          #TrangChu {
            display:  block;

          }
        </style>
</head>
<body>



</table>
	
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
         <a href="<%= session.getAttribute ("chucvuuser") %>"><button  class=" btn btn-default" >Thoát</button></a>
        </div>
      </td>
    </tr>
    </table>


  <table  style="position: relative; left: 15%;" class="img-responsive">
       <tbody>
         <tr>        
       <td width="500" align="left">
       <img border="0" src="Image/user.png" width="24" height="24">
         <span style="color: lightblue" >THÔNG TIN CÁ NHÂN</span></td>
          </tr>
         
       </tbody>
  </table>


     <table cellspacing="0" cellpadding="4" border="3"  style="position: relative;left: 15%; color:#333333;width:70%;border-collapse:collapse; text-align: justify;">

     <tbody>
     <tr align="center" style="color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
         <th scope="col" style="width: 50%" ><p align="center">Bảng Thông Tin Cá Nhân</p></th>
         <th scope="col" style="width: 40%"></th>
     </tr>
     <tr>
       <td>
         
      
         <table cellspacing="0" cellpadding="4" border="0"  style="color:#333333;width:100%;border-collapse:collapse; text-align: justify;" align="center">
         <br>
           <tr>
          	<% 
       			LayThongTinUser ltt=new LayThongTinUser();
        		ThongTinUser tt= ltt.LayThongTin(session.getAttribute("taikhoan").toString(),session.getAttribute("matkhau").toString()); 
        	%>
			
    	

             <td style="width: 30%; height: auto;">
               <span>Mã số User</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>: <%= tt.getUsername().toString() %> </span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Họ tên</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getHoten().toString() %></span><br>        
             </td>
           </tr>
          
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Ngày sinh</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
            
               <span>: <%= tt.getNgaysinh().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Nơi sinh</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getNoisinh().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Giới tính</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getGioitinh().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Dân tộc</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getDantoc().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Số CMND</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getSocmnd().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Tôn giáo</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getTongiao().toString() %></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Tỉnh/Thành phố</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%=request.getAttribute("thanhpho")%></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Quận/Huyện</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%=request.getAttribute("quanhuyen")%></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Quốc gia</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%=request.getAttribute("quocgia")%></span><br>        
             </td>
           </tr>
           <tr>
             <td style="width: 30%; height: auto;">
               <span>Địa chỉ</span><br>       
             </td>
             <td style="width: 70%; height: auto;">
               <span>:  <%= tt.getDiachi().toString() %></span><br>        
             </td>
           </tr>
         </table>
      </td>
      
        <td>
        <table style="width: 100%;height: 100%;">
          
          <tr>
            <td  colspan="3" align="center" style="position: relative;top: 0%;">
                <img align="absmiddle" style="border-color:Navy;border-width:3px;border-style:Dashed;height:128px;width:93px;">
            </td>
          </tr>
          <tr>
          <td>
            <table cellspacing="0" cellpadding="4" border="2"  style="color:#333333;width:100%;border-collapse:collapse; text-align: justify;" align="center">
            
            <tr align="center" style="color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
              <th scope="col" style="width: 100%" ><p align="center">Thông Tin Liên Lạc</p></th>
              
            </tr>
              
            </table>
            <tr style="width: 50%;">
            <table style="width: 100%;height: 100%;">
              <tr>
                <td style="width: 50%;">
                  <span>Điện thoại</span>
                </td>
                <td>
                  <span>: <%= tt.getSdt().toString() %></span>
                </td>
              </tr>
               <tr>
                <td style="width: 50%;">
                  <span>Di động</span>
                </td>
                <td>
                  <span>: <%= tt.getSdt().toString() %></span>
                </td>
              </tr>
               <tr>
                <td style="width: 50%;">
                  <span>Email</span>
                </td>
                <td>
                  <span>: <%= tt.getEmail().toString() %></span>
                </td>
              </tr>
               <tr>
                <td style="width: 50%;">
                  <span>Địa chỉ</span>
                </td>
                <td>
                  <span>: <%= tt.getDiachi().toString() %></span>
                </td>
              </tr>
               <tr>
                <td style="width: 50%;">
                  <span>Ghi chú</span>
                </td>
                <td>
                  <span>: <%= tt.getGhichu().toString() %></span>
                </td>
              </tr>
            </table>
              
            </tr>
   
        </table>
        
        </td>
        

      
     </tr>
     </tbody>
     </table>
      


    </table>
    </div>

</body>
</html>