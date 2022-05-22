<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />	
<!-- 사용자가 정의한 css 포함 -->
<link href="/project/css/signup.css" rel="stylesheet">

</head>
<body>
  
	
	<%@include file="../header.jsp" %>
	
	<div class="container" style="margin-top: 200px;">
		<div class="col-md-6 offset-3">
			<div class="mainhead text-center">
				<h4>회원가입</h4>
			</div>
			<br><br>
			<div class="row">
				<div class="col-md-3 my-4">
					<p>아이디<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="form-floating col-md-9 my-3">
				  <input type="text" class="form-control" id="mid" name="mid" placeholder=" " maxlength="15">
				  <label for="mid">　아이디를 입력하세요.<span style="color: red;">*</span></label>
				</div>
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="idcheck"></span>
					<span class="signupcheckpass" id="idcheckpass"></span>
				</div>
				
				<div class="col-md-3 my-4">
					<p>비밀번호<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="form-floating col-md-9">
				  <input type="password" class="form-control" id="mpassword" placeholder=" " maxlength="15">
				  <label for="mpassword">　비밀번호를 입력하세요.<span style="color: red;">*</span></label>
				</div>
				<div class="form-floating col-md-9 offset-3 mb-3">
				  <input type="password" class="form-control" id="mpasswordcheck" placeholder=" " maxlength="15">
				  <label for="mpasswordcheck">　비밀번호를 한번 더 입력하세요.<span style="color: red;">*</span></label>
				</div>
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="passwordcheck"></span>
					<span class="signupcheckpass" id="passwordcheckpass"></span>
				</div>
				
				<div class="col-md-3 my-4">
					<p>이름<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="form-floating col-md-9 my-3">
				  <input type="text" class="form-control" id="mname" placeholder=" " maxlength="10">
				  <label for="mname">　이름을 입력하세요.<span style="color: red;">*</span></label>
				</div>
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="namecheck"></span>
					<span class="signupcheckpass" id="namecheckpass"></span>
				</div>
				
				<div class="col-md-3 my-4">
					생년월일
				</div>
				<div class="input-group col-md-9 my-3" style="width: 75%;">					
					<input class="form-control" style=" background-color: white;" disabled="disabled" type="text" id="mbirthday" placeholder="　생년월일을 선택해주세요." aria-describedby="basic-addon2" width="90%;">
					<span style="width: 10%;" class="input-group-text" id="basic-addon2"><img alt="" src="/project/img/calendar.png" id="birthpicker" width="100%;"></span>
				</div>
				<div class="col-md-3 my-4">
					<p>전화번호<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="col-md-9 input-group my-3 phone" style="width: 75%">
					<select class="form-control" id="mphone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input type="text" id="mphone2" class="form-control" placeholder="0000" aria-label="Example text with two button addons" maxlength="4">
					<input type="text" id="mphone3" class="form-control" placeholder="0000" aria-label="Example text with two button addons" maxlength="4">
				</div>
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="phonecheck"></span>
					<span class="signupcheckpass" id="phonecheckpass"></span>
				</div>
				
				<div class="col-md-3 my-4">
					<p>이메일<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="input-group col-md-9 my-3" style="width: 75%;">
					<div class="form-floating">
						<input type="text" class="form-control" id="memail" placeholder="이메일을 입력하세요." maxlength="30">
						<label for="memail">　이메일을 입력하세요.<span style="color: red;">*</span></label>
					</div>
				  <span class="input-group-text">@</span>
				  <input type="text" id="emailaddress" class="form-control" placeholder=" " >
				  <select onchange="selectemail()" class="form-control" id="selectemailaddress">
				  	<option value="">직접입력</option>
				  	<option value="naver.com">naver.com</option>
				  	<option value="google.com">google.com</option>
				  	<option value="nate.com">nate.com</option>
					<option value="daum.com">daum.com</option>
				  </select>
				</div>
				
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="emailcheck"></span>
					<span class="signupcheckpass" id="emailcheckpass"></span>
				</div>
				
				<div class="col-md-3">
					<p>주소<span style="color: red; font-size: 12px;">*</span></p>
				</div>
				<div class="col-md-9 py-1">
					<div class="row">
						<div class="col-md-6">
							<input class="form-control" type="text" id="sample4_postcode" placeholder="우편번호">
						</div>
						<div class="col-md-6">
							<input class="form-control" type="button" id="findaddress" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
						</div>
					</div>
				</div>
				<div class="col-md-9 offset-3 py-1">
					<div class="row">
						<div class="col-md-6">
							<input class="form-control" type="text" id="sample4_roadAddress" placeholder="도로명주소">
						</div>
						<div class="col-md-6">
							<input class="form-control" type="text" id="sample4_jibunAddress" placeholder="지번주소">
							<span id="guide" style="color:#999;display:none"></span>
						</div>
					</div>
				</div>
				<div class="col-md-9 offset-3 py-1">
					<input class="form-control" type="text" id="sample4_detailAddress" placeholder="상세주소">
				</div>
				<div class="col-md-9 offset-3 signuptext">
					<span class="signupcheck" id="addresscheck"></span>
					<span class="signupcheckpass" id="addresscheckpass"></span>
				</div>
				<button class="form-control" onclick="signup()" type="button">가입하기</button>
			</div>
		</div>		
	</div>
	<br><br><br><br><br><br>
	<%@include file="../footer.jsp" %>
	
	<!-- 다음맵 API -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- DatePicker API -->	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
	<script src="/project/js/signup.js" type="text/javascript"></script>

</body>
</html>