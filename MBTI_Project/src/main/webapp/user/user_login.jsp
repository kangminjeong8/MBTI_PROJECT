<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css"
	rel="stylesheet">
<section>
<form action="loginForm.user" method="post">

	
	<!-- Page content-->
	<section class="py-5">
		<div class="container px-5">
		
	<!-- Contact form-->
	<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
		<div class="text-center mb-5">

			<h1 class="fw-bolder">로그인</h1>
			<span style="color:red;">${msg}</span>
			<p class="lead fw-normal text-muted mb-0"></p>

		</div>
			
			<div class="row gx-5 justify-content-center">
			<div class="col-lg-8 col-xl-6">
						

			<!-- ID input-->
					<div class="form-floating mb-3">
					<input class="form-control" name="id" type="text"
					required="required" /> 
					<label for="id">ID</label>
					</div>

			<!-- Password input-->
					<div class="form-floating mb-3">
					<input class="form-control" name="pw" type="password"
						required = "required" /> 
						<label for="pw">PASSWORD</label>
						</div>

			<!-- Submit Button-->
					<input class="btn btn-primary btn-lg" 
					name="login" type="submit"
					value="login" class="btn btn-default">

				</form>
			</section>

					
			
	
	