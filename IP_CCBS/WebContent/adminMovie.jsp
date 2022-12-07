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
		<button style="position: absolute; right: 0; top: 20%; z-index: 1; padding: 25px 90px">Add
			Company</button>

		<div class="bottomContainer"
			style="border-radius: 10px; position: absolute; background-color: #BBCFD0; bottom: 0; right: 50%; width: 97%; height: 65%; padding: 20px; transform: translate(50%, 0px);">
			<div class="TabSelect"
				style="position: absolute; top: -5%; width: 25%; display: flex; justify-content: space-evenly;">
				<a href="adminDashboard.jsp"><button class="tab">Company</button></a>
				<a href="adminMovie.jsp"><button class="tab active">Movie</button></a>
			</div>
			<div class="row"
				style="display: flex; flex-direction: row; justify-content: flex-end;">
				<button>Add Movie</button>
			</div>
			<div class="MovieContainer">
			<%! int noMovie = 6;%>
				<% for(int h=0; h<noMovie; h++) {%>
					<div style="width: 160px; height: 240px; background-color: orange; margin-right: 60px; margin-bottom: 30px; text-align: center; line-height: 50px">Movie <%=h+1%></div>
			<%} %>
			</div>
			
		</div>

	</div>
</body>
</html>