<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>fetch 요청 header 조작</h1>
	
	<button id="btn1">/ex41/sub01 get, 헤더 추가</button>
	<br>
	<button id="btn2">/ex41/sub02 get, 헤더 추가 (YourHeader : "yourHeaderValue")</button>
	<br>
	<button id="btn3">/ex41/sub03 get, 헤더 추가 (Your-Header, My-Header)</button>
	<br>
	<button id="btn4">/ex41/sub04 헤더 변경</button>
	<br>
	<button id="btn5">/ex41/sub05 헤더 변경(Accept-Language : *)</button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
	const ctx = "${pageContext.request.contextPath}";
	
	document.querySelector("#btn5").addEventListener("click", function(){
		fetch(ctx + "/ex41/sub05", {
			method:"get",
			headers:{
				"Accept-Language" : "*" 
			}
		});
	});
	
	document.querySelector("#btn4").addEventListener("click", function(){
		fetch(ctx + "/ex41/sub04", {
			method:"get",
			headers:{
				"My-Header" : "myValues",
				"Accept" : "text/plain"
			}
		});
	});
	
	document.querySelector("#btn3").addEventListener("click", function(){
		fetch(ctx +"/ex41/sub03", {
			method:"get", //생략 가능
			headers:{"Your-Header" : "yourHeaderValues",
					  "My-Header" : "myHeaderValues"} //- 연산자로 인식 -> ""붙이기
		});
	});
	
	document.querySelector("#btn2").addEventListener("click", function(){
		fetch(ctx +"/ex41/sub02", {
			method:"get", //생략 가능
			headers:{YourHeader : "yourHeaderValue"}
		});
	});
	
	document.querySelector("#btn1").addEventListener("click", function(){
		fetch(ctx + "/ex41/sub01", {
			method:"get", 
			headers:{MyHeader : "myHeaderValue"}
		});
		
	});
</script>
</body>
</html>