<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<div align="center" class="div_center">
	<h3>게시판 글 수정 페이지</h3>
	<hr>
	<form action="updateForm.board" method="post">
		
		<table border="1" width="500">
			
			<tr>
				<input type = "hidden" name = "board_num" value = ${vo_modi.board_num }>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="user_id" value="${vo_modi.user_id }" readonly></td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" value="${vo_modi.title }">
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<!-- textarea는 value 속성이 없고 사이에 값을 넣으면 된다. -->
					<textarea rows="10" style="width: 95%;" name="content"> 
					${vo_modi.content }
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정 하기">&nbsp;&nbsp;
					<input type="button" value="목록" onclick="/board/board_list.board">        
				</td>
			</tr>
			
		</table>
	</form>
</div>



</body>
</html>