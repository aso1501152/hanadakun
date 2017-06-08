<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<p>以下の内容でよろしいでしょうか</p>
<div align="center">

<c:if test="${!empty Subject }">
<c:out value=""></c:out>
</c:if>

</div>
<c:if test="${empty Subject }">
			<c:out value="${message }"/>
		</c:if>
</body>
</html>