<!DOCTYPE html>
<%@page import="com.sunrays.javarefbook.model.UserModel"%>
<html>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<%
		UserModel userModel = (UserModel) session.getAttribute("user");
	%>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a><a class="brand disabled"><img src="img/sunilsahusmallicon.jpg"
					height="25" width="25" alt="Sunil Sahu" class="img-rounded">&nbsp;&nbsp;Sunil
					Sahu</a>

				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="active"><a href="CrawlerCtl"><i
								class="icon-home icon-white"></i> HOME</a></li>
						<%
							if (userModel != null) {
						%>
						<li><a href="AddURLCtl.do">ADD URL</a></li>
						<%
							}
						%>
						<li><a href="BaseLayout.jsp?body=AboutUs.jsp">ABOUT US</a></li>
						<li><a href="BaseLayout.jsp?body=ContactUs.jsp">CONTACT
								US</a></li>
					</ul>
					<ul class="nav navbar-nav pull-right">
						<%
							if (userModel == null) {
						%>
						<li><a href="#myModal1" data-toggle="modal">SIGN IN</a></li>
						<%
							} else {
						%>
						<li><a href="LogoutCtl">LOGOUT</a></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<!--<img src="img/customLogo.png" class="img-rounded">
    <br><br>
   -->
		<%
			String body = request.getParameter("body");

			if (body == null) {
				body = "/Welcome.jsp";
			}
		%>
		<jsp:include page="<%=body%>"></jsp:include>
		<hr>
		<div class="footer">
			<div class="row">
				&copy; Sunil Sahu
				<div class="pull-right">

					<a href="http://www.sunrays.co.in" target="_blank"
						style="text-decoration: none; cursor: pointer;"><img
						src="img/customLogo.png" class="img-rounded"></a>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal1 -->

	<div id="myModal1" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Sign In</h3>
		</div>

		<div class="modal-body">

			<form action="LoginCtl" method="POST">
				<table>
					<tbody>
						<tr>
							<td></td>
							<td>
								<%
									String error = (String) request.getAttribute("error");
									if (error != null) {
								%> <span class="label label-danger"><%=error%></span> <%
 	}
 %><br>
							</td>
						</tr>
						<tr>
							<td class="span2">Username</td>
							<td><input type="text" name="username" class="span4"
								placeholder="Enter Username" required></td>
						</tr>
						<tr>
							<td class="span2">Password</td>
							<td><input type="password" name="password" class="span4"
								placeholder="Enter Password" required></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" class="btn btn-primary"
								value="Sign In" name="operation"> <a href="./UserRegCtl"
								class="btn btn-primary" data-toggle="modal">Sign Up</a></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>

		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
	</div>


</body>
</html>