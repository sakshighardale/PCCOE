<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>
						<h2>Registration</h2>
					<%
					String registration_success = (String) session.getAttribute("reg-success");
					if (registration_success != null) {
					%>

					<div class="alert alert-success" role="alert"><%=registration_success%>Login<a href=login.jsp>Click here!!</a></div>

					<%
					session.removeAttribute("reg-success");
					}
					%>
					<%
					String registration_failed = (String) session.getAttribute("failed-msg");
					if (registration_failed != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=registration_failed %></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>
						<form action="Register" method="post">
							<label>Enter Full Name</label> <input type="text"
									class="form-control" id="name1" aria-describedby="emailHelp"
									name="user_name"><br>
								<label>Enter Email</label> <input type="email"
									class="form-control" id="email1" name="user_email"><br>
								<label>Enter Password</label> <input type="password"
									class="form-control" id="pass1" name="user_password"><br>
							<button type="submit" class="btn btn-primary badge-pil btn-block">Register</button>
						</form>
					<br><hr><br>
<p class="text-center text-white">Note: If any issue then contact to ghardalesakshi@gmail.com, Designed by Sakshi Ghardale</p>
<p class="text-center text-white">All rights reserved @SakshiGhardale-2023-24</p>
</body>
</html>