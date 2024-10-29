<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validation 1</title>
</head>
<script type = "text/javascript">
	//변수를 선언할 떄 키워드 3가지 종류 있다.
	
	//var 변수이름; 오래된 예약어(주의해야 함)
	//let 변수이름; -> ECMAScript 5부터 기본 예약어 	
	//const 변수이름; -> 상수 ( 변경하지 않은 것)
	
	//let id1 = document.loginForm.id.value;
	//let pw2 = document.loginForm.passwd.value;
	
	
	
	function checkForm() {
		let form = document.getElementById("loginForm");
		let id = document.getElementById("input_id");
		let pw = document.getElementById("input_pw");
		
		let id_value = id.value;
		let pw_value = pw.value;
		alert("아이디: " + document.loginForm.id.value + "\n"  + "\n비밀번호: " + document.loginForm.passwd.value);
		
		//ID input
		if(id.value == ""){
			alert("아이디를 입력하세요");
			id.select();
			id.value = id_value;
			return;
		}
		else if(id.value.length <= 4 || id.value.length >= 12){
			
			alert("아이디는 4~12자 이내로 이렵 가능합니다.");	
			pw.select();
			id.value = id_value;
			return;
		}
		else{
			for(let i = 0; i < id.value.length; i++) {
				let ch = id.value.charAt(i);
				console.log(ch); //확인
				
				if ((ch < 'a' || ch >'z') &&
					(ch > 'A' || ch <'Z') &&
					(ch > '0' || ch < '9')) {
					alert("아이디는 영문 소문자만 입력 가능.");
					id.select();
					id.value = id_value;
					return;
				}
				
			}
		}
		//Password input
		if(pw.value == ""){
		alert("비밀번호를 입력하세요");
		pw.select();
		pw.value = pw_value;
		return;
		}
		else if(pw.value.length <= 4 || pw.value.length >= 12){
		alert("비밀번호는 4~12자 이내로 이렵 가능합니다.");	
		pw.select();
		pw.value = pw_value;
		return;
		}
		else if (isNaN(pw.value)){
			alert("비밀번호는 숫자만 입력 가능!");
			pw.select();
			pw.value = pw_value;
			return;
		}
		form.submit();
	}
	</script>

<body>
	<form id = "loginForm" name = "loginForm"
		method="POST" action = "0803_valid2_process.jsp">
		<p>아이디: <input type="text" id="input_id" name ="id" /></p>
		<p>비밀번호: <input type = "password" id="input_pw" name = "passwd"/> </p>
		<p><input type="submit" value = "전송" onclick="checkForm()"/> </p>
	
	</form>
</body>
</html>