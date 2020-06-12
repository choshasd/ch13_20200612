<%@page import="chap13.boardex.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel ="stylesheet" href="css/ch13.css"/>
<!-- bootStrap 4 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<!-- style = "background-color: beige;  부트스트랩 자체 내장 -->
	<form action ="writePro.jsp"  id="frm">
		<div class="container bg-beige">
			<div class="row">
				<div class="col">
					<h1>Write Story</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mycenter ch13-border">NAME</div>
				<div class="col-md-10 ch13-border">
					<input class="form-control" type="text" name="name" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mycenter  ch13-border">Title</div>
				<div class="col-md-10 ch13-border">
					<input class="form-control" type="text" name="subject" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mycenter  ch13-border">Email</div>
				<div class="col-md-10 ch13-border">
					<input class="form-control" type="text" name="email" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mycenter  ch13-border">content</div>
				<div class="col-md-10 ch13-border">
					<textarea class="form-control" name="content" rows="10"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 mycenter  ch13-border">Password</div>
				<div class="col-md-10 ch13-border">
					<input class="form-control" type="text" name="passwd" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 mycenter">
					<input type="button" value="글쓰기" id="writeBtn" /> 
					<input type="button" value="다시작성" />
					<input type="button" value="목록보기" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<script type="text/javascript">

$("#writeBtn").on("click",function(){
	alert("test");
	$("#frm").submit();
})

</script>