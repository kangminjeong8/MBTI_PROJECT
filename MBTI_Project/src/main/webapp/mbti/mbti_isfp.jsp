<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>ISFP</h2>
       <img alt="제목" src="${pageContext.request.contextPath}/mbti/ISFP.png" width="500px" heigh="500px"> <br>
	설명 : 따뜻한 감성과 겸손을 지니고 예술성을 가진<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_entj.jsp">entj</a> 
	<a href="/MBTI_Project/mbti/mbti_esfp.jsp">esfp</a> 
	<a href="/MBTI_Project/mbti/mbti_intj.jsp">intj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_entp.jsp">entp</a> 
	<a href="/MBTI_Project/mbti/mbti_esfj.jsp">esfj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ISFP">나무위키 ISFP</a>
	</div>
</body>
</html>