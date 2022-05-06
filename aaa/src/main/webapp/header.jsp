<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- 부트스트랩 css -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- 사용자가 정의한 css 포함 -->
	<link href="/project/css/main.css" rel="stylesheet">
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
	
</head>
<body>
	<div class="fixed-top bg-white"style="margin-bottom: 50px;">
	<div class="container py-3" >

		<div class="row">	<!-- 가로 배치 -->
				<div class="col-md-4 offset-4 text-center">	<!-- 상단 로고 -->
							<!-- text-center : 박스권내 내용물 가운데 정렬 -->
					<h3><a href="/project/main.jsp">쇼핑몰 이름</a></h3>	<!-- 링크 -->
				</div>
				<div class="col-md-4 d-flex justify-content-end">	<!-- 상단 메뉴 -->
					<ul class="nav">	<!-- 가로 배치 -->
						<li><a href="/project/member/login.jsp">로그인</a> | </li>
						<li><a href="/project/member/signup.jsp">회원가입</a> | </li>
						<li><a href="/project/member/cart.jsp">장바구니</a></li>
					</ul>
				</div>
			</div>

		<div class="navbar-expand-md navbar-light bg-white my-3">
			<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navcl">
					<span class="navbar-toggler-icon"></span>
			</button>
	
			<div class="collapse navbar-collapse" id="navcl">
				<ul class="navbar-nav col-md-12 d-flex justify-content-between">
					<li class="nav-item" class="nav-link"><a href="#">베스트 상품</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리1</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리2</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리3</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리4</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리5</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리6</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리7</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리8</a></li>
					<li class="nav-item" class="nav-link"><a href="#">카테고리9</a></li>
					<li class="nav-item" class="nav-link"><a href="#">리뷰</a></li>
					<li class="nav-item" class="nav-link"><a href="boardlist.jsp">고객센터</a></li>
					<li class="nav-item" class="nav-link"><a href="#"> <i class="fas fa-search"></i> </a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
	
	<!-- 부트스트랩 js -->	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>