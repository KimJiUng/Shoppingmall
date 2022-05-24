<%@page import="dto.Member"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	
	<%
	
	
	%>
	<%@include file="../header.jsp" %>
	<br><br><br><br><br><br>
	<%if(loginmember==null) {%>
		<%@include file="../pleaselogin.jsp" %>
	<%}else {%>
		<%Member member = MemberDao.memberDao.getmember(loginmember.getMnum()); %>
		<%@include file="info.jsp" %>
		<div class="container">
			<div class="col-md-6 offset-3">
				<div class="row">
					<div class="col-md-3 my-3">
						<span>아이디</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMid() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>비밀번호</span>
					</div>
					<div class="col-md-9 my-3">
						<button class="form-control">비밀번호 변경</button> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>이름</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMname() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>이메일</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMemail() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>전화번호</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMphone() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>주소</span>
					</div>
					<div class="col-md-9 my-3">
						<div class="col-md-6">
							<input class="form-control" disabled="disabled" type="text" value="<%=member.getMaddress().split("_")[0]%>">	
						</div>
						<div class="row">
							<div class="col-md-6">
								<input class="form-control" disabled="disabled" type="text" value="<%=member.getMaddress().split("_")[1]%>">
							</div>
							<div class="col-md-6">
								<input class="form-control" disabled="disabled" type="text" value="<%=member.getMaddress().split("_")[2]%>">
							</div>
							<div class="col-md-12">
								<input class="form-control" disabled="disabled" type="text" value="<%=member.getMaddress().split("_")[3]%>">
							</div>
						</div>
						
						 
					</div>
					
					<div class="col-md-3 my-3">
						<span>보유포인트</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMpoint() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>회원가입일</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMdate() %>"> 
					</div>
					
					<div class="col-md-3 my-3">
						<span>회원등급</span>
					</div>
					<div class="col-md-9 my-3">
						<input class="form-control" disabled="disabled" type="text" value="<%=member.getMgrade() %>"> 
					</div>
				</div>
			</div>
		</div>
	<%} %>
	
	<br><br><br><br><br><br>
	<%@include file="../footer.jsp" %>

</body>
</html>