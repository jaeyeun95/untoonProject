<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title></title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href="tclist.do">강사 클래스 목록조회</a>	<br>
<a href="teacherInfo.do">강사마이페이지이동</a>	<br>
<a href="cupmove.do">강사 클래스 등록하기</a>	<br>
<a href="myInfo.do">사용자 마이페이지</a>
</body>
</html>
