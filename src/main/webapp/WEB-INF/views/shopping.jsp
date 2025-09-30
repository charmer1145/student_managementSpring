<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery - AJAX in Spring MVC - JSP</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Poppins:wght@400;500;600&display=swap"
	rel="stylesheet">

<style>
/* ========================================= */
/* Global Styles */
/* ========================================= */
:root {
	--primary-color: #4CAF50; /* A vibrant, fresh green */
	--primary-light: #81C784; /* Lighter shade for accents */
	--primary-dark: #388E3C; /* Darker shade for contrast */
	--background-light: #F9FBE7; /* A very light, creamy green for the body */
	--background-neutral: #E8F5E9; /* Off-white green for table stripes */
	--text-dark: #212121; /* Dark grey for body text */
	--text-light: #FAFAFA; /* Very light grey for text on dark backgrounds */
	--box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
	--border-color: #E0E0E0; /* Light grey for borders */
}

body {
	font-family: 'Poppins', sans-serif;
	background-color: var(--background-light);
	color: var(--text-dark);
	margin: 0;
	padding: 20px;
	line-height: 1.6;
}

h1 {
	font-family: 'Montserrat', sans-serif;
	font-size: 2.5rem;
	color: var(--primary-dark);
	text-align: center;
	margin: 20px auto 40px;
	padding: 15px;
	border-radius: 10px;
	box-shadow: var(--box-shadow);
	max-width: 90%;
	position: relative;
	background: var(--background-neutral);
	letter-spacing: normal; /* Override existing style */
}

h1::after {
	content: '';
	display: block;
	width: 80px;
	height: 4px;
	background-color: var(--primary-light);
	margin: 10px auto 0;
	border-radius: 2px;
}

/* ========================================= */
/* Table Styles */
/* ========================================= */
table {
	width: 100%;
	max-width: 1200px;
	border-collapse: separate;
	border-spacing: 0;
	margin: 40px auto;
	box-shadow: var(--box-shadow);
	border-radius: 10px;
	overflow: hidden;
}

thead {
	background-color: var(--primary-color);
	color: var(--text-light);
	font-weight: 600;
}

th, td {
	padding: 15px 20px;
	text-align: left;
	border-bottom: 1px solid var(--border-color);
}

tbody tr:nth-child(even) {
	background-color: var(--background-neutral);
}

tbody tr:last-child td {
	border-bottom: none;
}

tbody tr:hover {
	background-color: var(--primary-light);
	color: var(--text-dark);
	transform: scale(1.01);
	transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
}

td img {
	height: 80px; /* Adjust size for better display */
	width: 80px;
	object-fit: contain; /* Prevents image stretching */
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease;
}

td img:hover {
	transform: scale(1.1); /* Zoom effect on hover */
}

/* ========================================= */
/* Link & Button Styles */
/* ========================================= */
a.link-button {
	display: inline-block;
	text-decoration: none;
	font-family: 'Poppins', sans-serif;
	font-size: 1rem;
	font-weight: 500;
	padding: 12px 24px;
	border-radius: 50px;
	transition: all 0.3s ease;
	text-align: center;
	margin: 10px 0;
	color: var(--text-light);
	background-color: var(--primary-color);
	border: 2px solid var(--primary-color);
}

a.link-button:hover {
	background-color: var(--primary-dark);
	border-color: var(--primary-dark);
}

button.buy-button {
	color: var(--text-light);
	background-color: var(--primary-color);
	border: none;
	padding: 8px 16px;
	border-radius: 5px;
	font-weight: 600;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button.buy-button:hover {
	background-color: var(--primary-dark);
}

/* ========================================= */
/* Utility & Layout */
/* ========================================= */
.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

.center-text {
	text-align: center;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	$(document).ready(
			function() {
				//fetch json data from open api
				$.getJSON("https://fakestoreapi.com/products", function(
						productResult) {
					var productData = '';
					//iterate in json array of Objects
					$.each(productResult, function(key, value) {
						productData += '<tr>';
						productData += '<td>' + value.id + '</td>';
						productData += '<td>' + value.title + '</td>';
						productData += '<td>$' + value.price + '</td>';
						productData += '<td>' + value.description + '</td>';
						productData += '<td>' + value.category + '</td>';
						productData += '<td><img src="' + value.image + '"/></td>';
						productData += '<td><button class="buy-button">Buy</button></td>';
						productData += '</tr>';

					});
					//inserting rows into table
					$('#table').append(productData);
				})
			});
</script>
</head>
<body>
	<div class="container">
		<h1>G.L. Bajaj Institute of Technology and Management : e-SHOPPING</h1>

		<table id='table'>
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Title</th>
					<th>Price</th>
					<th>Description</th>
					<th>Category</th>
					<th>Image</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<!-- Rows will be inserted here by jQuery -->
			</tbody>
		</table>

		<div class="center-text">
			<a href="https://fakestoreapi.com/products" class="link-button">Data
				Sourced from FakeStoreApi</a>
		</div>
	</div>
</body>
</html>
