<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hủy Đăng Ký</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
   

      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
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
           <a href="DangKyMucTieuCaNhan_GiangVien.html"><button class="btn btn-default" >Thoát</button></a>
          </div>
        </td>
      </tr>   
      </table>
      <div class="row">
        <div class="col-md-12" align="right">
          <div class="bgrow thumbnail img-responsive"></div>
        </div>
      </div>
      <div class="row" >
        <div align="center" class="col-md-8 col-md-offset-2">
          <table align="center" class="table">
            <caption><h3><strong>Hủy đánh giá</strong></h3></caption>
            <tr>
              <th>Chọn lĩnh vực</th>  <th>Nội dung hủy</th>
            </tr>
            <tr>
              <td>
              <select>
                <option>I.Lĩnh vực 1</option>
                <option>II. Lĩnh vực 2</option>
                <option>III Lĩnh vực 3</option>
              </select>
              </td>
              <td>
                <select>
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
              </td>
            </tr>
           
          </table>
          <div align="left">
            <button style="position: relative; left: 20%;" class="btn btn-primary" type="button" onclick="window.location.href='#'">Xác nhận</button>
            <button style="position: relative; left: 40%;" class="btn btn-primary" type="button" onclick="window.location.href='DangKyMucTieuCaNhan_GiangVien.html'">Hủy</button>
          </div>
        </div>
      </div>
    </div>
	
</body>
</html>