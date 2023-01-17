<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>
<
style>body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Roboto', sans-serif;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	min-width: 1000px;
	background: #fff;
	padding: 20px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 10px;
	margin: 0 0 10px;
}

.table-title h2 {
	margin: 8px 0 0;
	font-size: 22px;
}

.search-box {
	position: relative;
	float: right;
}

.search-box input {
	height: 34px;
	border-radius: 20px;
	padding-left: 35px;
	border-color: #ddd;
	box-shadow: none;
}

.search-box input:focus {
	border-color: #3FBAE4;
}

.search-box i {
	color: #a0a5b1;
	position: absolute;
	font-size: 19px;
	top: 8px;
	left: 10px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child {
	width: 130px;
}

table.table td a {
	color: #a0a5b1;
	display: inline-block;
	margin: 0 5px;
}

table.table td a.view {
	color: #03A9F4;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #E34724;
}

table.table td i {
	font-size: 19px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 95%;
	width: 30px;
	height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 30px !important;
	text-align: center;
	padding: 0;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 6px;
	font-size: 95%;
}
</style>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>



<title>Insert title here</title>
</head>
<body style="background-color:#483D8B ;">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a style="color: red" class="navbar-brand" href="#">Nexin</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="adminhome.jsp">Home</a></li>
				<!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
    -->
				<li><a href="adminbrand.jsp">Brand</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Category<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="admincategory.jsp">Manage Category</a></li>
								<li><a href="">Manage Sub Category</a></li>
							</ul></li>

				<li><a href="#">Product</a></li>
				<li><a href="#">Inventory</a></li>
				<li><a href="#">Orders</a></li>
				<li><a href="#">Payments</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- <li class="active"><a href="#">Home</a></li> -->

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Setting <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Profile</a></li>
						<li><a href="logout.jsp">Log Out</a></li>

					</ul></li>
			</ul>
		</div>
	</nav>
	
	<!-- add new category -->
	 <form style="text-align: center;"  action="#" class="add">
          
            <div class="field">
           
              <input type="text" placeholder="Add New Category" name="addcategory" id="addcategory">
        
          
            
            
            </div>
           
            <div class="field btn">
              <div class="btn-layer"></div>
              <input   type="submit" class="btn btn-success"  value="ADD">
              
            
              
              
            </div>
          </form>
            <hr>

	<!-- CATEGORY TABLE -->
	<div class="container">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-8">
							<h2>
								Manage <b>Category</b>
							</h2>
						</div>
						<div class="col-sm-4">
							<div class="search-box">
								<i class="material-icons">&#xE8B6;</i> <input type="text"
									class="form-control" placeholder="Search&hellip;">
							</div>
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>CATEGORY NAME <i class="fa fa-sort"></i></th>

							<th>EDIT <i class="fa fa-sort"></i></th>
							<th>DELETE</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Thomas Hardy</td>

							<td><a href="#" class="edit" title="Edit"
								data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a></td>
							<td>
								<!-- <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>  -->


								<a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
									class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>Maria Anders</td>

							<td><a href="#" class="edit" title="Edit"
								data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a></td>
							<td><a href="#" class="delete" title="Delete"
								data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>Fran Wilson</td>

							<td><a href="#" class="edit" title="Edit"
								data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a></td>
							<td><a href="#" class="delete" title="Delete"
								data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
						<tr>
							<td>4</td>
							<td>Dominique Perrier</td>

							<td><a href="#" class="edit" title="Edit"
								data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a></td>
							<td><a href="#" class="delete" title="Delete"
								data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
						<tr>
							<td>5</td>
							<td>Martin Blank</td>

							<td><a href="#" class="edit" title="Edit"
								data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a></td>
							<td><a href="#" class="delete" title="Delete"
								data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="clearfix">
					<div class="hint-text">
						Showing <b>5</b> out of <b>25</b> entries
					</div>
					<ul class="pagination">
						<li class="page-item disabled"><a href="#"><i
								class="fa fa-angle-double-left"></i></a></li>
						<li class="page-item"><a href="#" class="page-link">1</a></li>
						<li class="page-item"><a href="#" class="page-link">2</a></li>
						<li class="page-item active"><a href="#" class="page-link">3</a></li>
						<li class="page-item"><a href="#" class="page-link">4</a></li>
						<li class="page-item"><a href="#" class="page-link">5</a></li>
						<li class="page-item"><a href="#" class="page-link"><i
								class="fa fa-angle-double-right"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>




</body>
</html>