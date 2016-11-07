<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Xem Biểu Mẫu Hiệu Trưởng</title>
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
            <a href="TrangChuHieuTruong.jsp"><button class="btn btn-default" >Thoát</button></a>
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
         <span style="color: lightblue" >XEM BIỂU MẪU</span></td>
          </tr>      
       </tbody>
     </table>
     <br>
     <table style="position: relative; left: 250px;">
      <tr >
       <td style="height: 25px; width: 80px" >Chọn khoa</td>
       <td style="height: 25px; width: 115px;">

        
         <select id="danhsachkhoa">
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

         <!--  -->
        
        
        
        <!-- load dữ liệu -->
	    
        <!--  -->
        </td>
        <td style="position: relative;left: 100px; height: 25px; width: 110px " >Chọn giảng viên</td>
        <td style="position: relative;left: 100px;">
          <select onchange="loadDoc()" id="giangvien" >
           <option id="1" selected="selected" value="Nguyễn Văn A">Nguyễn Văn A</option>
           <option id="2" value="Nguyễn Văn B">Nguyễn Văn B</option>
           <option value="Nguyễn Văn C">Nguyễn Văn C</option>
           <option value="Nguyễn Văn D">Nguyễn Văn D</option>
         </select>
        </td>
        </tr>
     </table>

     </div>
      <script>
      function loadDoc() {
        var xhttp = new XMLHttpRequest();
        var c=document.getElementById("giangvien").value;
        if(c=="Nguyễn Văn B")
      {
          xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
              document.getElementById("bieumau").innerHTML = this.responseText;
          } 
        }
        xhttp.open("GET", "Text/bang2.txt", true);
        xhttp.send();   
        };
        if(c=="Nguyễn Văn C")
        {
          xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("bieumau").innerHTML = this.responseText;
          } 
        }
        xhttp.open("GET", "Text/bang1.txt", true);
        xhttp.send();   
        };
        if(c=="Nguyễn Văn D")
        {
          xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            document.getElementById("bieumau").innerHTML = this.responseText;
          } 
        }
        xhttp.open("GET", "Text/bang3.txt", true);
        xhttp.send();   
        };
    }
    </script>  
        
     <!-- Biểu mẫu -->
     <div id="bieumau">
     <table class="table-responsive">
     <table cellspacing="0" cellpadding="4" border="3"  style="color:#333333;width:70%;border-collapse:collapse; text-align: justify;" align="center" >
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
            <div class="container">
             <span style="position: relative; left: 7%;">A: Giảng viên</span>
             <span style="position: relative; left: 17%;">B: Trưởng Khoa</span>
             <span style="position: relative; left: 27%;">C: Hiệu Trưởng</span>
             </div>
            </td>
          </tr>     
        </table> 
          
        <td width="25%" height="30">
          <table style="width: 90%;">
          <tr>
            <td style="">
            <div class="container">
             <span style="position: relative; left: 15%;">A</span>
             <span style="position: relative; left: 45%;">B</span>
             <span style="position: relative; left: 70%;">C</span>
             </div>
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

         <select style="position: relative; left: 30%;">
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

         <select style="position: relative; left: 30%;">
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

         <select style="position: relative; left: 30%;">
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

     <!--  -->
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

         <select style="position: relative; left: 30%;">
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

         <select style="position: relative; left: 30%;">
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
     </table>
     </table>
	</div>
     <!--  -->
     <table>  
       <tr>
        <td height="50"></td>
      </tr>
     </table>
</body>
</html>