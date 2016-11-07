<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="method.models.TaiKhoan" %>
<%@page import="method.models.ThongTinTaiKhoan" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TEST</title>
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
		ThongTinTaiKhoan tttk=new ThongTinTaiKhoan();
		ArrayList<TaiKhoan> listTK=tttk.getAllAccout(); 
	%>
	<table border="1" align="center">
		<tr>
			<th>Ten Tai Khoan</th>
			<th>Mat Khau</th>
			<th>Chuc Vu</th>
		</tr>
		<%
		 for(TaiKhoan tk : listTK)
		 {
		%>
		<tr>
			<td><%=tk.getTenTaiKhoan() %></td>
			<td><%=tk.getMatKhau() %></td>
			<td><%=tk.getChucVu() %></td>
		</tr>
		<%
		 }
		%>
	</table>
</body>
</html>