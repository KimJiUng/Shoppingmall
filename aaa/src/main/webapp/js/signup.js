 $('#mid').on("blur", function () {
    let mid = $("#mid").val();
	
	let idj = /^[a-zA-Z0-9]{4,15}$/;
	
	if(idj.test(mid)){
		$.ajax({
			url : "idcheck" ,	// 통신할 경로 (서블릿파일과 통신)
			data : {"mid" : mid, "field" : 'id' } ,			// 통신할때 보내는 데이터
			success : function(result){	// 통신 성공후 받는 데이터
				if(result==1){
					$("#idcheck").html("이미 사용중인 아이디입니다.");
					$("#idcheckpass").html("");
				}else{
					$("#idcheckpass").html("사용 가능한 아이디입니다.");
					$("#idcheck").html("");
				}
			}
		});
	}else{
		$("#idcheck").html("영문 대소문자, 숫자를 사용해서 4~15글자 사이로 입력해주세요.");
		$("#idcheckpass").html("");
	}
 });
 
 $('#mpassword').on("blur", function () {
    let mpassword = $("#mpassword").val();
    let mpasswordcheck = $("#mpasswordcheck").val();
	
	let pwj = /^[a-zA-Z0-9]{4,15}$/;
	
	if(pwj.test(mpassword)){
		if(mpasswordcheck==""){
			$("#passwordcheck").html("비밀번호를 한번 더 입력해주세요.");
			$("#passwordcheckpass").html("");
		}else if(mpassword == mpasswordcheck){
			$("#passwordcheckpass").html("사용 가능한 비밀번호 입니다.");
			$("#passwordcheck").html("");
		}else{
			$("#passwordcheck").html("비밀번호 확인이 일치하지 않습니다.");
			$("#passwordcheckpass").html("");
		}
	}else{
		$("#passwordcheck").html("영문 대소문자, 숫자를 사용해서 4~15글자 사이로 입력해주세요.");
		$("#passwordcheckpass").html("");
	}
 });
 
 
 $('#mpasswordcheck').on("blur", function () {
    let mpassword = $("#mpassword").val();
    let mpasswordcheck = $("#mpasswordcheck").val();
	
	let pwj = /^[a-zA-Z0-9]{4,15}$/;
	
	if(pwj.test(mpassword)){
		if(mpassword == mpasswordcheck){
			$("#passwordcheckpass").html("사용 가능한 비밀번호 입니다.");
			$("#passwordcheck").html("");
		}else{
			$("#passwordcheck").html("비밀번호 확인이 일치하지 않습니다.");
			$("#passwordcheckpass").html("");
		}
	}else if(mpassword==""){
		$("#passwordcheck").html("비밀번호를 입력해주세요.");
		$("#passwordcheckpass").html("");
	}else{
		$("#passwordcheck").html("영문 대소문자, 숫자를 사용해서 4~15글자 사이로 입력해주세요.");
		$("#passwordcheckpass").html("");
	}
 });
 

$('#mname').on("blur", function () {
	let mname = $("#mname").val();	
	let namej = /^[가-힣]{2,10}$/; // 한글만 2~10 정규표현식
	
	if(namej.test(mname)){
		$("#namecheckpass").html("사용 가능한 이름입니다.")
		$("#namecheck").html("")
	}else{
		$("#namecheck").html("한글 2~10 사이만 가능합니다.")
		$("#namecheckpass").html("")
	}
});
 
 $('#birthpicker').click(function(e) {
	 e.preventDefault(); $("#mbirthday").focus(); 
});

 
$(document).ready(function () {
	$.datepicker.setDefaults($.datepicker.regional['ko']); 
	$( "#mbirthday" ).datepicker({
		yearRange : "1900",
		changeMonth: true, 
		changeYear: true,
		showButtonPanel: true,
		nextText: '다음 달',
		closeText: '닫기',
		prevText: '이전 달', 
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dateFormat: "yymmdd",
		maxDate: 0,             // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)

	});
	    
});

$('#mphone2').on("blur", function () {
	let mphone1 = $("#mphone1").val();
	let mphone2 = $("#mphone2").val();	
	let mphone3 = $("#mphone3").val();
	let phonej = /^[0-9]{3,4}$/;
	let phonej2 = /^[0-9]{4}$/;
	
	if(phonej.test(mphone2) && phonej2.test(mphone3)){
		$("#phonecheckpass").html("사용 가능한 전화번호입니다.");
		$("#phonecheck").html("");
	}else if(mphone3==""){
		
	}else{
		$("#phonecheck").html("잘못된 전화번호 형식입니다.");
		$("#phonecheckpass").html("");
	}
		
});

$('#mphone3').on("blur", function () {
	let mphone1 = $("#mphone1").val();
	let mphone2 = $("#mphone2").val();	
	let mphone3 = $("#mphone3").val();
	let phonej = /^[0-9]{3,4}$/;
	let phonej2 = /^[0-9]{4}$/;
	
	if(phonej.test(mphone2) && phonej2.test(mphone3)){
		$("#phonecheckpass").html("사용 가능한 전화번호입니다.");
		$("#phonecheck").html("");
	}else if(mphone2==""){
		$("#phonecheck").html("전화번호를 모두 입력해주세요.");
		$("#phonecheckpass").html("");
	}else{
		$("#phonecheck").html("잘못된 전화번호 형식입니다.");
		$("#phonecheckpass").html("");
	}
});

function selectemail() {
	let memail = $("#memail").val();
	let emailaddress = $("#emailaddress").val();
	let selectemailaddress = $("#selectemailaddress").val();

	let emailj = /^[a-zA-Z0-9]{3,20}$/;
	let memailaddressj =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if(selectemailaddress==""){
		$("#emailaddress").val("");
		$("#emailaddress").attr("readonly", false);	
		$("#emailcheck").html("이메일 주소를 입력해주세요.");
		$("#emailcheckpass").html("");
	}else{
		$("#emailaddress").val(selectemailaddress);
		$("#emailaddress").attr("readonly", true);
		if(emailj.test(memail)){
			let email = memail+"@"+$("#emailaddress").val();
			
			$.ajax({
				url : "idcheck" ,	// 통신할 경로 (서블릿파일과 통신)
				data : {"email" : email, "field" : 'email' } ,			// 통신할때 보내는 데이터
				success : function(result){	// 통신 성공후 받는 데이터
					if(result==1){
						$("#emailcheck").html("이미 사용중인 이메일입니다.");
						$("#emailcheckpass").html("");
					}else{
						$("#emailcheckpass").html("사용 가능한 이메일입니다.");
						$("#emailcheck").html("");
					}
				}
			});
		}else if(memail==""){
			$("#emailcheck").html("이메일 아이디를 입력해주세요.");
			$("#emailcheckpass").html("");
		}else{
			$("#emailcheck").html("영문 대소문자, 숫자를 사용해서 3~20글자 사이로 입력해주세요.");
			$("#emailcheckpass").html("");
		}
	}	
};

$('#memail').on("blur", function () {
		let memail = $("#memail").val();
		let memailaddress = $("#emailaddress").val();
		let emailj =  /^[0-9a-zA-Z]{3,20}$/;
		let memailaddressj =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if(emailj.test(memail)){
			let email = memail+"@"+memailaddress;

				$.ajax({
					url : "idcheck" ,	// 통신할 경로 (서블릿파일과 통신)
					data : {"email" : email, "field" : 'email' } ,			// 통신할때 보내는 데이터
					success : function(result){	// 통신 성공후 받는 데이터
						if(result==1){
							$("#emailcheck").html("이미 사용중인 이메일입니다.");
							$("#emailcheckpass").html("");
						}else{
							if(memailaddress==""){
								$("#emailcheck").html("이메일 주소를 입력해주세요.");
								$("#emailcheckpass").html("");
							}else{
								if(memailaddressj.test(memailaddress)){
									$("#emailcheckpass").html("사용 가능한 이메일입니다.");
									$("#emailcheck").html("");
								}else{
									$("#emailcheck").html("이메일 주소 형식이 맞지 않습니다.");
									$("#emailcheckpass").html("");
								}
								
							}
						}
					}
				});
		}else{
			$("#emailcheck").html("영문 대소문자, 숫자를 사용해서 3~20글자 사이로 입력해주세요.");
			$("#emailcheckpass").html("");
		}
});

$('#emailaddress').on("blur", function () {
		let memail = $("#memail").val();
		let memailaddress = $("#emailaddress").val();
		let emailj =  /^[0-9a-zA-Z]{3,20}$/;
		let memailaddressj =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if(memailaddressj.test(memailaddress)){
			if(memail==""){
				$("#emailcheck").html("이메일 아이디를 입력해주세요.");
				$("#emailcheckpass").html("");
			}else{
				if(emailj.test(memail)){
					let email = memail+"@"+memailaddress;
					$.ajax({
						url : "idcheck" ,	// 통신할 경로 (서블릿파일과 통신)
						data : {"email" : email, "field" : 'email' } ,			// 통신할때 보내는 데이터
						success : function(result){	// 통신 성공후 받는 데이터
							if(result==1){
								$("#emailcheck").html("이미 사용중인 이메일입니다.");
								$("#emailcheckpass").html("");
							}else{
								$("#emailcheckpass").html("사용 가능한 이메일입니다.");
								$("#emailcheck").html("");
							}
						}
					});
				}else{
					$("#emailcheck").html("영문 대소문자, 숫자를 사용해서 3~20글자 사이로 입력해주세요.");
					$("#emailcheckpass").html("");
				}
				
			}
			
		}else{
			$("#emailcheck").html("이메일 주소 형식이 맞지 않습니다.");
			$("#emailcheckpass").html("");
		}
});
 
 
$('#sample4_detailAddress').on("blur", function () {
	let address1 = $("#sample4_postcode").val();
	let address2 = $("#sample4_roadAddress").val();
	let address3 = $("#sample4_jibunAddress").val();
	let address4 = $("#sample4_detailAddress").val();
	
	if(address1 == "" || address2 == "" || address3 == "" || address4 == ""){
		$("#addresscheck").html("모든 주소를 입력해주세요.");
		$("#addresscheckpass").html("");
	}else{
		$("#addresscheckpass").html("사용 가능한 주소입니다.");
		$("#addresscheck").html("");
	}
});

$('#findaddress').on("blur", function () {
	let address1 = $("#sample4_postcode").val();
	let address2 = $("#sample4_roadAddress").val();
	let address3 = $("#sample4_jibunAddress").val();
	let address4 = $("#sample4_detailAddress").val();
	
	if(address1 == "" || address2 == "" || address3 == ""){
		$("#addresscheck").html("모든 주소를 입력해주세요.");
		$("#addresscheckpass").html("");
	}else{
		if(address4== ""){
			$("#addresscheck").html("상세 주소를 입력해주세요.");
			$("#addresscheckpass").html("");
		}else{
			$("#addresscheckpass").html("사용 가능한 주소입니다.");
			$("#addresscheck").html("");
		}
		
	}
});
 
 
$(function(){
	$("#sample4_postcode").attr("readonly", true);
	$("#sample4_roadAddress").attr("readonly", true);
	$("#sample4_jibunAddress").attr("readonly", true);
})

	
 
 
 
 
// 다음 api js
  function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
            
        }).open();
    }
    
    
    
function signup(){
	let mid = document.getElementById("mid").value;
	let mpassword = $("#mpassword").val();
	let mname = $("#mname").val();
	let mphone = $("#mphone1").val() + "-" + $("#mphone2").val() + "-" + $("#mphone3").val();
	let memail = $("#memail").val()+"@"+$("#emailaddress").val();
	let maddress = $("#sample4_postcode").val()+"_"+$("#sample4_roadAddress").val()+"_"+$("#sample4_jibunAddress").val()+"_"+$("#sample4_detailAddress").val();
	let mbirthday = $("#mbirthday").val();
	if(
		$("#idcheckpass").text() == "사용 가능한 아이디입니다." && 
		$("#passwordcheckpass").text() == "사용 가능한 비밀번호 입니다." &&
		$("#namecheckpass").text() == "사용 가능한 이름입니다." &&
		$("#emailcheckpass").text() == "사용 가능한 이메일입니다." &&
		$("#phonecheckpass").text() == "사용 가능한 전화번호입니다." &&
		$("#addresscheckpass").text() == "사용 가능한 주소입니다."
	){
		$.ajax({
			url : "signup" ,	
			data : {
				"mid" : mid, 
				"mpassword" : mpassword,
				"mname" : mname,
				"mphone" : mphone,
				"memail" : memail,
				"maddress" : maddress,
				"mbirthday" : mbirthday
				} ,			// 통신할때 보내는 데이터
			type : "POST",
			success : function(result){	// 통신 성공후 받는 데이터
				if(result==1){
					alert("회원가입 성공");
					location.href = "/project/member/signupsuccess.jsp";
				}else{
					alert("회원가입실패[DB 오류] - 관리자에게 문의");
				}
			}
		}); // ajax end
	}else{
		alert("필수 입력 정보를 모두 입력해주세요.")
	}
	
}
 
