<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
UserDetails user1 = (UserDetails) session.getAttribute("userD");
if (user1 == null) {
	response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires", "0");
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login..");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>



</head>

<body>

		<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="container4 mt-4 " >
		<h1 class="text-center">Add Your Notes</h1>
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

							<%
							UserDetails us = (UserDetails) session.getAttribute("userD");
							if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="id">
							<%
							}
							%>


							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="9" cols="" class="form-control" name="content"
								required="required"></textarea>


						</div>

						<div class="container text-center">
							<button type="submit" class="btn btn-primary transparent-btn">Add Note</button>
						</div>
					</form>



				</div>

			</div>



		</div>

	</div>
	<footer>
	<%@include file="all_component/footer.jsp" %>
	</footer>
	
</body>
</html>