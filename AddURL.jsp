<div class="container">
	<div class="row">
		<div class="span6 offset3">

			<form class="form-horizontal" role="form" action="AddURLCtl.do"
				method="post">
				<fieldset>
					<legend>
						<p class="text-center">Add-URL Page</p>
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
					<span class="label label-danger"><%=error%></span>
					<%
						}
					%>
					<br> <br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">URL:</label>
						<div class="col-sm-10 offset2">
							<input type="url" name="url" placeholder="Enter URL"
								required="required">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">Title:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="title" placeholder="Enter Title"
								required>
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">Keyword:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="keyword" class="form-control"
								placeholder="Enter Keyword" required="required">
						</div>
					</div>
					<br>
					<div class="form-group">
						<label class="col-sm-2 control-label offset0">Description:</label>
						<div class="col-sm-10 offset2">
							<input type="text" name="description" class="form-control"
								placeholder="Enter Description" required>
						</div>
					</div>
					<br>
					<div class="span3 offset2">
						<input type="submit" name="operation" class="btn btn-success"
							value="Add URL">
					</div>
			</form>

			</fieldset>
		</div>
	</div>
</div>