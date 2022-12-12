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
	<h2>INFJ</h2>
	설명 : 뛰어난 통찰력으로 사람을 꿰뚫어 보는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_estp.jsp">estp</a> 
	<a href="/MBTI_Project/mbti/mbti_enfj.jsp">enfj</a> 
	<a href="/MBTI_Project/mbti/mbti_istp.jsp">istp</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_estj.jsp">estj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/INFJ">나무위키 INFJ</a>
	
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