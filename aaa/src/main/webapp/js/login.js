function login(){
	let mid = $("#mid").val();
	let mpassword = $("#mpassword").val();
	
	$.ajax({
		url : "login",
		data : {"mid" : mid, "mpassword" : mpassword},
		type : "POST",
		success : function(result){
			if(result==1){
				location.href = "/project/main.jsp";
			}else{
				$("#passwordcheck").html("아이디, 비밀번호를 다시 확인해주세요.");
			}
		}
	})
}

// 엔터키 이벤트
function enterkey() {
    if (window.event.keyCode == 13) {
          // 엔터키가 눌렸을 때 실행할 내용
         login();
    }
}

/* 엔터키 이벤트
$("#SEARCH_KEYWORD").keyup(function(e){
	if(e.keyCode == 13)  login(); 
});
*/



