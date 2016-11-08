<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tạo Biểu Mẫu</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
      
        <script src="js/html5shiv.min.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/jquery1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <style type="text/css">
          #TrangChu {
            display:  block;

          }
        </style>
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
          <span><a href="TrangChuTruongKhoa.jsp"><button class="btn btn-default" >Thoát</button></a>	</span>
        </div>
      </td>
    </tr>
    </table>
   	
   	
   	
   	<table  style="position: relative; left: 200px;">
       <tbody>
         <tr>        
       <td width="500" align="left">
       <img border="0" src="Image/danhgia.png" width="24" height="24">
         <span style="color: lightblue" >TẠO BIỂU MẪU ĐÁNH GIÁ</span></td>
          </tr>      
       </tbody>
     </table>
    <table cellspacing="0" cellpadding="4" border="3"  style="color:#333333;width:70%;border-collapse:collapse; text-align: justify;" align="center">
   <tbody>
   <tr align="center" style="color:White;background-color:#507CD1;font-size:10pt;font-weight:bold;">
       <th scope="col" style="width: 75%" ><p align="center">Phiếu Đăng Ký</p></th>
       <th scope="col" style="width: 25%" ><p align="center">Bảng Điểm</p></th>
      
   </tr>
   <tr style="background-color: lightblue;">
      <td width="75%" height="30">    

      <table style="width: 90%;">
        <tr>
          <td style="">
           <span style="position: relative; left: 7%;">A: Giảng viên</span>
           <span style="position: relative; left: 17%;">B: Trưởng Khoa</span>
           <span style="position: relative; left: 27%;">C: Trưởng Khoa</span>
          </td>
        </tr>     
      </table> 
        
      <td width="25%" height="30">
        <table style="width: 90%;">
        <tr>
          <td style="">
           <span style="position: relative; left: 15%;">A</span>
           <span style="position: relative; left: 45%;">B</span>
           <span style="position: relative; left: 70%;">C</span>
          </td>
        </tr>     
        </table>
        
      </td>
    </tr>
  <tr style="background-color: #EFF3BF">
   
     <td height="20">
      <table style="width: 90%;">
        <tr>
          <td style="">
           <h5 style="position: relative; left: 5%;"><strong>I. Lĩnh vực kiến thức</strong></h5>       
          </td>
        </tr>     
        </table> 
                    
     </td>    
     <td height="20">         
     </td>
   </tr>
   <tr style="height: 30px;">
      <td>
        <table style="width: 90%;">
        <tr>
          <td style="">
           <span style="position: relative; left: 7%;">1. Kiến thức cơ bản</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
       <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
  

   <tr style="height: 30px;">
      <td>

      <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">2. Kiến thức về tâm lí học sư phạm và tâm lí học lứa tuổi, giáo dục học tiểu học</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
     

   <tr style="height: 30px;">
      <td>

        <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">3. Kiến thức về kiểm tra, đánh giá kết quả học tập, rèn luyện của học sinh</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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

    <tr style="background-color: #EFF3BF">
   
     <td height="20">
        <table style="width: 90%;">
        <tr>
          <td style="">
            <h5 style="position: relative; left: 5%;"><strong>II. Lĩnh vực Phẩm chất chính trị, lối sống</strong></h5>
          </td>
        </tr>     
        </table> 
                           
     </td>    
     <td height="20">         
     </td>
   </tr>
   <tr style="height: 30px;">
      <td>
        <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">1. Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.</span>
          </td>
        </tr>     
        </table>        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
  
   <tr style="height: 30px; " >
      <td >
      <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">2. Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.</span>
          </td>
        </tr>     
      </table>
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
    <tr style="background-color: #EFF3BF">
   
     <td height="20">
      <table style="width: 90%;">
        <tr>
          <td style="">
           <h5 style="position: relative; left: 5%;"><strong>III. Mục tiêu của khoa</strong></h5>       
          </td>
        </tr>     
        </table> 
                    
     </td>    
     <td height="20">         
     </td>
   </tr>
   <tr style="height: 30px;">
      <td>
        <table style="width: 90%;">
        <tr>
          <td style="">
           <span style="position: relative; left: 7%;">1. Kiến thức cơ bản</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
       <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
  

   <tr style="height: 30px;">
      <td>

      <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">2. Kiến thức về tâm lí học sư phạm và tâm lí học lứa tuổi, giáo dục học tiểu học</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
     

   <tr style="height: 30px;">
      <td>

        <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">3. Kiến thức về kiểm tra, đánh giá kết quả học tập, rèn luyện của học sinh</span>
          </td>
        </tr>     
        </table> 
        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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

    <tr style="background-color: #EFF3BF">
   
     <td height="20">
        <table style="width: 90%;">
        <tr>
          <td style="">
            <h5 style="position: relative; left: 5%;"><strong>IV. Mục tiêu cá nhân</strong></h5>
          </td>
        </tr>     
        </table> 
                           
     </td>    
     <td height="20">         
     </td>
   </tr>
   <tr style="height: 30px;">
      <td>
        <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">1. Chấp hành quy chế của Ngành, quy định của nhà trường, kỉ luật lao động.</span>
          </td>
        </tr>     
        </table>        
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
  
   <tr style="height: 30px; " >
      <td >
      <table style="width: 90%;">
        <tr>
          <td style="">
            <span style="position: relative; left: 7%;">2. Đạo đức, nhân cách và lối sống lành mạnh, trong sáng của nhà giáo, tinh thần đấu tranh chống các biểu hiện tiêu cực, ý thức phấn đấu vươn lên trong nghề nghiệp, sự tín nhiệm của đồng nghiệp, học sinh và cộng đồng.</span>
          </td>
        </tr>     
      </table>
      </td>
      <td>
        <select style="position: relative; left: 10%;">
        <option selected="selected" value="0" ">0</option>
        <option value="1">1</option>
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
       <select style="position: relative; left: 20%;" disabled="true">
        <option selected="selected" value="0" ">0</option>
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

       <select style="position: relative; left: 30%;" disabled="true">
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
      <td height="50">    
      

       <a href="#myModal"><button style="height:35px; position: relative;left: 35%;" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Thêm đánh giá</button></a>
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Thêm đánh giá</h4>
              </div>
              <div class="modal-body">
                <p>Nội dung đăng ký&hellip;</p>
                <textarea  cols="75"></textarea>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Lưu</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
         <a href="#huydangky"><button style="position: relative; left: 45%;" class="btn btn-primary" data-toggle="modal" data-target="#huydangky">Xóa đánh giá</button></a>
         <div class="modal fade" id="huydangky" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Xóa đánh giá</h4>
              </div>
              <div align="center" class="modal-body">
                <p>Chọn nội dung muốn xóa&hellip;</p>
                <select>
                  <option>1. Nội dung hủy 1</option>
                  <option>2. Nội dung hủy 2</option>
                  <option>3. Nội dung hủy 3</option>
                </select>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Xác nhận</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
               


       
      </td>
      
     
         
     	<td>
         
        </td>
   </tbody>
   </table>
    
    
    
    
      <table>
      <tr>
        <td height="24"></td>
      </tr>
    </table>
</body>
</html>