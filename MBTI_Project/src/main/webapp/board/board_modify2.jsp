<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

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


<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath }/css/styles.css"
   rel="stylesheet">

<!-- Page content-->
<section class="py-5">

   <form action="updateForm.user" method="post">
      <div class="container px-5">
         <!-- Contact form-->
         <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
            <div class="text-center mb-5">

               <h1 class="fw-bolder">회원정보 수정</h1>
               <p class="lead fw-normal text-muted mb-0">회원정보를 수정해주세요.</p>

            </div>

            <div class="row gx-5 justify-content-center">
               <div class="col-lg-8 col-xl-6">
                  

                     <!-- ID input-->
                     <div class="form-floating mb-3">
                        <input class="form-control" name="id" value="${vo.id}"
                           type="text" pattern="\w{4,8}" required readonly /> <label
                           for="name">ID</label>
                     </div>

                     <!-- Password input-->
                     <div class="form-floating mb-3">
                        <input class="form-control" name="pw"  value="${vo.pw }" type="password" 
                           pattern="\w{4,8}" required="required" /> <label for="name">PASSWORD(4~8글자의
                           영문자와 숫자로 구성하세요)</label>
                     </div>

                     <!-- Name input-->
                     <div class="form-floating mb-3">
                        <input class="form-control" name="name" value="${vo.name }"
                           type="text" pattern="[가-힣]{2,5}" required="required" /> <label
                           for="name">NAME</label>
                     </div>


                     <!-- gender -->
                     <div class="mb-3">
                        <label for="gender" class="form-label">성별</label>

                        <div
                           class="form_toggle row-vh d-flex flex-row justify-content-between">

                           <div class="form_radio_btn radio_male">
                              <input id="radio-1" type="radio" name="gender" value="${vo.gender }"
                                 checked> <label for="radio-1">MAN</label>
                           </div>

                           <div class="form_radio_btn">
                              <input id="radio-2" type="radio" name="gender" value="${vo.gender }">
                              <label for="radio-2">WOMAN</label>
                           </div>

                        </div>
                     </div>

                     <!-- Phone number input-->
                     <div class="form-floating mb-3">
                        <input class="form-control" name="contactnumber" type="text" value="${vo.contactnumber }"
                           pattern="[0-9]{11}" required="required" /> <label for="phone">PHONE
                           NUMBER(핸드폰 번호 11자리를 입력하세요)</label>

                     </div>

                     <!-- Email address input-->
                     <div class="form-floating mb-3">
                        <input class="form-control" name="email" value="${vo.email }"
                           type="email" readonly /> <label for="email">EMAIL</label>
                     </div>

                     <!-- Message input-->
                     <div class="form-floating mb-3">
                        <textarea class="form-control" name="introduction"  type="text" 
                           style="height: 10rem">
                           ${vo.introduction}
                        </textarea>

                        <label for="message">INTRODUCTION</label>



                        <!-- Submit Button-->
                        <input class="btn btn-primary btn-lg" id="submit" type="submit"
                           value="submit"> 
                           
                           <input class="btn btn-primary btn-lg"
                           id="submit" type="submit" value="mypage "
                           onclick=" location.href='user_mypage.user' ">
                  </form>
   </form>