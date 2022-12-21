<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script>
        function change_tab(id) {
            console.log("run");
            document.getElementById("visible_contents").innerHTML = document.getElementById(id + "_desc").innerHTML;
            document.getElementById("movietab").className = "notselected";
            document.getElementById("snacktab").className = "notselected";
            document.getElementById("halltab").className = "notselected";

            document.getElementById(id).className = "selected";
        }
    </script>
	<title>Company Homepage</title>
	<link rel="stylesheet" href="css/eunicestyle.css">
</head>
<body>
	<div class="company__header">
        <img src="images/GSC-Cinema-Logo.png" style="width: 210px;"'>
        <button>Generate Sales Report</button>
    </div>

<<<<<<< HEAD
	<!-- <form name="loginForm" action="BasicController" method="get">
	Full Name Changes: <input type="text" name="fullname" placeholder="fullname"/><br>
	Email: <input type="text" name="email" placeholder="email"/><br>
	<input type="submit" value="submit">
	</form> --> 

	<a href="adminDashboard.jsp">
	   <button name="button" value="OK" type="button">Admin_Dashboard</button>
	</a>

=======
    <br> <br>
    <!-- for users to navigate and click the tabs -->
    <div class="company__alltab">
        <ul>
            <li class="selected" id="movietab" onclick="change_tab(this.id)">Movie</li>
            <li class="notselected" id="snacktab" onclick="change_tab(this.id)">Snack</li>
            <li class="notselected" id="halltab" onclick="change_tab(this.id)">Hall</li>
        </ul>
    </div>

    <div class="company__movietab hidden_contents" id="movietab_desc">
        <button class="movietab__btn">Add Movie' s History</button>
        <div class="movietab__posters">
            <img src="images/Mechamato-poster.jpg" class="movietab__poster">
            <img src="images/SAO-poster.jpeg" class="movietab__poster">
            <img src="images/Wakanda-poster.jpg" class="movietab__poster">
            <img src="images/black-adam-poster.jpg" class="movietab__poster">
        </div>
    </div>

    <div class="hidden_contents" id="snacktab_desc">
        <h2>Snack</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, quis quam voluptatibus natus soluta
            perspiciatis est magni aliquam, placeat quisquam recusandae velit. Facere, illum odit. Mollitia, qui minus!
            Itaque, iure.</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, quis quam voluptatibus natus soluta
            perspiciatis est magni aliquam, placeat quisquam recusandae velit. Facere, illum odit. Mollitia, qui minus!
            Itaque, iure.</p>
    </div>

    <div class="hidden_contents" id="halltab_desc">
        <h2>Hall</h2>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, quis quam voluptatibus natus soluta
            perspiciatis est magni aliquam, placeat quisquam recusandae velit. Facere, illum odit. Mollitia, qui minus!
            Itaque, iure.</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, quis quam voluptatibus natus soluta
            perspiciatis est magni aliquam, placeat quisquam recusandae velit. Facere, illum odit. Mollitia, qui minus!
            Itaque, iure.</p>
    </div>

    <div id="visible_contents">
        <button class="movietab__btn">Add Movie' s History</button>
        <div class="movietab__posters">
            <img src="images/Mechamato-poster.jpg" class="movietab__poster">
            <img src="images/SAO-poster.jpeg" class="movietab__poster">
            <img src="images/Wakanda-poster.jpg" class="movietab__poster">
            <img src="images/black-adam-poster.jpg" class="movietab__poster">
        </div>
    </div>
	
>>>>>>> refs/remotes/origin/eunice
</body>
</html>