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

				<h1 class="fw-bolder">회원가입</h1>
				<p class="lead fw-normal text-muted mb-0">MBTI 테스트를 위해 아래 항목들을
					입력해주세요.</p>


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

						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="name" type="text"
								placeholder="Enter your name..." required /> <label for="name">Full
								name</label>
						</div>


						<!-- gender -->
						<div class="mb-3">
							<label for="userSex" class="form-label">성별</label>
							<div
								class="form_toggle row-vh d-flex flex-row justify-content-between">
								<div class="form_radio_btn radio_male">
									<input id="radio-1" type="radio" name="gender" value="m"
										checked> <label for="radio-1">남자</label>
								</div>

								<div class="form_radio_btn">
									<input id="radio-2" type="radio" name="gender" value="f">
									<label for="radio-2">여자</label>
								</div>
							</div>
						</div>

						<style>
.form_radio_btn {
	width: 47%;
	height: 45px;
	border: 1px solid #EAE7E7;
	border-radius: 10px;
}

.form_radio_btn input[type=radio] {
	display: none;
}

.form_radio_btn label {
	display: block;
	border-radius: 10px;
	margin: 0 auto;
	text-align: center;
	height: -webkit-fill-available;
	line-height: 45px;
}

/* Checked */
.form_radio_btn input[type=radio]:checked+label {
	background: #184DA0;
	color: #fff;
}

/* Hover */
.form_radio_btn label:hover {
	color: #666;
}

/* Disabled */
.form_radio_btn input[type=radio]+label {
	background: #F9FAFC;
	color: #666;
}
</style>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="contactnumber" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>

						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>

						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" name="introduction" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Introduction</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>


						<!-- Submit Button-->
						<input class="btn btn-primary btn-lg" id="submitButton"
							type="submit" value="submit" onclick = "location.href='user_login.user'">

					</form>
				</div>
			</div>
		</div>
	</div>
</section>
</main>




