<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쿠팡 로그인</title>
    <!-- CSS -->
    <link rel="stylesheet" href="/resources/css/login_reset.css">
    <link rel="stylesheet" href="/resources/css/login_style.css">
    <!-- JS -->
    <script src="/resources/js/login_script.js"></script>
</head>
<body>
	<h1><a href="/"><img src="/resources/img/logo.png" alt="쿠팡"></a></h1>
    <main>
    	<form role="form" method="post" action="/customRegister" id="loginFrm">
            <fieldset>
                <legend class="skip">회원가입양식</legend>
                <ul>
                	<li>
                        <span class="id_bg"><!--배경이미지(메일 아이디)--></span>
                        <span><input class="form-control" placeholder="이름" name="userName" type="text" autofocus="autofocus"></span>
                    </li>
                    <li>
                        <span class="id_bg"><!--배경이미지(메일 아이디)--></span>
                        <span><input class="form-control" placeholder="아이디(이메일)" name="userId" type="text" autofocus="autofocus"></span>
                    </li>
                    <li class="error id_error">이름과 아이디(이메일)을 모두 입력해주세요</li>
                    <li>
                        <span class="pw_bg"><!--배경이미지(비밀번호)--></span>
                        <span><input class="form-control" placeholder="비밀번호" name="userPw" type="password" value="" id='pw'></span>
                        <span class="pw_show_hide" title="문자보이기"></span>
                    </li>
                    <li class="error pw_error">비밀번호를 입력해주세요</li>
                </ul>
                <a href="index.html" class="btn btn-lo btn-success btn-block"><button type="submit" id="login_btn">가입하기</button></a>
            </fieldset>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        </form>
    </main>
    <footer>
        &copy; Coupang Corp. All rights reserved.
    </footer>
    <!-- login -->

    <!-- jQuery-->
   <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor/metisMenu/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>
    <script>
    	$(".btn-success").on("click", 
    		function(e) {
    			e.preventDefault();
    			$("form").submit();
    	});
    </script>
	<c:if test="${param.logout != null }">
		<script>
			$(document).ready(function() {
				alert("로그아웃하였습니다");
			});
		</script>
	</c:if>
	
</body>
</html>
