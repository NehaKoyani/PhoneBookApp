<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-phone"></i>PhoneBook</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp">Home</a></li>
					
				<li class="nav-item"><a class="nav-link active" href="addContact.jsp"><i
						class="fa-regular fa-square-plus"></i>Add Contact </a></li>
				<li class="nav-item"><a class="nav-link active"
					href="viewContact.jsp"><i class="fa-solid fa-eye"></i>View
						Contact</a></li>
			</ul>
			<%
			User user = (User) session.getAttribute("user");
			if (user == null) {
			%>
			<form class="d-flex">
				<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2"
					type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i>
					Login</a> 
					<ul></ul>
					<a href="Register.jsp"
					class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i
					class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
			</form>
			<%
			} else {
			%>
			<form class="d-flex">
				<button class="btn btn-light my-2 my-sm-0 mr-2">
					<i class="fa fa-user" aria-hidden="true"></i><%=user.getName()%></button>
					<ul></ul>
				<a  href="logout"class="btn btn-light my-2 my-sm-0 mr-2"><i
					class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
			</form>
			<%
			}
			%>
		</div>
	</div>

	
</nav>