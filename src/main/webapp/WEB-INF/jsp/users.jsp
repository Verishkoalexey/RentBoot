<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp"%>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Users</span>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Login</th>
						<th>Password</th>
						<th>FIO</th>
						<th>Phone</th>
						<th>Address</th>
						<th>Passport ID</th>
						<th>Identification Number</th>
						<th>Role</th>
						<sec:authorize access="hasRole('ADMIN')">
							<th width="100"></th>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
							<th width="100"></th>
						</sec:authorize>
						<sec:authorize access="hasRole('ADMIN')">
							<th width="100"></th>
						</sec:authorize>


					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.login}</td>
							<td>${user.password}</td>
							<td>${user.fio}</td>
							<td>${user.phone}</td>
							<td>${user.address}</td>
							<td>${user.passport_id}</td>
							<td>${user.identificationNumber}</td>
							<td>${user.userRole.role}</td>
							<sec:authorize access="hasRole('ADMIN')">
								<td><a href="<c:url value='/contract-${viewContract.id}' />"
									class="btn btn-office custom-width">time</a></td>
							</sec:authorize>
							<sec:authorize access="hasRole('ADMIN')">
								<td><a
									href="<c:url value='/edit-contract-${viewContract.id}' />"
									class="btn btn-success custom-width">edit</a></td>
							</sec:authorize>
							<sec:authorize access="hasRole('ADMIN')">
								<td><a
									href="<c:url value='/delete-contract-${viewContract.id}' />"
									class="btn btn-danger custom-width">delete</a></td>
							</sec:authorize>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<sec:authorize access="hasRole('ADMIN')">
			<div class="well">
				<a href="<c:url value='/newuser' />">Add New Rent Contract</a>
			</div>
		</sec:authorize>
	</div>
</body>
</html>