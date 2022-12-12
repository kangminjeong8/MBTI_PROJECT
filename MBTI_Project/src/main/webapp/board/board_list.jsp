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


	<div class="container">
		<h3>MBTI 게시판</h3>

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>순서</th>
					<th>글 번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>날짜</th>
				</tr>
			</thead>

			
			<tbody>
				<c:forEach var = "vo" items = "${list }" varStatus = "num">
					<tr>
						<td>${num.count }</td>
						<td>${vo.board_num }</td>
						<td>[${vo.mbti}] ${vo.user_id }</td>
						<td>
						<a href ="board_content.board?board_num=${vo.board_num }&user_id=${vo.user_id }">${vo.title }</a>
						</td>
						<td>
						<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
						</td>
						<td> 
							<a href =" "></a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			
			<tbody>
				<tr>
					<td colspan="5" align="right">
						<form action="" class="form-inline" >
						  <div class="form-group">
						    <input type="text" name="search" placeholder="제목검색" class="form-control" >
						  	<input type="submit" value="검색" class="btn btn-default">
							<input type="button" value="글 작성" class="btn btn-default" onclick = "location.href ='board_write.board'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>


</body>
</html>