<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<h1><a href="#"><img src="/resources/img/logo.png" alt="쿠팡"></a></h1>
    <main>
    	<form role="form" method="post" action="/login" id="loginFrm">
            <fieldset>
                <a href="index.html" class="btn btn-lo btn-success btn-block"><button type="submit" id="login_btn">로그아웃</button></a>
            </fieldset>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        </form>
        <a href="/customRegister" class="join_link">회원가입</a>
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

</body>
</html>