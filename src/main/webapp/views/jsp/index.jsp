<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ include file="/common/cssboostrap.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home - Action Moive</title>
<link rel="stylesheet" type="text/css" href="/Web-OOP1312/src/main/webapp/views/css/style.css">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body   >
	<jsp:include page="header.jsp"></jsp:include>
	<div class="apps container" id="actionMovie" style="width: 100%">
			<jsp:include page="Allfilm.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<%@ include file="/common/jsboostrap.jsp"%>
</body>
</html>