<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div class="container">
		<button
			style="position: absolute; right: 0; top: 20%; z-index: 1; padding: 25px 90px">Add
			Company</button>

		<div class="bottomContainer"
			style="border-radius: 10px; position: absolute; background-color: #BBCFD0; bottom: 0; right: 50%; width: 97%; height: 65%; padding: 20px; transform: translate(50%, 0px);">
			<div class="TabSelect"
				style="position: absolute; top: -5%; width: 25%; display: flex; justify-content: space-evenly;">
				<a href="adminDashboard.jsp"><button class="tab active">Company</button></a>
				<a href="adminMovie.jsp"><button class="tab">Movie</button></a>
			</div>
			<div class="row"
				style="display: flex; flex-direction: row; justify-content: flex-end;">
				<button style="margin: 0px 10px">Add Branch</button>
				<button>Request List</button>
			</div>
			<%!int noCinema = 2;%>
			<%
				for (int h = 0; h < noCinema; h++) {
			%>
			<div class="cinema">
				<h2>
					Name_Cinema
					<%=h + 1%></h2>
				<hr>
				<div class="row">
					<%!int noBranch = 3;%>
					<%
						for (int i = 0; i < noBranch; i++) {
					%>
					<div class="branch">
						<font size="6"> Branch <%=i + 1%>
						</font>
						<div
							style="display: flex; flex-direction: row; justify-content: space-between; height: 160px">
							<div style="width: 60%; height: 100%; background-color: orange">Picture</div>
							<div
								style="width: 40%; height: 100%; background-color: white; display: flex; flex-wrap: wrap">
								<%!int noHall = 12;%>
								<%
									for (int j = 0; j < noHall; j++) {
								%>
								<div
									style="margin: 5px; width: 30px; height: 22px; text-align: center; background-color: green; color: white">
									H<%=j + 1%></div>
								<%
									}
								%>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>

			</div>
			<%
				}
			%>
		</div>

	</div>
</body>
</html>