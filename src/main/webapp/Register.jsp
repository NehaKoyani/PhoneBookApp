<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<%@include file="Component/allCss.jsp"%>
</head>
<body style="background-color: #f7faf8">
	<%@include file="Component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center text-success">Registration Page</h4>
						<%
						String sucssMsg=(String)session.getAttribute("sucssMsg");
						String errorMsg=(String)session.getAttribute("errorMsg");
						
						if(sucssMsg!=null){
						%>
							<p class="text-success text-center"><%=sucssMsg%></p>
						<%
						session.removeAttribute("sucssMsg");
						}
						
						if(errorMsg!=null){
						%>
							<p class="text-danger text-center"><%=errorMsg%></p>
						<%
						session.removeAttribute("errorMsg");
						}
						%>
						
						<form action="register" method="post">
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
									Enter Password</label> <input type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>
							<div class="text-center">
								<button type="submit"
									class="btn btn-primary badge-pill btn-block">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		</div>
	<div style="margin-top: 180px">
	<%@include file="Component/footer.jsp" %>
	
	</div>
</body>
</html>