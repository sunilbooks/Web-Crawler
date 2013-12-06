<%@page import="com.sunrays.javarefbook.model.CrawlerModel"%>
<%@page import="com.sunrays.javarefbook.model.URLModel"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		<div class="hero-unit text-center">
			<h1>Web Crawler</h1>
			<br>
			<div class="input-append">
				<form action="CrawlerCtl" method="post">
					<input class="span6" size="50" type="text" name="keyword"
						placeholder="Enter Value.."> <input type="submit"
						class="btn btn-primary" value="Search" name="operation">
				</form>
			</div>
		</div>
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
		<br>
		<%
			List list = (List) request.getAttribute("crawledData");

			if (list != null) {
				Iterator iterator = list.iterator();
				while (iterator.hasNext()) {
					URLModel model = (URLModel) iterator.next();
					CrawlerModel crawlerModel = model.getCrawlerModel();
		%>

		<div>
			<h4>
				<%=crawlerModel.getTitle()%>
			</h4>
			<strong><a
				href="CrawlerCtl?operation=UpdatePageRank&id=<%=model.getId()%>"
				target="_blank"><%=model.getUrl()%></a> </strong>
			<p>
				<%=crawlerModel.getDescription()%>
			</p>
		</div>
		<br>
		<%
			}
			}
		%>

	</div>
</body>
</html>