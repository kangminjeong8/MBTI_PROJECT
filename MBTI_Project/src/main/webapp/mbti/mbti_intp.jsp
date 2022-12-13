<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>INTP</h2>
       <img alt="제목" src="${pageContext.request.contextPath}/mbti/INTP.png" width="500px" heigh="500px"> <br>
	설명 : 뛰어난 전략가이며 비평적인 관점을 가진<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfj.jsp">isfj</a> 
	<a href="/MBTI_Project/mbti/mbti_esfj.jsp">esfj</a> 
	<a href="/MBTI_Project/mbti/mbti_entp.jsp">entp</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_esfp.jsp">esfp</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/INTP">나무위키 INTP</a>
	</div>
</body>
</html>