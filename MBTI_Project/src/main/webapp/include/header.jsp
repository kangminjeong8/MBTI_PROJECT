
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>MBTI 16 Personalities</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.main">MBTI 16 personality</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        	<c:choose>
			                    <c:when test="${sessionScope.user_id == null }">
			                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/user_login.user">Login</a></li>
			                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/user_join.user">Join</a></li>
			                    </c:when>
			                    <c:otherwise>
			                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/user_logout.user">Logout</a></li>
			                    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/user_mypage.user">MyPage</a></li>
			                    </c:otherwise>
		                    </c:choose>
		                    
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/mbti_test/mbti_test.mbti">MBTI Test</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/mbti_info/mbti_info.mbti">MBTI Types</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/board_list.board">Board</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

            