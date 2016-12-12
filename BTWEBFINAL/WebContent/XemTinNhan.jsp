<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="method.models.LoadTinNhan" %>
<%@ page import="thongtin.DSTinNhan" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Xem Tin Nhắn</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
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
            		<a href="<%= session.getAttribute("trangload")%>"><button class="btn btn-default" >Thoát</button></a>
          		</div>
        	</td>
      	</tr>     
    </table>
    
    <div class="container" style="background-repeat: no-repeat;">
    <div class="row">
    <div class="col-lg-2"></div>
    <div></div>
    <style>
     table#ccccc th, table#ccccc td{
     	
     	max-width:100px;
     	border:1px solid black;
     	word-wrap:break-word;
     	text-align: justify;
     }
    </style>
    <table class="col-lg-8 col-md-12 col col-sm-12 col-xs-12" id="ccccc" style="border:2px solid black;" >
    	<thead>	
   		   	<tr align="center" style=" color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       			<th  scope="col" style="width:5%;"><p align="center">STT</p></th>  
       			<th colspan="" scope="col" style="width:15%;"><p align="center">Người gửi</p></th>
       			<th colspan="" scope="col" style="width:55%;"><p align="center">Tiêu đề</p></th> 
       			<th colspan="" scope="col" style="width:15%;"><p align="center">Ngày gửi</p></th> 	 
       			<th colspan="" scope="col" style="width:10%;"><p align="center">Xem chi tiết</p></th> 			 			     			
       		</tr> 
       	</thead>   
    <tbody>
    <%
    	LoadTinNhan loadtn=new LoadTinNhan();
    	ArrayList<DSTinNhan> dstn=new ArrayList<DSTinNhan>();
    	int i=0;
    	dstn=loadtn.getAllTinNhan(session.getAttribute("taikhoan").toString());
    	for(DSTinNhan tc : dstn)
			{
    		String xemURL="DocTinNhan.jsp?mathongbao="+tc.getMathongbao();
    		i++;
    %>
    		<tr >
    			<td style="text-align:center;"><%=i %></td>
    			<td style="text-align:center;"><%=tc.getNguoigui() %></td>
    			<td><%=tc.getTenthongbao() %></td>
    			<td style="text-align:center;"><%=tc.getThoigian() %></td>
    			<td style="text-align:center;"><a href="<%=xemURL%>">xem</a></td>
    		</tr>
    		<%} %>
    </tbody>
    
    </table>
    
    
   	<div class="col-lg-2"></div>
   	</div>
    
    
    </div>
   </div>
</body>
</html>