<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center">
	<h2>INTJ</h2>
       <img alt="제목" src="${pageContext.request.contextPath}/mbti/INTJ.png" width="500px" heigh="500px"> <br>
	설명 : 넓은 시야와 사고로 비전을 제시하는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfp.jsp">isfp</a> 
	<a href="/MBTI_Project/mbti/mbti_esfp.jsp">esfp</a> <br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_esfj.jsp">esfj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/INTJ">나무위키 INTJ</a>
	</div>
</body>
</html>