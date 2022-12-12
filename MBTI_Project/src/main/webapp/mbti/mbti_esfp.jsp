<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>ESFP</h2>
	설명 : 분위기 메이커이자 긍정적인<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfp.jsp">isfp</a> 
	<a href="/MBTI_Project/mbti/mbti_entj.jsp">entj</a> 
	<a href="/MBTI_Project/mbti/mbti_intj.jsp">intj</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_intp.jsp">intp</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ESFP">나무위키 ESFP</a>
	
	<table>
				<td> ㅇㅇㅇ 님의 검사 이력</td>
				<c:forEach var="vo" items = "${list }" varStatus="num">
				<tr>
					<td>${vo.mbti}</td>
					<td>
					</td>
					<td><fmt:formatDate value="${vo.historydate}" pattern="yyyy-MM-dd HH시 mm분"/></td>
				</tr>
				</c:forEach>
			
				</table>
</body>
</html>