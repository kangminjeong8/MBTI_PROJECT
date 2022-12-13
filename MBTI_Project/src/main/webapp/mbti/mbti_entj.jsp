<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>ENTJ</h2>
       <img alt="제목" src="${pageContext.request.contextPath}/mbti/ENTJ.png" width="500px" > <br>
	설명 : 비전을 가지며 리더쉽이 강한<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_esfp.jsp">esfp</a> 
	<a href="/MBTI_Project/mbti/mbti_isfp.jsp">isfp</a> 
	<a href="/MBTI_Project/mbti/mbti_int.jsp">intj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfj.jsp">isfj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ENTJ">나무위키 ENTJ</a>
	</div>
	
</body>
</html>