<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="method.models.LayThongTinUser" %>
<%@ page import="thongtin.ThongTinUser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trang Chủ Trưởng Bộ Môn</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <!--  -->

    <!--  -->
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/jquery1.min.js"></script>
      <script src="js/bootstrap.min.js"></script>

      <style type="text/css">
        #TrangChu {
          display:  block;
        }
      </style>

      <script>
        function onTrangChu() {
          document.getElementById('TrangChu').style.display = 'block';
          document.getElementById('LienHe').style.display = 'none';
          document.getElementById('GioiThieu').style.display = 'none';
        }

        function onGioiThieu() {
          document.getElementById('TrangChu').style.display = 'none';
          document.getElementById('LienHe').style.display = 'none';
          document.getElementById('GioiThieu').style.display = 'block';
        }

        function onLienHe() {
          document.getElementById('TrangChu').style.display = 'none';
          document.getElementById('LienHe').style.display = 'block';
          document.getElementById('GioiThieu').style.display = 'none';
        }
      </script>
</head>
<body>
	 

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
         <% 
       		LayThongTinUser ltt=new LayThongTinUser();
        	ThongTinUser tt= ltt.LayThongTin(session.getAttribute("taikhoan").toString(),session.getAttribute("matkhau").toString()); 
        %>
         <span><strong><p style="color:DarkTurquoise">User :<%= tt.getHoten().toString() %> <a href="TrangDangNhap.jsp"><button class="btn btn-default" >Đăng Xuất</button></a></p></strong>	</span>
        </div>
      </td>
    </tr>
    </table>

    <!-- hình trên -->
    <div class="example">
      <div class="container" >
          <div class="row">
              
              <hr/>
              <div class="col-md-12">
                  <ul class="nav nav-tabs">
                      <li class="active"><a onclick="onTrangChu()" href="#TrangChu" data-toggle="tab"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
                      <li><a onclick="onGioiThieu()" href="#GioiThieu" data-toggle="tab"><span class="glyphicon glyphicon-user"></span> Giới thiệu</a></li>
                      <li ><a onclick="onLienHe()" href="" data-toggle="tab"><span class="glyphicon glyphicon-envelope"></span> Liên hệ</a></li>
                  </ul>
                 
              </div>    
                   
          </div>
      </div>
    </div>
   <div class="tab-content">
   <div class="container">
   <div class="tab-pane" id="TrangChu" >
   	<div class="row">
   		<div class="col-lg-3">
   			<div class="customDiv1">
   				<div class="well" id="trgchu">
                          <div class="list-group" style="max-width:100%;">                         
                           <a href="#" class="list-group-item active">Trang của bạn</a>
                            <a href="ThongTinCaNhan.jsp" class="list-group-item"><img border="0" src="Image/user.png" width="24" height="24"> Thông tin cá nhân</a>
                            <a href="DangKyMucTieuCaNhan_TruongBoMon.jsp" class="list-group-item"><img border="0" src="Image/muctieu.png" width="24" height="24"> Đăng ký mục tiêu cả nhân</a>                    
                            <a href="XemBieuMau_TruongBoMon.jsp" class="list-group-item"><img border="0" src="Image/find.png" width="24" height="24"> Xem biểu mẫu</a>  
                             <a href="PhanCongViec.jsp" class="list-group-item"><img border="0" src="Image/congviec.png" width="24" height="24"> Phân Công Việc</a>                            
                            <a href="TrangDangNhap.jsp" class="list-group-item"><img border="0" src="Image/thoat.png" width="24" height="24"> Thoát</a> 
                          </div>
                </div>
   			</div>
   		</div>
   		<div class="col-lg-7">  	
   			<div class="customDiv1">
   				<table class="table table-striped">
                  <tr>
                    <td>
                   
                      <div style="padding:15px 10px 0px 0px;width:336px;float:left"><div>
    				
    				<div class="frame_hor">
    				<div class="ct_frame_L">
        			<div class="tintuc"><a href="#">Tin tức - Sự kiện</a></div>
        				<a class="title" id="article8b8cc8e5-94fe-4d76-90c7-6436b9f73f05" href="#">Tưng bừng Lễ khai giảng năm học mới 2016 - 2017<img src="Image/new.gif"></a>
        			<div class="img_ct">
            			<a href="#" class="shadow-radial">
                		<img style="cursor: hand; width: 267px; height: 95px; float: left;" src="Image/hieutruong.jpg" alt="">
            			</a>
        			</div>
        			<p class="date">Ngày 06/10/2016</p>
        			<p class="mota"></p>
        			<ul class="tinkhac">           
                    	<li>
                        	<a href="#">
                            Bài phát biểu của Hiệu trưởng tại buổi lễ Khai giảng năm học mới 2016-2017 và kỷ niệm 54 năm ngày truyền thống của Trường (05/10/1962-05/10/2016)
                            <span>05/10/2016<img src="Image/new.gif"></span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Trường Đại học Sư phạm Kỹ thuật Thành phố Hồ Chí Minh trao tặng học bổng tạo nguồn SPKT 2017
                            <span>29/09/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Thi trắc nghiệm, thi tổ hợp - có gì mà phải lăn tăn?
                            <span>29/09/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Đại học Sư phạm Kỹ thuật TP.HCM ký kết bản ghi nhớ hợp tác  với Công ty Cổ phần Ô Tô Âu Châu
                            <span>22/09/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Sinh viên Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh giao lưu với sinh viên Đại học Josai - Nhật Bản
                            <span>12/09/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Tiếp đón đoàn Hội đồng quản trị SEAMEO VOCTECH
                            <span>09/09/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Cuộc thi armbot UTE 2016 – Sân chơi kỹ thuật hấp dẫn mới
                            <span>26/08/2016</span>
                        	</a>
                    	</li>
                
                    	<li>
                        	<a href="#">
                            Hân hoan chào đón tân sinh viên khóa 2016 trong ngày nhập học đầu tiên tại trường
                            <span>18/08/2016</span>
                        	</a>
                    	</li>
                
        			</ul>
        
    			</div>
    			</div>

    			</div>
    			</div>
                </td>
                <!-- Tin2 -->
                <td>
                	<div id="ctl06_portlet_27517844-7413-4f78-9436-0c5f826e3c98" style="padding:15px 10px 0px 0px;width:336px;float:left"><div> 				
    				<div class="frame_hor">
    				<div class="ct_frame_L">
        			<div class="thongbao"><a href="#">Thông báo</a></div>
        				<a class="title" id="article15c058ad-3afa-4e72-9cb7-9f7b5b76466b" href="#">Tuyển dụng chuyên viên phòng Đảm bảo Chất lượng<img src="Image/new.gif"></a>
        			<div class="img_ct">
            			<a href="#" class="shadow-radial">
                			<img style="cursor: hand; width: 267px; height: 95px; float: left;" src="Image/thongbao.jpg" alt="">
            			</a>
        			</div>	
        			<p class="date">Ngày 06/10/2016</p>
        			<p class="mota"></p>
        		<ul class="tinkhac">            
                    <li>
                        <a href="#">
                            Kết quả Tuyển dụng nhân viên phòng thí nghiệm
                            <span>20/09/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            2016 Innovation Design Competition for Young Entrepreneurs in Vietnam
                            <span>16/09/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            Thư mời tham gia trả lời khảo sát
                            <span>14/09/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            Lịch thi Anh văn đầu vào K.2016 (SV CLC hệ Tiếng Anh đợt bổ sung)
                            <span>09/09/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            THÔNG BÁO: "Về việc gặp gỡ BCN Khoa và thi Anh văn đầu vào đối với SV CLC hệ Tiếng Anh (đợt xét tuyển bổ sung)"
                            <span>06/09/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            Thông báo số 1 Hội thi Olympic các môn khoa học Mác – Lênin, tư tưởng Hồ Chí Minh lần thứ ba - Năm 2016
                            <span>31/08/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            50 trong tổng số 9.710     Thu gọn tất cả In tất cả Trong cửa sổ mới Hội thi OLP Mác lênin
                            <span>30/08/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            THÔNG BÁO: "Về việc tiếp nhận hồ sơ xét miễn, giảm học phí, trợ cấp xã hội  và hỗ trợ chi phí học tập học kỳ I năm học 2016-2017"
                            <span>28/08/2016</span>
                        </a>
                    </li>
                
                    <li>
                        <a href="#">
                            Thông báo tuyển sinh đại học Anh Văn – khóa 43
                            <span>26/08/2016</span>
                        </a>
                    </li>               
        		</ul>       
    			</div>
    			</div>
    			</div>
          		</div>
            	</td>            
          		</tr>

        	</table>
   			</div>
   			</div>
   		<div class="col-lg-2">
   			<div class="customDiv1">
   				<div class="img-responsive img-thumbnail">
            	<marquee  id="marq" scrollamount="10" direction="down" loop="50" scrolldelay="0" behavior="alternate " onmouseover="this.stop()" onmouseout="this.start()">
              		<a href="Link"><img src="Image/anh1.jpg" title="" width="200" height="150" /> </a>
              		<a href="Link"><img src="Image/anh2.jpg" title="" width="200" height="150"/> </a>
              		<a href="Link"><img src="Image/anh3.jpg" title="" width="200" height="150"/> </a>
              		<a href="Link"><img src="Image/anh4.jpg" title="" width="200" height="150"/> </a>
             		<a href="Link"><img src="Image/anh5.jpg" title="" width="200" height="150"/> </a>
            	</marquee>
          		</div>
   			</div>
   		</div>
   	</div>
   	<div class="row">
   		<div class="col-lg-12">   							
		<div class="container">
    	<div class="jumbotron" style="background-color: #FFFFFF; width: 100%;height: 190px;" >     
      		<a href="Link"><img src="Image/skpt_banner_2.jpg" title="Ghi chú cho ảnh" width="auto;" height="140;" class="pull-left" /> </a>             
      		<p>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</p>
      		<p>Điện thoại: (+84 - 8) 38968641 - (+84 - 8) 38961333</p>
      		<p>E-mail: ic@hcmute.edu.vn</p>
    	</div>   
  				
  		<footer class="site-footer"> 
      	<div class="container">
      		<div class="bottom-footer">
        	<div class="col-md-5"><h5> Copyright © 2016, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM</h5></div>
        	<div class="col-md-7">
          	<ul class="footer-nav">
            	<li><a href="#">Home</a></li>
            	<li><a href="#">Blog</a></li>
            	<li><a href="#">Contact</a></li>
            	<li><a href="#">Link</a></li>
          	</ul>
        	</div>       
      		</div>      
      	</div>
    	</footer>
  		</div>  
		
   		</div>
   	</div>
   </div>
   </div>
   </div>
</body>
</html>