<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="/project/css/signup.css" rel="stylesheet">
</head>
<body>
	
	<%@include file="../header.jsp" %>
	<div class="container login" style="margin-top: 200px;">
		<div class="col-md-4 offset-4">
			<div class="mainhead text-center">
				<h4>로그인</h4>
			</div>
			<br><br>
			<div class="my-4">
				<div class="row">
					<div class="col-md-8">
						<input class="form-control" onkeyup="enterkey()" id="mid" type="text" placeholder="아이디">
						<input class="form-control" onkeyup="enterkey()" id="mpassword" type="password" placeholder="비밀번호" >
					</div>
					<div class="col-md-4">
						<input class="form-control" id="login" type="button"  onclick="login()" value="LOGIN" style="height: 100%" >
					</div>	
				</div>
				<span class="signupcheck" id="passwordcheck"></span>
				<ul class="col-md-7 offset-2 nav justify-content-between" style="margin-top: 50px;">
					<li class="find"><a href="#">아이디찾기</a> </li>
					<li class="find"><a href="#">비밀번호찾기</a> </li>
				</ul>
			</div>
		</div>
		
	</div>
	<br><br><br><br><br><br>
	<%@include file="../footer.jsp" %>
	
	<script src="/project/js/login.js" type="text/javascript"></script>
</body>
</html>