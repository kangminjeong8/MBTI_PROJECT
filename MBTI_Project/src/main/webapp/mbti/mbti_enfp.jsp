<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>ENFP</h2>
    <img alt="제목" src="${pageContext.request.contextPath}/mbti/ENFP.png" width="500px"> <br>
	설명 : 열정적이며 새로운 관계를 만드는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_istj.jsp">istj</a> 
	<a href="/MBTI_Project/mbti/mbti_estj.jsp">estj</a> 
	<a href="/MBTI_Project/mbti/mbti_enfj.jsp">enfj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_istp.jsp">istp</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ENFP">나무위키 ENFP</a>
	</div>
</body>
</html>