<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${contextPath}/resources/css/acount.css" rel="stylesheet">
<title>Information</title>
</head>
<body>
		
		<table class="form-acount">
			<thead>
				<tr style="background-color: yellow;color: black; height: 40px">
					<th> FirstName</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th> Gender</th>
					<th>User Name</th>
					<th>Password</th>
					<th>BirthDay</th>
					<th> </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="acount" items="${listUser}">
					<c:url var="updateLink" value="/acount/edit/{username}">
						<c:param name="username" value="${acount.username}"></c:param>
					</c:url>
						
					<c:url var="deleteLink" value="/delete/{username}">
						<c:param name="username" value="${acount.username}"></c:param>
					</c:url>
					<tr  style="background-color: black; color: white; height: 50px ; font-size: 20px" >
						<td >
							${acount.firstName}
						</td>
						<td>
							${acount.lastName}
						</td>
						<td>
							${acount.email}
						</td>
						<td>
							${acount.phone}
						</td>
						<td>
							${acount.gender}
						</td>
						<td>
							${acount.username}
						</td>
						
						<td>
							${acount.password}
						</td>
						<td>
							${acount.birthDay}
						</td>
						
						<td>
							<!--  <button class="btn-edit js-btn-edit ">Edit</button>-->
							<a style="color: white;" href="${updateLink}">Edit</a> 
						 | <a style="color: white;" href="${deleteLink}">Delete</a>
						</td>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>
		
		
	
</body>
</html>