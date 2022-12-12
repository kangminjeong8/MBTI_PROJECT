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


<div align="center" class="div_center">
	
	
	<h3>게시글 내용 보기</h3>
	<hr>
	
	<form action="board_writeComment.board" method="post">
	<input type = "hidden" name = "board_num" value = "${vo.board_num }">
	
	<table border="1" width="500">
		<tr>
			<td colsapn ="2">작성자</td>
			<td>[${vo.mbti}] ${vo.user_id }</td>
			
			<td>작성일</td>
			<td colspan = "2" >${vo.regdate }</td>
		</tr>	
		
		<tr>
			<td width="20%">글제목</td>
			<td colspan="4">${vo.title }</td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="4" height="120px">${vo.content }</td>
		</tr>
		
		<tr>
			<td colspan="5" align="right">
				<input type="button" value="목록" onclick="location.href = 'board_list.board'">&nbsp;&nbsp;
				
				<c:if test = "${sessionScope.user_id != null }">
				<input type="button" value="수정" onclick="location.href = 'board_modify.board?board_num=${vo.board_num}&user_id=${vo.user_id }'">&nbsp;&nbsp;
				<input type="button" value="삭제" onclick="location.href = 'board_delete.board?board_num=${vo.board_num}&user_id=${vo.user_id }'">&nbsp;&nbsp;
				</c:if>
			</td>
		</tr>
		
		
		
		<!-- ///////////////////////댓글 구현////////////////////////////// -->
		<!-- 여긴 반복문 돌리자 -->
		
		<td colspan="5" align = "center">댓글</td>
		
		<c:forEach var = "cvo" items="${clist }">
			<tr>
				<td>${cvo.id }</td>
				<td colspan="3" height="10px">${cvo.comment }
				<c:if test = "${cvo.id eq sessionScope.user_id}">
				<input type="button" value="삭제" onclick="location.href = 'board_deleteComment.board?comment_num=${cvo.commentnum }&board_num=${cvo.boardnumber }'">&nbsp;&nbsp;
				</c:if>
			</tr>
		</c:forEach>
		
		<tr>
			<td>댓글 작성</td>
			<td>
				<textarea rows="2" style="width: 230%;" name="comment"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="right">
				<input type="submit" value="등록">&nbsp;&nbsp;
			</td>
		</tr>
		
	</table>
	</form>
</div>



</body>
</html>