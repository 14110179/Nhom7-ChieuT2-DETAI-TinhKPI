<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFO-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Người Dùng</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Style.css">
      <link href="css/bootstrap.min.css" rel="stylesheet">

      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery1.12.4.min.js"></script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$('.demoajax').click(function(){
			$.ajax({
				type: 'GET',
				url: '@Url.Action("dungajax","hello")',
				succes:function(result){
					$('.result').html(result);
				}
			});
		});
	});
</script>
	<a href="#" class="demoajax">demo ajax</a>
	<div class="result">
	
	</div>
	
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>