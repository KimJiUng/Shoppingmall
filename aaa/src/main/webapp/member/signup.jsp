<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../header.jsp" %>
	
	<div class="container" style="margin-top: 200px;">
		<div class="col-md-4 offset-4">
		<div class="mainhead text-center">
			<h4>회원가입</h4>
		</div>
		<br><br>
		<div class="form-floating">
		  <input type="text" class="form-control my-4" id="mid" name="mid" placeholder="아이디를 입력하세요." maxlength="10">
		  <label for="mid">아이디를 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<span class="signuptext" id="idcheck"></span>
		<div class="form-floating">
		  <input type="password" class="form-control my-4" id="floatingInput" placeholder="비밀번호를 입력하세요." maxlength="10">
		  <label for="floatingInput">비밀번호를 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<div class="form-floating">
		  <input type="password" class="form-control my-4" id="floatingInput" placeholder="한번 더 비밀번호를 입력하세요." maxlength="10">
		  <label for="floatingInput">한번 더 비밀번호를 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<div class="form-floating">
		  <input type="text" class="form-control my-4" id="floatingInput" placeholder="이름을 입력하세요." maxlength="10">
		  <label for="floatingInput">이름을 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<div class="col-md-4 offset-4 my-4">
			<div class="row">
				<div class="form-check col-md-6">
					<input class="form-check-input" type="radio" name="sex"> 남자 
			 	</div>
			 	<div class="form-check col-md-6">
			 		<input class="form-check-input" type="radio" name="sex"> 여자
			 	</div>
			</div>
		</div>
		<div class="form-floating">
		  <input type="text" class="form-control my-4" id="floatingInput" placeholder="연락처를 입력하세요." maxlength="13">
		  <label for="floatingInput">연락처를 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<div class="form-floating">
		  <input type="text" class="form-control my-4" id="floatingInput" placeholder="이메일을 입력하세요." maxlength="30">
		  <label for="floatingInput">이메일을 입력하세요.<span style="color: red;">*</span></label>
		</div>
		<div class="form-floating">
		  <input type="text" class="form-control my-4" id="floatingInput" placeholder="나이를 입력하세요." maxlength="3">
		  <label for="floatingInput">나이를 입력하세요.<span style="color: red;">*</span></label>
		</div>
			<div class="row">
				<div class="col-md-2">
					주소<span style="color: red;">*</span>
				</div>
				<div class="col-md-10 row">
					<div class="col-md-4">
						<input class="form-control"  type="text" placeholder="우편번호">
					</div>
					<div class="col-md-8">
						<button class="form-control">우편번호 찾기</button>
					</div>
					<div class="col-md-6">
						<input class="form-control my-2"  type="text" placeholder="도로명주소">
					</div>
					<div class="col-md-6">
						<input class="form-control my-2"  type="text" placeholder="지번주소">
					</div>
					<div>
						<input class="form-control my-2" type="text" placeholder="상세주소">
					</div>
				</div>
				<button class="form-control my-2" >회원가입</button>
			</div>
		</div>		
	</div>

</body>
</html>