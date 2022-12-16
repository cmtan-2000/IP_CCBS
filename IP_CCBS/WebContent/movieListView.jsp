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
</style>
</head>

<body>
	<div>
		<button class="btn btn-light ml-auto my-4 d-block mr-3 shadow">Add Movie History</button>
		<div class="container h-100 m-auto">
			<div class="movie-grid-view">
				<div>
					<img height="100%" width="100%"
						src="https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg">
				</div>
				<div>
					<img height="100%" width="100%"
						src="https://m.media-amazon.com/images/M/MV5BMmJhZTlhNzUtNzAwZC00YjQ2LTkxOGEtNzBmOWVkMmUxNTBiXkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_FMjpg_UY720_.jpg">
				</div>
				<div>
					<img height="100%" width="100%"
						src="https://i0.wp.com/anitrendz.net/news/wp-content/uploads/2022/01/jujutsukaisen0_bighitposter-1-scaled-e1641271605436.jpg?resize=1024%2C579&ssl=1">
				</div>
				<div>
					<img height="100%" width="100%"
						src="https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_FMjpg_UX900_.jpg">
				</div>
			</div>
		</div>
</body>
</html>