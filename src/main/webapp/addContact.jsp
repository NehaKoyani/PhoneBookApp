<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
<meta charset="ISO-8859-1">
<title>Add Contact Page</title>
<%@include file="Component/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8">
	<%@include file="Component/navbar.jsp"%>

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Please Login...");
		response.sendRedirect("login.jsp");
	}
	%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Add Contact Page</h4>
						
							<%
						String sucssMsg=(String)session.getAttribute("sucssMsg");
						String failedMsg=(String)session.getAttribute("failedMsg");
						
						if(sucssMsg!=null){
						%>
							<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						session.removeAttribute("sucssMsg");
						}
						
						if(failedMsg!=null){
						%>
							<p class="text-danger text-center"><%=failedMsg%></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>
						
						<form action="addcontact" method="post">
							<%
							if (user != null) {
							%>
							<input type="hidden" value="<%=user.getId()%>" name="userid">
							<%
							}
							%>
							<div class="mb-3">
								<label>Enter Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="name">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label>Enter Email</label> <input type="email"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">
									Enter Phone No.</label> <input type="text" class="form-control"
									id="exampleInputPassword1" name="phno">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">
									About</label>
								<textarea rows="3" cols="" class="form-control"
									placeholder="EnterAbout" name="about" required="required"></textarea>
							</div>
							<div class="text-center">
								<button type="submit"
									class="btn btn-primary badge-pill btn-block">Save
									Contact</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 50px">
		<%@include file="Component/footer.jsp"%>

	</div>
</body>
</html>
</html>