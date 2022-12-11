<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="registerForm.board" method="post">
		<table border="1" width="500">
			
			
			<tr>
				<td>MBTI</td>
				<td>
					<input type="text" name="user_id" size="10" value="${mbti }" readonly required>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="user_id" size="10" value="aaa123" readonly required>
					<%-- <input type="text" name="user_id" size="10" value=" [${mbti }] ${sessionScope.user_id}" readonly required> --%>
				</td>
			</tr>
			
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" required>
				</td>
			</tr>
			
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content"></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='board_list.board'">         
				</td>
			</tr>
			
		</table>
	</form>




</body>
</html>