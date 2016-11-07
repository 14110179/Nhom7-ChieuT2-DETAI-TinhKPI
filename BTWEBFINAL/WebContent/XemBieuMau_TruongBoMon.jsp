<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Xem Biểu Mẫu Trưởng Bộ Môn</title>
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
            <a href="TrangChuTruongBoMon.jsp"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>

      
    </table>
          
      
      <!-- hình trên -->
     <table  style="position: relative; left: 200px;">
       <tbody>
         <tr>        
       <td width="500" align="left">
       <img border="0" src="Image/find.png" width="24" height="24">
         <span style="color: lightblue" >XEM BIỂU MẪU - BỘ MÔN : </span></td>
          </tr>      
       </tbody>
     </table>
     <br>
     <table style="position: relative; left: 100px;">
      <tr >
       
        <td style="position: relative;left: 100px; height: 25px; width: 110px " >Chọn giảng viên</td>
        <td style="position: relative;left: 100px;">
          <select>
           <option id="" selected="selected" value="Nguyễn Văn A">Nguyễn Văn A</option>
           <option id="" value="Nguyễn Văn B">Nguyễn Văn B</option>
           <option value="Nguyễn Văn C">Nguyễn Văn C</option>
           <option value="Nguyễn Văn D">Nguyễn Văn D</option>
         </select>
        </td>
        </tr>
     </table>

     </div>
      <br>
        
     <!-- Biểu mẫu -->

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
             <span style="position: relative; left: 17%;">B: Trưởng Bộ Môn</span>
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
         <select style="position: relative; left: 10%;" disabled="true">
          <option selected="selected" value="0" >0</option>
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
         <select style="position: relative; left: 20%;">
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
          <select style="position: relative; left: 10%;" disabled="true">
          <option selected="selected" value="0">0</option>
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
         <select style="position: relative; left: 20%;">
          <option selected="selected" value="0">0</option>
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
          <select style="position: relative; left: 10%;" disabled="true">
          <option selected="selected" value="0" >0</option>
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
         <select style="position: relative; left: 20%;">
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
          <select style="position: relative; left: 10%;" disabled="true">
          <option selected="selected" value="0" >0</option>
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
         <select style="position: relative; left: 20%;">
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

         <select style="position: relative; left: 30%;" disabled="true">
          <option selected="selected" value="0">0</option>
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
          <select style="position: relative; left: 10%;" disabled="true">
          <option selected="selected" value="0" >0</option>
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
         <select style="position: relative; left: 20%;">
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
     <tr>
        <td height="50">    
          
          <a href="#gui"><input class="btn btn-primary" style=" height:35px; position: relative; left: 35%;" data-toggle="modal" data-target="#gui" value="Gửi biểu mẫu"/></a>
          <div class="modal fade" id="gui" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Bạn có muốn xác nhận gửi biểu mẫu không?</h4>
              </div> <br>

                <button type="button" class="btn btn-primary" style="position: relative; left: 25%;">Xác nhận</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="position: relative; left: 45%;">Hủy bỏ</button>
              
              </div>  
            </div>
          </div>
          
          
        
        </td>
        <td height="50">  
        <a href="#xacnhan"><input class="btn btn-primary" style="width: 100px; height:35px; position: relative; left: 30%;" data-toggle="modal" data-target="#xacnhan" value="Xác nhận"/></a>
          <div class="modal fade" id="xacnhan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Bạn có muốn xác nhận không?</h4>
              </div> <br>

                <button type="button" class="btn btn-primary" style="position: relative; left: 25%;">Xác nhận</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="position: relative; left: 45%;">Hủy bỏ</button>
              
              </div>  
            </div>
          </div>  
          
        </td>
    </tr>
     </tbody>
     </table>

     <!--  -->
     <table>  
       <tr>
        <td height="50"></td>
      </tr>
     </table>
</body>
</html>