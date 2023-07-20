<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/style-login.css" rel="stylesheet">
<link href="${contextPath}/resources/fonts/themify-icons/themify-icons.css" rel="stylesheet">
<link href="${contextPath}/resources/img/LoginBackgroundAnime/backgroundAnime.jpg" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div id="wapper">
        <form action="home" id="form-login" method="post">
            <h1 class="form-heading">Login</h1>
            <p style="color: red; text-align: center;	">${massage}</p>
            <div class="form-group">
                <i class="ti-user "></i>
                <input type="text" class="form-input" id="username" placeholder="Enter User Name"  name="username"required>
            </div>
            <div class="form-group">
                <i class="ti-key"></i>
                <input type="password" class="form-input" id="password" placeholder="Enter Password" name="password" required>
                <div id="eye">
                    <i class="ti-eye"></i>
                </div>
            </div>
            <br>
            <input type="submit" value="login" class="form-submit">
            
            	<a href="${contextPath}/register" class="form-register">Register</a>

        </form>
    </div>
    <script src="${contextPath}/resources/js/login.js"></script>
</body>
</html>