<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Duyệt Biểu Mẫu Hiệu Trưởng</title>
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
            <a href="TrangChuHieuTruong.jsp"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>

      
    </table>
          
      
      <!-- hình trên -->
    
     
     <table  align="center">
       <tbody>
         <tr>
                    
       
       
         
        
       <td width="500" align="left">
       <img border="0" src="Image/marks.gif" width="24" height="24">
         <span style="color: lightblue" >DUYỆT BIỂU MẪU</span></td>
       <td align="left" style="height: 25px; width: 80px" valign="right" >Chọn khoa</td>
       <td align="left" style="height: 25px; width: 115px;">
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
      
         </tr>
       </tbody>
     </table>
     <br>
     <div>
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
             <span style="position: relative; left: 27%;">C: Hiệu Trưởng</span>
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
         <select style="position: relative; left: 20%;" disabled="true">
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
         <select style="position: relative; left: 20%;" disabled="true">
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
         <select style="position: relative; left: 20%;" disabled="true">
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
         <select style="position: relative; left: 20%;" disabled="true">
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
         <select style="position: relative; left: 20%;" disabled="true">
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
        <td height="50">    

          
          <a href="#pheduyet"><input class="btn btn-primary" style="position: relative; left: 20%;" data-toggle="modal" data-target="#pheduyet" value="Phê duyệt"/></a>

		 <div class="modal fade" id="pheduyet" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Bạn có muốn phê duyệt không?</h4>
              </div> <br>

                <button type="button" class="btn btn-primary" style="position: relative; left: 25%;">Xác nhận</button>
                <button type="button" class="btn btn-default" data-dismiss="modal" style="position: relative; left: 45%;">Hủy bỏ</button>
              
              </div>  
            </div>
          </div>
        </div> 


     
          <a href="#gopy"><input class="btn btn-primary" type="button" style="position: relative; left: 40%;" data-toggle="modal" data-target="#gopy" value="Góp ý"/></a>

           <div class="modal fade" id="gopy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div align="center" class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                <h4 class="modal-title">Nội dung góp ý</h4>
              </div>
              <div class="modal-body">
                <textarea  cols="75" style="margin: 0px; height: 177px; width: 559px;resize: none;"></textarea>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary">Lưu</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->


        </td>
        <td height="30">   
           
        </td>
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
</body>
</html>