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
<body align = center>
	<h2>ENTP</h2>
	 </div>
       <img alt="제목" src="ENTP.png" width="500px" heigh="500px"> <br>
     </div>
	설명 : 풍부한 상상력을 바탕으로 새로운 것에 도전하는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfj.jsp">isfj</a> 
	<a href="/MBTI_Project/mbti/mbti_esfj.jsp">esfj</a> <br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_isfp.jsp">isfp</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ENTP">나무위키 ENTP</a>
	
				<table align = center>
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