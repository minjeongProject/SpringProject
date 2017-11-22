<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login 페이지</title>
</head>
<body>
	${login }
	<form action='<c:url value="/common/openSampleList"/>' method="post">
		 <input type="text" name="id" id="id"/>
		 <input type="password" name="pw" id="pw"/>
		 <input type="submit" value="로그인">
	</form>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

$(document).ready(function(){ 
	
	//form submit 테스트
	$("form").submit(function() {
		alert('submit 탔음');
		if ($("#id").val() == "") { 
			alert('id를 입력하세요'); 
			 return false; 
			  } 
		});

});

document.write("자바스크립트 test 입니다");
</script>   	
</body>
</html>