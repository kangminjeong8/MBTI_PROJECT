<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>ESFP</h2>
    <img alt="제목" src="${pageContext.request.contextPath}/mbti/ESFP.png" width="500px"> <br>
	설명 : 분위기 메이커이자 긍정적인<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfp.jsp">isfp</a> 
	<a href="/MBTI_Project/mbti/mbti_entj.jsp">entj</a> 
	<a href="/MBTI_Project/mbti/mbti_intj.jsp">intj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_intp.jsp">intp</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ESFP">나무위키 ESFP</a>
	</div>
</body>
</html>