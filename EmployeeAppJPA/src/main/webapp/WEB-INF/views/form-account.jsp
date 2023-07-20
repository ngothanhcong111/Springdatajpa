<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/form-account.css" rel="stylesheet"> 
<title>Insert title here</title>
</head>
<body>
	<div class="containner">
		<div class="form-style">
				<label>First Name</label>
				<input type="text" name="firstName" value="${user.firstName}">
				
				<label>Last Name</label>
				<input type="text" name="lastName" value="${user.lastName}">
				
				
				<div class="form-style">
				<label>Email</label>
				<input type="email"  name="email" value="${user.email}">
				</div>
				
				
				<label>Phone</label>
				<input type="number" name="phone" value="${user.phone}">
				
				
				
				<label >Gender</label>
				<input type="radio" name="sex" value="${user.gender}">
				<input type="radio" name="sex" value="${user.gender}">
				
				
				
				<label>UserName</label> 
				<input type="text" name="username" value="${user.username}">
				
				
				
				<label>Password</label>
				<input type="text" name="password" value="${user.password}" >
				
				
				<label>BirthDay</label>
				<input type="text" name="brthDay" value="${user.birthDay}">
				
				
				
				
				<div>
				<c:url var="saveLink" value="/acount/edit/save">
						<c:param name="username" value="${user.username}"> </c:param>
				</c:url>
			
					<a href="${contextPath}/thebrand" rel="stylesheet">Cancel</a> | <a href="${saveLink}" rel="stylesheet">Save</a>
				</div>
		</div>
		</div>
</body>
</html>