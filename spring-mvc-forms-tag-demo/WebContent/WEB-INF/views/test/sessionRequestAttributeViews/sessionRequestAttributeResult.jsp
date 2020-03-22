<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<spring:url value="resources/test-main.css" var="testMainCss"/>
	<link href="${testMainCss}" rel="stylesheet"/>
<title>Test Results</title>
</head>
<body>
	<div align="center">
		<h1>@SessionAttribute Test Results</h1>
		<h3>${timeHeading}, ${durationHeading}</h3>
		<hr>
		<h3>No of pages visit in this session: <c:out value="${visitorcount.count}"/> </h3>
		
		<ul>
			<c:forEach var="visitor" items="${visitordata.visitors}">
				<li><b><c:out value="${visitor.name}"/>, <c:out value="${visitor.email}"/></b></li>
			</c:forEach>
		</ul>
		<br/>
		<br/>
		<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
		<a href="${contextPath}/visitorRegister/home" style="font-size: 20px">Generate Another Visit</a>
	</div>
</body>
</html>