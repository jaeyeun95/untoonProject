<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>${ clss.cid }번 clss 상세보기 페이지</h2>
<div>

<div>클래스 제목<br>
${ clss.clss_title }

</div>

<div>클래스 내용
	<%-- <input type="textarea" value="${ clss.clss_content }">
	<input type="text" value="${ clss.clss_content }">
	<input type="text" value="${ clss.clss_category }">
	<input type="text" value="${ clss.clss_times }">
	<input type="text" value="${ clss.clss_duration }">
	<input type="text" value="${ clss.tchr_profile }"> --%>
	${ clss.clss_content }<br><br>
	${ clss.clss_content }<br><br>
	${ clss.clss_times }<br><br>
	${ clss.clss_duration }<br><br>
	${ clss.tchr_profile }<br><br>
	</div>
</div>
</body>
</html>