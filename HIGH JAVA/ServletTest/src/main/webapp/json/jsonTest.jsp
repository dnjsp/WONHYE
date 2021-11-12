<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Json 연습</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#strBtn").on("click", function(){
			$.ajax({
				url : "<%=request.getContextPath() %>/jsonTestServlet.do",
				type : "post",
				data : "choice=str",
				success : function(data) {
					$("#result").html(data);
				},
				dataType : "json"
				
			});
		});
		
		// 배열
		$("#arrayBtn").on("click", function(){
			$.ajax({
				url : "<%=request.getContextPath() %>/jsonTestServlet.do",
				type : "post",
				data : "choice=array",
				success : function(data) {
					let str = "";  // 초기화
					$.each(data, function(i, v){
						str += i + "번째 자료 : " + v + "<br>";
					});
					$('#result').html(str);
				},
				dataType : "json"
				
			});
		});
		
		// 객체
		$("#objBtn").on("click", function(){
			$.ajax({
				url : "<%=request.getContextPath() %>/jsonTestServlet.do",
				type : "post",
				data : "choice=obj",
				success : function(data) {
					// {"num":100,"name":"홍길동"} => 이렇게 출력됨
					let str = "번호 : " + data.num + "<br>";
					str += "이름 : " + data.name + "<br>";
					$("#result").html(str);
				},
				dataType : "json"
				
			});
		});
		

		// 컬렉션 - List
		$("#listBtn").on("click", function(){
			$.ajax({
				url : "<%=request.getContextPath() %>/jsonTestServlet.do",
				type : "post",
				data : "choice=list",
				success : function(data) {
					let str = "";
					$.each(data, function(i, v){
						str += i + "번째 자료<br>";
						str += "번호 : " + v.num + "<br>";
						str += "이름 : " + v.name + "<hr>";
					
					$("#result").html(str);
					
				},
				dataType : "json"
				
			});
		});

		// 컬렉션 - Map
		$("#mapBtn").on("click", function(){
			$.ajax({
				url : "<%=request.getContextPath() %>/jsonTestServlet.do",
				type : "post",
				data : "choice=map",
				success : function(data) {
					let str = "이름 : " + data.name + "<br>";
					str += "전화 : " + data.tel + "<br>";
					str += "주소 : " + data.addr
					
					$("#result").html(str);
					
				},
				dataType : "json"
				
			});
		});
		
	});
	
</script>
</head>
<body>
<form>
	<input type="button" id="strBtn" value="문자열">
	<input type="button" id="arrayBtn" value="배 열">
	<input type="button" id="objBtn" value="객 체">
	<input type="button" id="listBtn" value="리스트">
	<input type="button" id="mapBtn" value="map객체">

</form>
<hr>
<h3>응답 결과 보기</h3>
<div id="result"></div>

</body>
</html>