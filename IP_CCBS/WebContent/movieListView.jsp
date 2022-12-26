<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/modal.css">
<script src="https://kit.fontawesome.com/6f995c3af2.js"
	crossorigin="anonymous"></script>
<title>Movie List</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
}

.movie-grid-view {
	display: grid;
	grid-template-columns: repeat(6, 1fr);
	grid-gap: 15px;
}

img {
	object-fit: cover;
}

tr td:first-child {
	width: 130px;
}
</style>
</head>

<body>
	<%
		String images[] = new String[]{
				"https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg",
				"https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2022/01/jujutsukaisen0_bighitposter-1-scaled-e1641271605436.jpg?resize=1024%2C579&ssl=1",
				"https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX900_.jpg",
				"https://m.media-amazon.com/images/M/MV5BMmJhZTlhNzUtNzAwZC00YjQ2LTkxOGEtNzBmOWVkMmUxNTBiXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_FMjpg_UY720_.jpg"};

		int selectedMovie = 0;
	%>
	<div class="modal-backdrop" id="backdrop" onclick="closeDialog()"></div>
	<div>
		<button class="btn btn-light ml-auto my-4 d-block mr-3 shadow">Add
			Movie History</button>
		<div class="container h-100 m-auto">
			<div class="movie-grid-view">
				<%
					for (int i = 0; i < images.length; i++) {
						out.println("<div onclick='dislayMovieDetails(" + i + ")'>" + "<img height='100%' width='100%' src="
								+ images[i] + "></div>");
					}
				%>
			</div>
		</div>

		<div class="dialog" id="movieDetails">
			<div class="container p-5" style="background: white;">
				<span class="float-right times-button" onclick="closeDialog()"><i
					class="fas fa-times"></i></span>
				<div class="row">
					<div class="col-4">
						<img height="100%" width="100%"
							src="https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX900_.jpg">
					</div>
					<div class="col-6">
						<h5><b>Black Panther: Wakanda Forever Duration: 161min</b></h5>
						<small>Duration: 161min</small>

						<div class="mt-4">
							<table>
								<tr>
									<td>Location:</td>
									<td>GSC Setia City Mall</td>
								</tr>
								<tr>
									<td>Date:</td>
									<td>28 December 2022</td>
								</tr>
								<tr>
									<td>Showtime:</td>
									<td>6:45pm</td>
								</tr>
								<tr>
									<td>Hall Played:</td>
									<td>H12</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			function dislayMovieDetails(i) {
				var dialog = document.getElementById("movieDetails");
				var backdrop = document.getElementById("backdrop");

				if (dialog.style.display == 'none'
						|| dialog.style.display == "") {
					dialog.style.display = "block";
					backdrop.style.display = "block";
				} else {
					dialog.style.display = "none";
					backdrop.style.display = "none";
				}

			}

			function closeDialog() {
				var dialog = document.getElementById("movieDetails");
				var backdrop = document.getElementById("backdrop");

				dialog.style.display = "none";
				backdrop.style.display = "none";
			}
		</script>
</body>
</html>