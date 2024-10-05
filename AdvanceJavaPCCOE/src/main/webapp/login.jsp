<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
						<h1>Login</h1>
					<%
					String login_invalid = (String) session.getAttribute("login-failed");
					if (login_invalid != null) {
					%>
					<div role="alert"><%=login_invalid%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>
					<%
					String withoutLogin = (String) session.getAttribute("login-error");
					if (withoutLogin != null) {
					%>
					<div role="alert"><%=withoutLogin%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>					
					<%
					String logoutMsg=(String)session.getAttribute("logout-msg");
					if(logoutMsg!=null)
					{					
					%>
					<div class="alert alert-success" role="alter"><%=logoutMsg %></div>
					<%
					session.removeAttribute("logout-msg");
					}
				System.out.println("sakshi");
					%>
						<form action="login" method="post">

								<label>Enter Email</label> <input type="email"
									class="form-control" id="email1" name="user_email">
 									<br><br>
								<label>Enter Password</label> <input type="password"
									class="form-control" id="pass1" name="user_password">
									<br><br>
							<button type="submit">Login</button>
						</form>
						<br><hr><br>
<p class="text-center text-white">Note: If any issue then contact to ghardalesakshi@gmail.com, Designed by Sakshi Ghardale</p>
<p class="text-center text-white">All rights reserved @SakshiGhardale-2024</p>
</body>
</html>