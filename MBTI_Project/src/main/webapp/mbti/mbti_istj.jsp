<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>ISTJ</h2>
       <img alt="제목" src="${pageContext.request.contextPath}/mbti/ISTJ.png" width="500px" heigh="500px"> <br>
	설명 : 한번 시작한 일은 끝까지 해내는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_infp.jsp">infp</a> 
	<a href="/MBTI_Project/mbti/mbti_enfp.jsp">enfp</a> 
	<a href="/MBTI_Project/mbti/mbti_estj.jsp">estj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_enfj.jsp">enfj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ISTJ">나무위키 ISTJ</a>
	</div>
</body>
</html>