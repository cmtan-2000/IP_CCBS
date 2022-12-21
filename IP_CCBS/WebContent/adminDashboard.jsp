<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Dashboard</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
	
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
	;
	
*{
	font-family: 'Poppins', sans-serif;
}
/* 
body {
	background-color: none;
	width: 80%;
	margin: 0 auto;
}

h1 {
	color: navy;
	margin-left: 20px;
}

.container {
	position: absolute;
	width: 80%;
	height: 100%;
	background-color: none;
}

button {
	background-color: white;
	border: 0.2px;
	color: black;
	padding: 15px 32px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	border-radius: 5px;
	box-shadow: 0 5px 2px 0 rgba(0, 0, 0, 0.2), 0 6px 2px 0
		rgba(0, 0, 0, 0.19);
	font-weight: bolder;
}

.bottomContainer .TabSelect .tab {
	background-color: grey;
	box-shadow: none;
	font-size: 20px;
}

.bottomContainer .TabSelect .active {
	background-color: #BBCFD0;
}

.bottomContainer .cinema {
	width: 95%;
	margin: 0 auto 20px auto;
}

.bottomContainer .cinema h2 {
	margin: 0px 0px 10px 16px;
	font-size: 40px;
}

.bottomContainer .cinema hr {
	height: 2px;
	border-width: 0;
	color: gray;
	background-color: gray
}

.bottomContainer .cinema .row {
	display: flex;
	flex-direction: row;
	/* background-color: grey; */
	width: 100%
}

.bottomContainer .branch {
	width: 330px;
	background-color: green;
	margin: 0 25px 0 0;
	minheight: 200px;
	maxheight: 300px;
}

.bottomContainer .MovieContainer {
	width: 95%;
	height: 90%;
	margin: 20px auto 20px auto;
	display: flex;
	flex-wrap: wrap
}
 */
</style>
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