<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br><br><br><br><br><br>
	<div id="cs" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="1000">	<!-- 1캐러셀 -->
														<!-- data-bs-interval : 밀리초 -->
					
		<!-- 캐러셀 [내용위치] 하단 버튼 : 인디케이터 -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
			<button type="button" data-bs-target="#cs" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#cs" data-bs-slide-to="2"></button>
			<button type="button" data-bs-target="#cs" data-bs-slide-to="3"></button>
		</div>
		
		<div class="carousel-inner">
			<!-- 캐러셀 내용 -->
			<div class="carousel-item active"><img alt="" src="img/배너1.jpeg"></div>
			<div class="carousel-item"><img alt="" src="img/배너2.jpeg"></div>
			<div class="carousel-item"><img alt="" src="img/배너3.jpeg"></div>
			<div class="carousel-item"><img alt="" src="img/배너4.jpeg"></div>
		</div>
			<!-- 캐러셀 이동 이전 버튼 -->
			<button type="button" class="carousel-control-prev" data-bs-target="#cs" data-bs-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</button>
			<!-- 캐러셀 이동 다음 버튼 -->
			<button type="button" class="carousel-control-next" data-bs-target="#cs" data-bs-slide="next">
				<span class="carousel-control-next-icon"></span>
			</button>
		
	</div>
	
	<div class="container">
		<%for(int i=0; i<5; i++ ) {%>
		<br><br>
		<h4>카테고리 이름</h4>
		<div class="row" style="border-bottom: solid 1px #cccccc; padding-bottom: 30px; margin-top: 30px;">
			<%for(int j=0; j<4; j++) { %>
			<div class="col-md-3 col-sm-6">
				<div class="card">	<!-- 카드형식 -->
					<img class="card-img-top" alt="" src="img/상품<%=j+1 %>.<%if(j==1) {%>webp <%} else{%>jpg<%}%>">	<!-- 이미지 -->
					<div class="card-body">
						<p class="item"> 
							<span class="title">상품 이름 </span>
							<br>
							<span class="content">
							상품 설명<br>
							상품 설명<br>
							</span>
							<br>
							<span class="price1"> 상품 가격 </span> <br>
							<span class="price2"> 할인된 가격 </span> 
							<br>
						</p>
					</div>
				</div>
			</div>
			<%} %>
		</div>
		<%} %>
	</div>

</body>
</html>