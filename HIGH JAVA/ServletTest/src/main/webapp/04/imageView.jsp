<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>IMG태그의 src속성을 Servlet으로 처리하는 예제</h2><hr>

<img src="<%=request.getContextPath()%>/images/dongwon.jpg" width="200"><br><br>
<img src="<%=request.getContextPath()%>/img/imageView.do?filename=kdw.jpg" width="200"><br><br>

</body>
</html>