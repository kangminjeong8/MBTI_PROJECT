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
	<h2>ISFJ </h2>
	 </div>
       <img alt="제목" src="ISFJ .png" width="500px" heigh="500px"> <br>
     </div>
	설명 : 온화하고 성실하여 협조를 잘하는<br>
	최고의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_esfj.jsp">esfj</a> 
	<a href="/MBTI_Project/mbti/mbti_entp.jsp">entp</a> 
	<a href="/MBTI_Project/mbti/mbti_intp.jsp">intp</a><br>
	최악의 궁합 : 
	<a href="/MBTI_Project/mbti/mbti_entj.jsp">entj</a><br>
	자세히 알아보기 :
	<a href="https://namu.wiki/w/ISFJ">나무위키 ISFJ</a><br><br>
			
			
					<table align = center>
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