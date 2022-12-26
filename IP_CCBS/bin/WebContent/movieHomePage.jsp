<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
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
<script src="https://kit.fontawesome.com/6f995c3af2.js"
	crossorigin="anonymous"></script>
<title>Movie Home Page</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
}

img {
	object-fit: cover;
	height: 70vh;
}

p, span, small, h1, h2, h3, h4, h5 {
	color: white;
}

body {
	overflow-x: hidden;
}

.movie-badge {
	background: #fff;
	border-radius: 60px;
	padding: 0 15px 3px;
}

.movie-badge small {
	color: #000;
}

.watch-movie-button {
	background: yellow;
	border-radius: 10px;
	display: table;
	padding: 11px 33px;
}

.watch-movie-type-button {
	background: white;
	border-radius: 10px;
	display: table;
	padding: 11px 25px;
}

.watch-movie-type-button span, .watch-movie-button span {
	font-size: 15px;
	color: black;
	display: table-cell;
	vertical-align: middle;
	font-weight: 900;
}

select, input[type=date] {
	border: 0;
	font-weight: bold;
	background: lightgray;
	border-radius: 3px;
	display: block;
	padding: 2px 5px;
}

select:focus-visible {
	border: 0;
	outline: 0;
}

label {
	font-weight: bold;
}

.card-title * {
	color: black !important;
}

.card-body {
	position: relative;
	overflow: hidden;
}

.card-body::after {
	content: "";
	position: absolute;
	height: 100%;
	width: 15px;
	left: 100%;
	top: 0%;
	background: #3b3b3b;
}

.dividor-style {
	position: relative;
}

.dividor-style::after {
	content: "";
	position: absolute;
	width: auto;
	height: 7px;
	background: red;
	position: absolute;
	width: auto;
	height: 10px;
	background: red;
	border-radius: 10px;
	top: 50%;
	transform: translate(0, -50%);
	left: 120%;
}

.movie-timeslots {
	display: grid;
	grid-template-columns: repeat(7, 1fr);
	grid-gap: 10px;
}
</style>
</head>

<body>
	<div
		style="position: fixed; width: 33%; margin: auto; background: black; height: 100vh;">
		<div class="px-5">
			<h5 class="font-weight-bold pt-5">Black Panther: Wakanda Forever</h5>
			<p>
				<small>2022 [] PG-13 [] 161 mins</small>
			</p>
			<p>
				<%
					String labels[] = new String[] { "Action", "Adventure", "Drama" };
					for (String label : labels) {
				%>
				<span class="movie-badge"><small><%=label%></small></span>
				<%
					}
				%>
			</p>
			<img height="100%" width="420px"
				src="https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg">

			<button class="btn watch-movie-button mt-3">
				<span><i class="fas fa-ticket-alt" aria-hidden="true"></i>
					Watch Now</span>
			</button>
		</div>
	</div>
	<div>
		<div class="row">
			<div class="col-4"></div>

			<!-- selection -->
			<div class="col-8">
				<div class="d-flex flex-wrap mt-5 px-5" style="gap: 12px;">
					<div>
						<label>Cinema</label> <select name="cinema">
							<option selected>Choose Cinema</option>
							<option value="GSC">GSC</option>
							<option value="TGV">TGV</option>
							<option value="MBO">MBO</option>
							<option value="abc">abc</option>
							<option value="abc">abc</option>
						</select>
					</div>
					<div>
						<label>State</label> <select name="state">
							<option value="Johor">Johor</option>
							<option value="Melaka">Melaka</option>
							<option value="Pahang">Pahang</option>
							<option value="Sarawak">Sarawak</option>
							<option value="Sabah">Sabah</option>
							<option value="Perak">Perak</option>
							<option value="Negeri Sembilan">Negeri Sembilan</option>
							<option value="Perlis">Perlis</option>
							<option value="Kedah">Kedah</option>
							<option value="Kelantan">Kelantan</option>
							<option value="Kuala Lumpur">Kuala Lumpur</option>
							<option value="Terengganu">Terengganu</option>
							<option value="Labuan">Labuan</option>
						</select>
					</div>
					<div>
						<label>Location</label> <select name="location">
							<option value="Kluang">Kluang</option>
							<option value="Skudai">Skudai</option>
							<option value="Johor Bahru">Johor Bahru</option>
							<option value="Tangkak">Tangkak</option>
							<option value="Batu Pahat">Batu Pahat</option>
							<option value="Kota Tinggi">Kota Tinggi</option>
							<option value="Mersing">Mersing</option>
							<option value="Muar">Muar</option>
							<option value="Pontian">Pontian</option>
							<option value="Segamat">Segamat</option>
						</select>
					</div>
					<div>
						<label>Date</label> <input type="date" />
					</div>
				</div>

				<!-- movies in each mall -->

				<%
					for (int j = 0; j < 7; j++) {
				%>
				<div class="row mt-4 mx-5">
					<div class="card" style="background: grey; margin: auto">
						<div class="card-body">
							<div class="card-title" style="color: black;">
								<div class="d-flex">
									<div class="col-9 ml-3 pl-4 py-2"
										style="background: white; border-radius: 2px;">
										<b>GSC Setia City Mall</b><br> <small>Level 2 -
											Setia City Mall, No. 7, Persiaran Setia Dagang - Bandar Setia
											Alam - Seksyen u13, Shah Alam SL, 40170</small>
									</div>
									<div class="col-3">
										<button type="button"
											class="btn btn-light watch-movie-type-button">
											<span style="font-size: 25px;">Premium</span>
										</button>
									</div>
								</div>
								<div class="pl-3 pt-3">
									<span class="dividor-style"><b>Showtimes: </b></span>

								</div>
							</div>
							<div class="card-text">

								<div class="movie-timeslots px-3 pt-2 pb-3">
									<%
										String showtimes[] = new String[] { "10.20am", "10.30am", "10.45am", "10.55am", "11.20am", "11.40am",
													"1.25pm", "1.35pm", "1.45pm", "2.00pm", "2.10pm", "2.35pm", "2.55pm", "4.25pm", "4.40pm",
													"4.50pm", "5.00pm", "5.15pm", "5.25pm", "8.05pm", "8.15pm" };
											String colorClass[] = new String[] { "success", "warning", "danger" };
											for (int i = 0; i < showtimes.length; i++) {
												int randNum = (int) (Math.random() * (colorClass.length - 0));
												out.println("<button type='button' class='btn btn-" + colorClass[randNum] + " font-weight-bold'>"
														+ showtimes[i] + "</button>");
											}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>

				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>