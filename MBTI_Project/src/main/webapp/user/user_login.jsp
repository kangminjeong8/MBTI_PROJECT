<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css"
	rel="stylesheet">

<!-- Page content-->
<section class="py-5">
	<div class="container px-5">
		<!-- Contact form-->
		<div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
			<div class="text-center mb-5">

				<h1 class="fw-bolder">로그인</h1>
				<p class="lead fw-normal text-muted mb-0"></p>


			</div>
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-8 col-xl-6">
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">


						<!-- ID input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="user_id" type="text"
								placeholder="Enter your ID..." required /> <label for="name">ID</label>
						</div>

						<!-- Password input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="password" type="password"
								placeholder="Enter your password..." required /> <label
								for="name">Password</label>
						</div>

		<!-- Submit Button-->
						<input class="btn btn-primary btn-lg" id="login"
							
							type="submit" value="login" onclick = "location.href='user_login.user'">
						
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
</main>




