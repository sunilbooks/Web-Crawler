<div class="container">
	<div class="row">
		<div class="span6 offset3">

			<form class="form-horizontal" role="form" action="UserRegCtl"
				method="post">
				<fieldset>
					<legend>
						<p class="text-center">User Registration Page</p>
					</legend>
					<%
						String message = (String) request.getAttribute("message");
						String error = (String) request.getAttribute("error");

						if (message != null) {
					%>
					<span class="label label-success"><%=message%></span>
					<%
						}
						if (error != null) {
					%>
					<span class="label label-danger" style="margin: 0px 0px 12px 0px"><%=error%></span>
					
					<%
						}
					%>
					<br>

					<div class="form-group">
						<label class="col-sm-2 control-label offset0">First Name:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="firstName" class="form-control"
								placeholder="First Name" required>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">Last Name:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="lastName" class="form-control"
								placeholder="Last Name" required>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">User Name:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="login" class="form-control"
								placeholder="User Name" required>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">Password:</label>
						<div class="col-sm-10 offset2">
							<input type="password" name="password" class="form-control"
								placeholder="Password" required>
						</div>
					</div>
					<br>
					<div class="span3 offset2">
						<input type="submit" class="btn btn-success" name="operation"
							value="Sign Up">
					</div>
			</form>

			</fieldset>
			<br> <br> <br> <br> <br> <br>
		</div>
	</div>
</div>