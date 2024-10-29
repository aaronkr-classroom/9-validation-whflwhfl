<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
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
		
	

<body>
	<form id = "loginForm" name = "loginForm"
		method="POST" action = "0803_valid2_process">
		<p>아이디: <input type="text" id="input_id" name ="id" /></p>
		<p>비밀번호: <input type = "password" id="input_pw" name = "passwd"/> </p>
		<p><input type="submit" value = "전송" onclick="checkForm()"/> </p>
	
	</form>
</body>
</html>