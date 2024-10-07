<%@page import="com.dao.ContactDAO"%>
<%@page import="com.conn.DbConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contact Page</title>
<%@include file="Component/allCss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	background-color: #f7f7f7;
}
</style>
</head>
<body>
	<%@include file="Component/navbar.jsp"%>

	<%
	if (user == null) {
		session.setAttribute("invalidMsg", "Please Login...");
		response.sendRedirect("login.jsp");
	}
	%>

	<%
	String succMsg = (String) session.getAttribute("succMsg");
	String failedMsg = (String) session.getAttribute("failedMsg");
	if (succMsg != null) {
	%>
	<div class="alert alert-success" role="alert"><%=succMsg%></div>

	<%
	session.removeAttribute("succMsg");
	}
	if (failedMsg != null) {
	%>
	<p class="text-danger text-center"><%=failedMsg%></p>
	<%
	session.removeAttribute("failedMsg");
	}
	%>

	<div class="container">
		<div class="row p-4">
			<%
			if (user != null) {
				ContactDAO dao = new ContactDAO(DbConnect.getConn());
				List<Contact> contact = dao.getAllContact(user.getId());

				for (Contact c : contact) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body">
						<h5>
							Name :
							<%=c.getName()%></h5>
						<p>
							Ph no :
							<%=c.getPhno()%></p>
						<p>
							Email :
							<%=c.getEmail()%></p>
						<p>
							About :
							<%=c.getAbout()%></p>
						<div class="text-center">
							<a href="edit.jsp?cid=<%=c.getId()%>"
								class="btn btn-success btn-sm">Edit</a> 
								<a href="delete?cid=<%=c.getId()%>" class="btn btn-danger btn-sm">Delete</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			}
			%>
		</div>
	</div>
</body>
</html>