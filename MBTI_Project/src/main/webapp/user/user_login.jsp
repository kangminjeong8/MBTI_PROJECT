<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<section>
	<div align = "center">
		<form action="loginForm.user" method="post">
		<span style="color:red;">${msg}</span>
			<h3>로그인</h3>
			
			<input type="text" name = "id" placeholder="아이디"><br>
			<input type="password" name = "pw" placeholder="비밀번호"><br>
			
			
			<input type="submit" value="로그인" class="btn btn-default">


		</form>
	</div>
</section>



    
  