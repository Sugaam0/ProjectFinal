<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Login!</title>
<link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet">
<link rel="stylesheet" href="Css/style1.css">
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
	
<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid mt-4">
		<div class="row">
			<div class="col-md-3 offset-md-2"></div>
			<div class="card mt-4">
				<div class="card-header text-center text-white bg-custom">
					<i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
					<h4>Login page</h4>
				</div>


				<%
				String invalidMsg = (String) session.getAttribute("failed");

				if (invalidMsg != null) {
				%>
				<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
				<%
				session.removeAttribute("failed");
				}
				%>


				<%
				String withoutLogin = (String) session.getAttribute("Login-error");
				if (withoutLogin != null) {
				%>
				<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>
				<%
				}
				session.removeAttribute("Login-error");
				%>

				<div class="card-body" style="width:18rem;">
					<form method="post" action="login">

						<div class="form-group">
							<label>Enter Email</label> <input type="email"
								class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="uemail" required>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Enter Password</label> <input
								type="password" name="upass" class="form-control"
								id="exampleInputPassword1" required>
						</div>

						<button type="submit" class="btn btn-info badge-pill btn-block">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script>
    window.onbeforeunload = function() {
        // Send logout request when navigating away from the page
        fetch('logoutServlet', { method: 'GET', credentials: 'same-origin' });
    };
</script>



</body>
</html>