<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<section>
	<div align="center">
		<h3>회원가입</h3>

		<form action="joinForm.user" method="post">

			<span style="color: red;">${msg} </span>

			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" required="required"></td>
					
				</tr>

				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" required="required"></td>
				</tr>

				<tr>
					<td>이름</td>
					<td><input type="text" name="name" pattern="[가-힣]{3,4}"></td>
				</tr>

				<tr>
					<td>성별</td>
					<td>여자<input type="radio" name="gender" value="f"
						checked="checked"> 남자<input type="radio" name="gender"
						value="m">
					</td>
				</tr>

				<tr>
					<td>연락처</td>
					<td><input type="text" name="contactnumber"></td>

				</tr>


				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" required="required"></td>
				</tr>

				<tr>
					<td>소개</td>
					<td><input type="text" name="introduction"></td>
				</tr>


			</table>

			<input type="submit" value="가입">

		</form>
	</div>


</section>
<!-- 화면에서 사용할 JS -->
<script>
	var msg = '${msg}';
	if(msg != ''){
		alert(msg);
	}
</script>





