<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file = "/include/header.jsp"%>
            <section class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">MBTI_Project <br>강민정, 신지수<br> 이민재, 이세민</h1>
                                <p class="lead fw-normal text-white-50 mb-4">MBTI_Project 검사가 너무 정확해 "살짝 소름이 돋을 정도예요"라고 성격 유형 검사를 마친 한 참여자는 말했습니다.</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="${pageContext.request.contextPath}/mbti_test/mbti_test.mbti">검사하기</a>
                                    <a class="btn btn-outline-light btn-lg px-4" href="${pageContext.request.contextPath}/mbti_info/mbti_info.mbti">MBTI 특징보기</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="mbti.jpg" alt="..."></div>
                    </div>
                </div>
            </section>
            <!-- Features section-->
            <section class="bg-dark py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        
                    </div>
                </div>
            </section>
            
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
