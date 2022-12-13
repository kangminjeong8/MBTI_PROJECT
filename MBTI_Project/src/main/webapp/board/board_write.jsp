<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   

<%@ include file = "/include/header.jsp"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<body>

   <article>

      <div class="container" role="main">

		<br><br><br>
         <h2 align = "center">게시글 작성</h2> <br>
         
         <form action="registerForm.board" method="post">

            <div class="mb-3">

               <label for="title">MBTI</label>
               <input type="text" class="form-control" name="user_id" value="${vo.mbti }" readonly required>
			   <input type="hidden" name = "historynumber" value ="${vo.historynumber }">
            </div>

            <div class="mb-3">

               <label for="reg_id">작성자</label>

               <input type="text" class="form-control" name="user_id" value="${sessionScope.user_id }" id="reg_id" placeholder="이름을 입력해 주세요" readonly required>

            </div>

            <div class="mb-3">


               <label for="title">제목</label>

               <input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요" required>

            </div>
            

            <div class="mb-3">

               <label for="content">내용</label>

               <textarea class="form-control" rows="5" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

            </div>

         <div >

			<input type="submit"  class="btn btn-sm btn-primary" id="btnSave" value="작성 완료">
            <button type="button" class="btn btn-sm btn-primary" id="btnList" onclick="location.href='board_list.board'">목록</button>

         </div>

         </form>


      </div>

   </article>

</body>

</html>
