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
	<h1>ajax/ fetch/ xhr 요청</h1>
	
	<button id="btn1">버튼1</button>
	<br>
	<button id="btn2">버튼2 fetch 사용</button>
	<br>
	<button id="btn3">버튼3 fetch 사용333</button>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script>
	const ctx = "${pageContext.request.contextPath}";
	document.querySelector("#btn2").addEventListener("click", function(){
		console.log("버튼 2번 클릭됨");
		//첫번째 파라미터 : 요청경로
		fetch(ctx + "/ex39/sub02");
	});

	document.querySelector("#btn3").addEventListener("click", function(){
		console.log("버튼 3번 클릭됨");
		fetch(ctx + "/ex39/sub03");
	});

	document.querySelector("#btn1").addEventListener("click", function(){
		console.log("버튼 1번 클릭됨");
	});
</script>
</body>
</html>