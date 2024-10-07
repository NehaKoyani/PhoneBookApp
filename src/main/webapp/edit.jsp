<%@page import="com.dao.ContactDAO"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="com.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="Component/allCss.jsp"%>
</head>
<body>
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
						String failedMsg = (String) session.getAttribute("failedMsg");

						if (failedMsg != null) {
						%>
						<p class="text-danger text-center"><%=failedMsg%></p>
						<%
						session.removeAttribute("failedMsg");
						}
						%>

						<form action="update" method="post">
							<%
							int cid = Integer.parseInt(request.getParameter("cid"));
							ContactDAO dao = new ContactDAO(DbConnect.getConn());
							Contact c = dao.getcontactByID(cid);
							%>
							<input type ="hidden" value="<%=cid %>" name="cid">
							<div class="mb-3">
								<label>Enter Name</label> <input value="<%=c.getName()%>"
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="name">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label>Enter Email</label> <input value="<%=c.getEmail()%>"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">
								<div id="emailHelp" class="form-text"></div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">
									Enter Phone No.</label> <input value="<%=c.getPhno()%>" type="text"
									class="form-control" id="exampleInputPassword1" name="phno">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">
									About</label>
								<textarea rows="3" cols="" class="form-control"
									placeholder="EnterAbout" name="about"
									required="required"><%=c.getAbout()%></textarea>
							</div>
							<div class="text-center">
								<button type="submit"
									class="btn btn-primary badge-pill btn-block">Update
									Contact</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>