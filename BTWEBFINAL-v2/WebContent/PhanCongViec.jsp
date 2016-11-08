<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <a href="#"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>

      
    </table>
          
      
      <!-- hình trên -->
    
     
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
         <select>
           <option selected="selected" value="Công nghệ Thông tin">Công nghệ Thông tin</option>
           <option value="Cơ khí Chế tạo máy">Cơ khí Chế tạo máy</option>
           <option value="Cơ khí Động lực">Cơ khí Động lực</option>
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
          <select>
           <option selected="selected" value="Nguyễn Văn A">Nguyễn Văn A</option>
           <option value="Nguyễn Văn B">Nguyễn Văn B</option>
           <option value="Nguyễn Văn C">Nguyễn Văn C</option>
           <option value="Nguyễn Văn D">Nguyễn Văn D</option>
           
         </select>
        </td>
        </tr>
     
     </table>
     
     <br>
     <br>
     <span style="position: relative; left: 250px;"> Nội dung</span>

     <table cellspacing="0" cellpadding="4" border="0"  style="color:#333333;width:55%;height: 200px; border-collapse:collapse; text-align: justify;" align="center">
     <tbody>
       <tr>
        <td>
         
            <textarea style="height: 150px; width: 500px; resize: none;" cols="50"></textarea>
       
        </td>
       </tr>
       <tr>
         <td height="50">   
          <a href="#gui"><input class="btn btn-primary" style="width: 100px; height:35px; position: relative; left: 30%;" data-toggle="modal" data-target="#gui" value="Gửi"/></a>
          <div class="modal fade" id="gui" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Bạn có muốn gửi không?</h4>
              </div> <br>

                <button type="button" class="btn btn-primary" style="position: relative; left: 25%;">Xác nhận</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="position: relative; left: 45%;">Hủy bỏ</button>
              
              </div>  
            </div>
          </div>
          <a href="#"><input class="btn btn-primary" type="button" style="position: relative; left: 60%;" value="Hủy bỏ"/></a>
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
     </div>
     
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>