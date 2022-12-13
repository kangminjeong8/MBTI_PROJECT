<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css" rel="stylesheet">
	
	<div align = "center" >
	<h2>ENFJ</h2> <!-- db에서 mbti vo 가져와서 뿌릴 생각도 해야할 듯 -->
    <img alt="제목" src="${pageContext.request.contextPath}/mbti/ENFJ.png" width="500px"> <br>
	설명 : 언변이 능숙하고 타인과 협동하는<br> <!-- 얘도 가능 -->
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_istp.jsp">istp</a> 
	<a href="/MBTI_Project/mbti/mbti_estp.jsp">estp</a> 
	<a href="/MBTI_Project/mbti/mbti_enfj.jsp">enfj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_istj.jsp">istj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ENFJ">나무위키 ENFJ</a>
	</div>
					
</body>
</html>